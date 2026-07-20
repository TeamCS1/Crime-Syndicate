# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project overview

Crime Syndicate is a **GameMaker Studio 1.4** game project (not GameMaker Studio 2). The entire project lives under `Crime Syndicate.gmx/`, GMS 1.4's XML-based project format (`.project.gmx`, `.object.gmx`, `.room.gmx`, `.background.gmx`, `.font.gmx`, etc.), with gameplay logic written in `.gml` (GameMaker Language) files.

There is no separate build/lint/test CLI — this project is built and run through the GameMaker Studio 1.4 IDE (Windows-only) by opening `Crime Syndicate.gmx/Crime Syndicate.project.gmx`. There are no npm/make/CI scripts in this repo.

**When writing or editing any `.gml` code, use the `gamemaker-gml-1-4` skill.** GMS 1.4 lacks many constructs available in GameMaker Studio 2 / JS (no ternary operator, no structs, no `array_create`/`array_length`, 2D arrays are comma-indexed, `depth` is used instead of layers, and data structures must be manually destroyed) — code that looks idiomatic for GMS2 will not compile here.

## Repository layout

- `Crime Syndicate.gmx/Crime Syndicate.project.gmx` — the project manifest; lists every asset (objects, rooms, scripts, sprites, fonts, etc.) that GameMaker loads.
- `Crime Syndicate.gmx/objects/*.object.gmx` — object definitions (flat directory, ~280 objects). Each object XML embeds its event actions inline (via `<event eventtype=... enumb=...>` blocks referencing GML action code), rather than as separate per-event `.gml` files.
- `Crime Syndicate.gmx/scripts/*.gml` — standalone reusable GML scripts (global functions), e.g. `scr_Globals.gml`, `scr_SaveGameScript`/`scr_LoadGameScript`, `scr_DestinationsCreateTrips.gml`. Most game logic and cross-cutting behavior lives here rather than in object event code.
- `Crime Syndicate.gmx/rooms/*.room.gmx` — rooms (scenes/menus), e.g. per-city world maps (`rm_world_map_chicago`, `rm_world_map_las_vegas`, `rm_world_map_london`), black market menus, properties menus, prologue/tutorial rooms, city boss battle visualizers.
- `Crime Syndicate.gmx/sprites/`, `background/`, `fonts/` — art and UI assets, each with a matching `.gmx` metadata file.
- `Crime Syndicate.gmx/extensions/` — third-party GMS extensions (DesktopNotifications, HTML5 Loading Spinner, NSIS Plus, file_ensure_ext).
- `Crime Syndicate.gmx/datafiles/` — runtime data bundled with the game: `savedata.ini`, `profile0.ini`–`profile29.ini` (per-profile save slots), and a `logs/` directory.
- `Crime Syndicate.gmx/Configs/Default.config.gmx` — build configuration (target platform options, e.g. Android ad network settings).

## Architecture notes

- **Global state**: nearly all persistent/session game state is defined as `global.*` variables in `scripts/scr_Globals.gml` (money, HUD stats, per-city job/trip state, options, lifetime statistics, leveling, city boss fight state, etc.). When tracing how a feature works, start here to see what state it depends on.
- **Cities as a repeated pattern**: the game is structured around four cities — New York, Chicago, London, Las Vegas — each with parallel sets of objects, scripts, and globals (e.g. `obj_TRIGGER_CHICAGO_DO_JOB1`, `global.chicagoOnJob`, `global.chicagoCompletion`, `rm_world_map_chicago`). Changes to one city's job/trip/boss logic typically need to be mirrored across the other three unless the change is specifically city-scoped.
- **Jobs/Trips/Hitmen loop**: core gameplay revolves around jobs (`scr_JobPanelDoJob.gml`, `scr_JobsRankingDropTables.gml`), trips (`scr_DestinationsCreateTrips.gml`, `scr_CreateTripsPickers.gml`, `scr_SaveTripsLoadoutState.gml`/`scr_LoadTripsLoadoutState.gml`), and hitmen (`scr_HitmenNamesReturn.gml`, `scr_HitmenDescReturn.gml`, `scr_HitmenTitlesReturn.gml`).
- **Black market / inventory**: item inspectors and quantities are split by category via dedicated scripts (`scr_SharedInspector*Quantities.gml` for Armour, Automatics, Melee, Pistols/LMGs, Shotguns, Snipers, Throwables, Vehicles), all funneling into `scr_SharedInspectorBuyButton.gml`.
- **Save/load**: `scr_SaveGameScript.gml`, `scr_LoadGameScript.gml`, and `scr_SaveWeb.gml` handle persistence to the `datafiles/profile*.ini` slots; `scr_vigenere_ascii.gml` suggests save data is obfuscated/encrypted with a Vigenère-style cipher.
- **UI chrome**: phone/menu UI is opened/closed via `scr_OpenPhone.gml`/`scr_ClosePhone.gml`; notifications via `scr_CreateNotification.gml`; debug tooling via `scr_DebugConsole.gml` and `scr_DebugDate.gml`.
- **Progression/economy**: leveling (`scr_LevelUpAdditioner.gml`), properties income (`scr_PropertiesCollect.gml`, `scr_PropertiesRefreshListings.gml`), employees (`scr_EmployeesRefreshListings.gml`, `scr_GenerateEmployee.gml`), trophies (`scr_TrophyRefresh.gml`, `scr_FirstTimeSetupTrophies.gml`, `scr_WebCreateTrophiesProgress.gml`), and city bosses (`scr_CleanseCityBossesMenuButtons.gml`, `scr_cityBossesMenuCleanup.gml`) each have their own script cluster plus matching `global.*` state.

## Working with `.gmx`/`.gml` files

- All `.gmx` files are GameMaker-generated XML; each one starts with `<!--This Document is generated by GameMaker, if you edit it by hand then you do so at your own risk!-->`. Preserve existing structure/formatting when hand-editing, since GameMaker's own re-save format is what these diffs are compared against.
- Object event code is embedded inside `.object.gmx` action blocks rather than as freestanding files — to change an object's Create/Step/Draw/Collision behavior, edit the GML inside the relevant `<event>` block in that object's `.object.gmx` file.
- Reusable logic should go in `scripts/*.gml` and be called from object events, following the existing convention rather than duplicating logic inline across objects.

## Compatibility

- Use only GameMaker Studio 1.4-compatible GML.
- Do not use GameMaker Studio 2 or modern GameMaker syntax.
- Do not use structs, constructors, methods, function declarations, `array_push`, static variables, or modern accessor syntax.
- Preserve the existing project structure and naming conventions.
- Prefer `ds_list`, `ds_map`, and `ds_grid` for complex data structures.
- Use scripts in the traditional GameMaker Studio 1.4 style.
- Do not rename resources unless explicitly requested.
- Scripts don't have optional arguments: GMS1.4 fixes a script's required argument count at the highest `argumentN` referenced anywhere in its body, even inside a branch that wouldn't run at runtime (e.g. guarded by `argument_count`). Calling it with fewer arguments than that is a compile-time error, not a graceful default — this actually crashed the project at launch once (see Architecture, Collision). If a script needs to work both with and without extra parameters, write two separate scripts (e.g. `scr_FindSupportHeight()` / `scr_FindSupportHeightAt(x, y)`) rather than branching on `argument_count` inside one.

## Project changes

- Inspect related scripts and objects before making changes.
- Keep changes small and focused.
- Explain which files were modified.
- Avoid changing project metadata unnecessarily.
- When adding a resource, ensure it is properly registered in the main `.project.gmx` file.
- Do not delete existing resources without permission.

## Testing

GameMaker Studio 1.4 is used locally to compile and test the project. When compilation errors are provided, fix the underlying source files without introducing modern GML syntax.

## Known Bugs (Full Codebase Review)

Exhaustive review of all 278 objects (`objects/*.object.gmx`) and all 75 scripts (`scripts/*.gml`), conducted via 10 parallel deep-dive passes. **Totals: 12 Major, 49 Medium, 78 Minor open — 139 open, 8 fixed.** (Three additional findings — `obj_black_market_main_contracts_button.object.gmx` and `obj_black_market_main_statistics_button.object.gmx` missing click events, and `scr_CreateOptions.gml`'s unconditional debug-button creation — were reviewed and confirmed to be intentional/unimplemented functionality rather than bugs, and removed from this list.) When a bug below is fixed, move its entry to the Completed / Patch Notes section below with a short note on the fix, rather than deleting it.

### Major (12)

*Crashes, save corruption, economy exploits/dupes, permanently broken or unwinnable features.*

- **[objLWClose.object.gmx, Create event (eventtype=0, enumb=0)]** — The Create event's only code is `instance_destroy();`, so the loot window's "X" close button destroys itself the instant it is created, before its Step or Draw events ever run. `objLootWindow`'s Create event does `instance_create(0,0,objLWClose)` to spawn the close button, but that instance vanishes immediately and is never visible or clickable — the manual "close the loot window early" feature is 100% non-functional, every time a loot window opens.
- **[obj_TRIGGER_CHICAGO_DO_JOB1.object.gmx, Mouse Left Released event (eventtype=6, enumb=7), "list2" branch]** — The stamina gate checks `global.staminaCount >= 34` but then deducts `global.staminaCount -= 40`, a mismatch not present in any of the other 9 Chicago/NewYork/LasVegas/London job handlers (which all check and deduct the same number, e.g. Job2 checks/deducts 34, Job3 48, Job4 56, Job5 64). A Chicago player with exactly 34–39 stamina passes the `>= 34` check, runs the job, and `global.staminaCount` is driven negative (e.g. 34 − 40 = −6), corrupting the stamina resource.
- **[obj_black_market_main_exit_button.object.gmx, Left Released (6/7)]** — `if instance_exists(obj_properties_home_owner_edit) { instance_destroy(); }` destroys `self` (the Exit button) instead of the intended `obj_properties_home_owner_edit`, because no target/`with()` was used, unlike every other cleanup block in this codebase. If `obj_properties_home_owner_edit` exists when the player clicks "Exit to World Map," the Exit button destroys itself instead of the overlay it meant to close — losing the exit control for that room instance.
- **[obj_city_bosses_QTEs_three.object.gmx, obj_city_bosses_QTEs_five.object.gmx, obj_city_bosses_QTEs_seven.object.gmx, Step event (eventtype 3, enumb 0), "wrong key pressed at the wrong time" penalty check]** — `if keyboard_check(ord(QTE1)) && sectionOne == false && image_index = 1 || ...` requires `image_index` to already equal 1/2/3(/4/5) at the same moment `sectionX == false`. But `image_index` is only ever set to those values by the correct-hit code above, which itself requires `sectionX == true` — and section flags latch true and never reset. So the "pressed too early" branch can never fire in normal play. Concrete failure: holding down all four movement keys from the start of the QTE incurs zero penalty; once each section's window is swept through, `count += 5` fires every step the key is held, trivially reaching the Zone Score threshold (1000/2500/3500) and always landing the Signature Move/Final Blow attack — an entire boss-battle mini-game becomes unlosable/exploitable with no timing skill required.
- **[obj_global.object.gmx, Alarm[0] event, "City Boss Defeated Trophies" — New York branch]** — `if global.newYorkCityBossTierThreeIsDefeated == true && earnedNewYorkCityBossDefeatedT3 == false` is missing `global.` on the second operand (the Chicago/London/Las Vegas equivalents in the same block correctly use `global.earnedXCityBossDefeatedT3`). This references a never-initialized, never-set local variable that stays false forever, so once `global.newYorkCityBossTierThreeIsDefeated` is true, this block re-fires every `trophySetInterval` (default 5s) forever: `global.trophiesEarned` increments without bound, the save `.ini` is rewritten repeatedly, and a new trophy notification popup spawns over and over indefinitely.
- **[obj_inventory_weapon.object.gmx, Step event]** — `if selectedValue == 23` compares a string against the real number 23 once the player has clicked any weapon in the list (`selectedValue` becomes e.g. `"Pistol"` in the Draw event). GML 1.4 throws a type-mismatch runtime error comparing String to Real, crashing the game on the very next Step after any selection. (The `list[pos]` inside that block is also broken independently — `pos` is a `var` local to the Draw event's for-loop and doesn't exist in the Step event.)
- **[obj_upgradeStatsMenu_Trigger.object.gmx, Key Press (eventtype 10 enumb 69)]** — The room-cleanup `if/else if` chain has `|| room == rm_city_bosses_battle_visualiser` in **all four** branches (NY/Chicago/London/Las Vegas). Since it's an `else if` chain, only the first (New York) branch can ever fire when in that shared room, so opening the Upgrade Stats menu during a Chicago/London/Las Vegas boss fight destroys `obj_worldMapNewYorkControl` (no-op there) instead of the correct city's control object.
- **[obj_city_bosses_tier_one_button.object.gmx / tier_two_button.object.gmx / tier_three_button.object.gmx, Left-Click event, Chicago block, "Checks what City..." action]** — Code reads `if instance_exists(obj_worldMapChicagoControl)` but then does `with obj_worldMapNewYorkControl { instance_destroy(); }` — destroying the wrong city's controller object, repeated identically in all three tier-button files. Starting a Chicago boss battle never destroys `obj_worldMapChicagoControl`, so the player can still interact with the world map / switch cities mid-Chicago-boss-battle.
- **[scr_LoadGameScript.gml, ~lines 522-548]** — In the browser/mobile "paste your save" import branch, the decoder reads six fields for the theme-colour block (`rLevel, gLevel, bLevel, spriteTintingR, spriteTintingG, spriteTintingB`) but the matching encoder (`scr_SaveWeb.gml`, lines 28-31) only ever writes four. Consuming two indices that were never written shifts every subsequent field read by two positions, corrupting essentially the entire imported save whenever a player uses the save-import feature. (The same import branch also parses several numeric globals with `string(...)` instead of `real(...)`, leaving them as GML strings post-import.)
- **[scr_PropertiesCollect.gml, entire file]** — Only Normal, Million and Billion property-income tiers are collected into `moneyCount`/`moneyCountMillion`/`moneyCountBillion`; there's no block for `global.totalPropertiesIncomeTrillion` or `totalPropertiesIncomeQuadrillion`. Once income reaches the Trillion tier it accumulates forever but can never be collected — that money is permanently stuck/lost.
- **[scr_JobPanelJobLootChances.gml, ~lines 20-25]** — The "5%" mid-tier branch only calls `show_debug_message(...)`; unlike the 2.5% and 10% branches it never sets any `global.lootTable*` variable and never calls `instance_create(x,y,objLootTableJobsRankingGlobals)`. This script runs after every job completion in every city, so the entire "random weapon/armour/vehicle" loot tier is completely non-functional game-wide despite the debug message claiming success.
- **[scr_SharedInspectorBuyButton.gml, lines 6-536 — every purchase branch except lines 277-279]** — Every item purchase in the shared black-market "Buy" flow directly does `global.<item>Quantity++; global.moneyCount -= obj_sharedInspectorClass.price;` with **no funds check at all** and **without ever touching `global.moneyCountMillion`/`global.moneyCountBillion`**, unlike the careful borrow-logic implemented in `scr_deduct_money.gml`. `obj_global.object.gmx` clamps `global.moneyCount` back to `0` whenever it goes negative and never redistributes the deficit from Million/Billion. If a player's immediate `moneyCount` bucket is lower than an item's price but total wealth is sufficient, buying the item wipes `moneyCount` to 0 and the purchase completes for free — a free-item / infinite-money exploit reachable through ~90 of the ~93 black-market items.

### Medium (49)

*Visibly wrong behavior that doesn't crash: wrong city's data, incorrect calculations, broken secondary features.*

- **[obj_STATUS_BARS_HUD.object.gmx, Draw GUI event]** — HEALTH/STAMINA/XP-bar draw blocks guard with `if room_get_name(room) != "rm_options_main" || room_get_name(room) != "rm_progression"` — `||` instead of `&&`, so this is always true (tautology) and the bars draw in rooms they were meant to hide in, unlike CASH which correctly uses `&&`.
- **[obj_TEXTURE_NEW_YORK_PAGE1_2.object.gmx, Create event]** — Only the New York texture object's Create event mutates *other* cities' state (`global.chicagoOnJob = "list1"`, etc, flagged by the dev's own comment). Visiting New York's job panel silently resets Chicago/London/Las Vegas's job-tab selection.
- **[objGreed.object.gmx / objNeed.object.gmx, Mouse Left Pressed event]** — Entire body wrapped in an unterminated `/* ...` block comment, so clicking a greed/need icon executes no code; Draw events also offset roll-number text off-screen. The entire greed/need loot-distribution mini-game is non-functional.
- **[objLootWindow.object.gmx, Mouse Wheel Up/Down events]** — The line that actually moves the window is commented out; scrolling never moves the loot window despite the on-screen instruction.
- **[obj_JobListButtons1NewYork.object.gmx / obj_JobListButtons2NewYork.object.gmx, depth]** — `depth = -1` vs `-10` for the other three cities' identical UI.
- **[obj_TEXTURE_LAS_VEGAS_PAGE1_2.object.gmx, depth]** — `depth = -1` vs `0` for Chicago/London/New York equivalents.
- **[obj_black_market_shop_gui_dropdown_vehicles.object.gmx, Left Released]** — Never destroys `obj_black_market_shop_button_outfits` on selection (unlike `dropdown_weapons`'s handler); Armour → Vehicles leaves a stale Outfits button overlapping the view.
- **[obj_black_market_shop_button_shop.object.gmx, Left Released]** — Never destroys `obj_black_market_shop_button_outfits` when switching to Shop; leaves Outfits stuck on screen.
- **[obj_black_market_shop_button_shop.object.gmx, Left Released]** — Contains a self-documented empty stub (`//--- Needs inserting here!`) that never destroys the inventory inspector classes; an open inspector stays alive on top of the Shop view.
- **[obj_black_market_shop_button_materials.object.gmx, Left Released]** — Same pattern of empty cleanup stubs; Outfits (and possibly an inspector) stuck alongside new buttons.
- **[obj_black_market_shop_button_inventory.object.gmx, Left Released]** — Never destroys `obj_black_market_shop_button_outfits`; leaves it visible/clickable.
- **[obj_city_bosses_battle_screen.object.gmx, Step event, "Trophies | City Bosses"]** — `floor(trophyCalculation = 30 * global.healthCountMax / 100)` — the assignment is inside `floor()`'s argument, evaluated as `==` in GML, so `trophyCalculation` never recalculates and the "On the Verge of Death" trophy threshold effectively becomes health ≤ 1 instead of ≤30% max health.
- **[obj_black_market_trips_finalise.object.gmx, Step event]** — Cost-colour turns red only `if global.rentCostSlotsTotals <= 0`, but the real "too low to start a trip" gate elsewhere is `>= 25000`; a sub-threshold cost shows in black (looks fine) yet the trip won't start.
- **[obj_black_market_trips_agents_panel_gui.object.gmx, Alarm 1, "Calculates Agents Boost"]** — `global.agencyTotalLootOdds` sums equipped-slot odds then unconditionally divides by the constant `18` regardless of how many slots are actually equipped, making the stat nearly meaningless unless almost all 18 slots are filled.
- **[obj_city_bosses_menu.object.gmx, Create event, all four "Init <City> variables" actions]** — Unconditionally re-randomizes all four cities' Tier 1/2/3 boss `Count`/`Maximum`/rewards on every instantiation with no `if global.currentCity == "..."` guard, silently wiping in-progress boss damage whenever the menu is re-entered for any city.
- **[obj_city_bosses_tier_two_button.object.gmx, Left-Click, Chicago/London/Las Vegas blocks]** — Tier 2 combat stats are byte-identical to each city's own Tier 1 stats (only New York's Tier 2 actually differs); the "Intermediate" tier is exactly as easy as Tier 1 for 3 of 4 cities.
- **[obj_city_bosses_menu.object.gmx, Draw events for Chicago/London/Las Vegas]** — Hardcoded ATK/DEF numbers shown in the panel don't match the real combat stats set by the tier buttons for 10 of 12 city/tier combinations.
- **[obj_city_bosses_special_moves_signature_move_filter.object.gmx, Mouse-Enter event]** — Hover tooltip always checks New York's Tier 1 boss-health globals regardless of `global.currentCity` or tier actually in battle.
- **[obj_city_bosses_weak_attack_button.object.gmx, Mouse-Enter event]** — Tooltip checks `global.chicagoOnJob == "citybosses_CHICAGO"` etc. (uppercase) but the values actually set are lowercase (`"citybosses_london"`); the tooltip never renders correctly for Chicago/London/Las Vegas.
- **[obj_city_bosses_particles.object.gmx, Create event]** — `global.Sname = part_system_create();` with no Destroy event or `part_system_destroy()` anywhere; every instantiation orphans/leaks the previous particle system.
- **[obj_city_bosses_flee_ButtonHandler.object.gmx, Left-Click event]** — Strict `>`/`<` comparisons with no `==` case: at `moneyCount == fleeFee`, the player is either wrongly told "Insufficient Funds" or gets a free flee (trophy + battle-state reset) with no money deducted.
- **[obj_city_bosses_weak_attack_button.object.gmx / power_attack_button.object.gmx, Left-Click event]** — Attack gated on `Count != 1`, but large random damage rolls almost always skip past the exact value 1, so weak/power attacks stay usable on a "dead" boss indefinitely instead of forcing the Final Blow finisher.
- **[obj_enter.object.gmx, Left-Click and Enter-key events]** — `instance_destroy(obj_webCreateTrophiesProgress, true);` uses a two-argument form not supported by GMS1.4's `instance_destroy()` (GMS2-only signature); the same pattern recurs in ~15 other objects project-wide — worth a manual compile check.
- **[obj_hitmen_sectionTwo.object.gmx, Create event]** — XP-scaling checks `global.hitmenXPChanceSectionTwo` instead of `global.hitmenDiffultyChanceSectionTwo`; the "Hard" XP branch is unreachable.
- **[obj_hitmen_sectionThree.object.gmx, Create event]** — Same bug for Section Three; Extra-Hard hitmen never get the `*5.0` XP multiplier.
- **[obj_hitmen_sectionThree.object.gmx, Draw GUI event]** — AI healthbar text uses the 0–100 percentage variable instead of the actual HP variable as numerator, producing mismatched-scale numbers (e.g. "100000 / 170000" at full health).
- **[obj_global.object.gmx, Step event, "Money Sorting Machine"]** — Billion-tier conversion sets `global.moneyCount = 0` instead of subtracting 2,000,000,000, discarding any excess earned above the exact threshold.
- **[obj_global.object.gmx, Step event, "Edge Case 1"]** — Borrow condition `global.moneyCountBillion > 1` should be `> 0`; exactly 1 billion + 0 million never triggers the borrow.
- **[obj_make_trophies.object.gmx, Room Start event]** — Creates 30 `obj_profile` + 1 `obj_scrollbar` unconditionally every firing (no `!instance_exists` guard); revisiting the room stacks duplicate UI.
- **[obj_inventory_weapon.object.gmx, Step event]** — Right-click sets `showList` but everything else checks `showListWeapon`; right-click does nothing.
- **[obj_loot_number.object.gmx, Step event]** — `with other { instance_destroy() }` used outside a Collision/enclosing `with` block, so it doesn't resolve as intended; de-dup logic doesn't work as written.
- **[obj_propertiesPurchaseOne_bmh.object.gmx, Mouse Left Released, all 13 tiers]** — Only checks `global.moneyCount >= cost` with no Million/Billion fallback; a wealthy player whose money sits in those buckets can't buy despite affording it.
- **[obj_pause_menu_stats_trigger.object.gmx, Mouse Left Released]** — Writes `global.lastRoom` (unused elsewhere) instead of `global.roomBeforePrevious` (what Options' Back button actually reads); Stats → Back sends the player to a stale/default room.
- **[obj_properties_home_owner_edit.object.gmx, Step event]** — Sets `propertiesLastEntry = "Player"` then immediately overwrites it with the still-empty `propertiesOwner`; an empty owner name can never recover to "Player".
- **[obj_property_management_slots.object.gmx, `currentPage == 0` branch]** — Only clears/repopulates slot instances 0-15 of 30; instances 16-29 keep permanent "Loading Properties" placeholder text.
- **[obj_options_menu.object.gmx, Draw GUI, `optionsIndex == 0`]** — "Light Theme"/"English" are hardcoded literals instead of reading `global.themeType` or a language global.
- **[obj_properties_income_generator.object.gmx, Step event]** — Income ≥2,000,000,000 resets to `0` outright instead of subtracting 2,000,000,000, discarding excess; displayed "net rate" also mixes hourly/per-60-second units with no conversion.
- **[obj_saving_to_hdd_controller.object.gmx, Create + Draw GUI]** — The "Saving to HDD" banner flag is never set by the real save routine (`scr_save_script.gml`); effectively disconnected from actual save activity.
- **[obj_trophy_check_interval.object.gmx, obj_trophy_popup_delay.object.gmx, Left Released]** — `get_integer(...)` (real) passed directly into `string_digits(...)` (expects a string) — likely argument-type crash when editing these debug fields.
- **[obj_sharedInspectorClass.object.gmx, Create/Step/Draw GUI]** — `currentPage == 2` never initializes `price`/`attackDamage`/`defenceProtection`/`elementaryEffect`, but Draw GUI unconditionally reads all four; a crash risk if page 2 is ever reachable.
- **[scr_DebugConsole.gml, lines 115-123]** — `/theme 0`/`/theme 1` assign to an unqualified local `themeType` instead of `global.themeType`; the command silently does nothing.
- **[scrDrawText.gml, line 15]** — `draw_set_halign(_align)` is never reset afterward, bleeding alignment state into later unrelated draw calls in the same frame.
- **[scr_CreateTripsLootCities.gml, line 8]** — Only the Bristol destination block sets a non-default loot-window position; all 8 other UK destinations use a different position than intended.
- **[scr_JobPanelJobLootChances.gml, ~lines 5-27]** — Each loot tier calls `random(1)` independently instead of reusing one roll, skewing actual drop probabilities away from the commented 2.5/5/10%.
- **[scr_LoadGameScript.gml, "citybosses" section]** — `global.cityBossNameTierOne/Two/Three` and `global.cityBossesMult` are never read by any load path; they silently reset to defaults every load.
- **[scr_number_sep.gml, lines 11-19]** — Thousands-separator grouping mishandles the leading `-` sign for certain negative-number digit counts, producing e.g. `"-,123,456"` instead of `"-123,456"`.
- **[scr_deduct_money.gml, lines 93-97]** — `global.moneySuffix` is only ever set to `"Billion"` or `""`, never `"Million"`.
- **[scr_SaveWeb.gml / scr_save_script.gml, lines 427-441]** — The web save-export builds one comma-separated string from many unescaped free-form fields; a field containing a literal comma would shift and corrupt every subsequent field on import (acknowledged in the code's own comment as "the worst export ever").

### Minor (78)

*Cosmetic issues, dead/redundant code, leftover debug artifacts, fragile-but-working code.*

- **[delerte_me_plz.object.gmx]** — Empty, unplaced, unreferenced object; dead resource.
- **[objLootTableTemplateDontUse.object.gmx, Create event]** — Confirmed unused legacy template; would corrupt loot globals if ever accidentally instantiated.
- **[objLootTableJobsRankingGlobals.object.gmx, Create event]** — Shared `global.arrWeapons` array never cleared between different `lootTableChooseType` selections; stale high-index rows can linger.
- **[objLootWindow.object.gmx, Create event]** — Loot/greed/need spawn loop gated by `instance_number(objGreed) < lwLootSize` instead of the for-loop's own bound.
- **[obj_CHECKER_NEW_YORK_JOB1.object.gmx vs JOB2–5]** — JOB1 alone calls `scr_JobPanelDoJob(...)` instead of inlining bookkeeping like its 19 siblings; worth confirming parity.
- **[obj_CHECKER_NEW_YORK_JOB2–5.object.gmx, rank check]** — Uses `!= 6` instead of `< 6`; functionally equivalent today but inconsistent.
- **[obj_JobListButtons2*.object.gmx, all 4 cities, Mouse Leave event]** — Identical block duplicated twice in a row, uniformly across all four cities.
- **[obj_TEXTURE_LONDON_PAGE1_2.object.gmx, spriteName]** — Sprite misnamed `obj_TEXTURE_LAS_LONDON_PAGE1_2` (leftover "LAS_" fragment); content is correct, cosmetic only.
- **[obj_TEXTURE_LAS_VEGAS_PAGE1_2.object.gmx / obj_TEXTURE_LONDON_PAGE1_2.object.gmx, Draw event]** — Leftover debug `depth` text line that Chicago/New York equivalents lack.
- **[obj_JobListButtons1/2, all 4 cities, Draw event]** — All eight objects draw a leftover debug `depth` text line.
- **[obj_add_debug.object.gmx, Create event]** — Sets `cash = 0;`, an instance variable never used elsewhere.
- **[obj_black_market_shop_button_melee.object.gmx / _shotguns.object.gmx / inventory_button_blueprints.object.gmx]** — Leftover wrong `currentPage = N; //<other category>` comments.
- **[6 weapon-category buttons]** — Redundantly re-check/destroy `obj_black_market_shop_button_outfits`, which masks the real missing-cleanup sites listed under Medium.
- **[obj_black_market_shop_gui_dropdown_checker.object.gmx, Draw]** — `draw_text(x-20000,y,...)` draws far off-screen; leftover debug code. Also has no Mouse Enter/Leave events (no hover cursor).
- **[dropdown_weapons/armour/vehicles, Mouse Enter/Leave]** — Update `image_index` but never call `window_set_cursor`.
- **[6 "main menu" buttons: home/shopinv/statistics/contracts/exit/trips]** — None call `window_set_cursor` on hover.
- **[obj_black_market_main_shopinv_button.object.gmx, Mouse Enter]** — Dead conditional immediately overwritten by an unconditional line.
- **[obj_black_market_gui.object.gmx, Draw]** — `draw_set_valign(fa_left)` passes a horizontal-align constant into the vertical-align setter (harmless since both equal 0).
- **[obj_attack_damage_button.object.gmx, Left Released]** — Guards spending with `!= 0` rather than `> 0`.
- **[obj_chicagoJobOneBar…FiveBar.object.gmx, Draw GUI]** — `global.jobXBarChicago = (global.jobXBarChicago / 100) * 100;` is a mathematical no-op, repeated in all five files.
- **[obj_black_market_trips_agents_pop_up_stats.object.gmx, Draw GUI]** — Slot1/page1 formats cost with `$` + separator; every other slot/page block doesn't. Cosmetic inconsistency.
- **[obj_black_market_slots.object.gmx, Left Release event]** — Leftover `show_debug_message(...)` calls.
- **[obj_city_bosses_battle_screen.object.gmx, Draw GUI]** — Leftover "New York" comment copy-pasted into Chicago/London/Las Vegas blocks (comment-only).
- **[obj_city_bosses_battle_screen.object.gmx, Draw GUI]** — All cities intentionally share `global.currentNewYorkCityBossBarMultiplierTierOne` (per the code's own "needs renaming" comment) — misleading name, not a bug, but a trap for a future "fix."
- **[obj_black_market_trips_finalise_manager_menu_create_loot_button.object.gmx, Step event]** — Sets an unused instance variable instead of the evidently-intended parent-menu variable.
- **[obj_city_bosses_button_LAS_VEGAS.object.gmx, Mouse events]** — Click handler sets `"citybosses_lasvegas"` but a different handler checks `"citybosses_las_vegas"`; the "already on this page" highlight never re-applies for Las Vegas.
- **[obj_city_bosses_tier_two_button.object.gmx / tier_three_button.object.gmx, Chicago/London/Las Vegas "job cleanup" blocks]** — Destroys `JobTwoBar` twice instead of once for `JobOneBar` and once for `JobTwoBar`; `JobOneBar` is never destroyed when starting a Tier 2/3 boss battle.
- **[obj_city_bosses_tier_two_button.object.gmx / tier_three_button.object.gmx, Chicago "Removes the Button" blocks]** — Duplicates the Tier 2 off-screen-move check instead of including Tier 1; Chicago's Tier 1 button stays clickable during Tier 2/3 battles.
- **[obj_city_bosses_killed_GUI.object.gmx, Alarm 0]** — Calls `scr_cityBossesMenuCleanup()` after `instance_destroy()` on the same instance; fragile ordering.
- **[obj_city_bosses_special_moves_signature_move_ButtonHandler.object.gmx, Step event]** — `round(attackDamageTrophy = playerDamage);` — the `round()` return value is discarded; rounding has no effect.
- **[obj_deal_some_bad_drugs_bar3.object.gmx, Step event]** — "List One" uses `>= 98`, "List Two" uses `> 98` for otherwise-mirrored logic; off-by-one drift.
- **[obj_event_images.object.gmx, Step event]** — Stale "Easter 2023 Event" text; Easter reuses the same `image_index` as St Patrick's Day.
- **[obj_createPersonalMedic.object.gmx, Alarm 0]** — Overflow guard on `diff` runs after `diff` is already used, making it ineffective (not currently reachable in practice).
- **[obj_city_bosses_power_attack_button.object.gmx / weak_attack_button.object.gmx / signature_move_ButtonHandler.object.gmx]** — All cities increment the New-York-named shared multiplier global; confusing but intentional per existing comment.
- **[obj_global.object.gmx, Step event, Stamina/Health]** — `floor(global.staminaCount = global.staminaCountMax);` — `floor()`'s result is discarded; only the embedded assignment matters (no-op wrapper).
- **[all LasVegas/London job-bar objects + obj_mug_a_low_life_bar1, Draw GUI]** — No-op `x/100*100 == x` line copy-pasted everywhere.
- **[obj_load_game_trigger.object.gmx / obj_load.object.gmx, Left Pressed]** — Both branches of an `os_browser` check call the identical script.
- **[obj_hitmen_group_exit.object.gmx, Left Pressed]** — sectionThree's ds_list cleanup is commented out while sectionOne/Two's is active.
- **[obj_inventory_weapon.object.gmx, Create event]** — `list[10000] = " ";` after only filling indices 0–37 wastes ~9,962 sparse-array elements.
- **[obj_mouse_wheel_icon_anim.object.gmx, Draw GUI]** — Leftover off-screen debug text.
- **[obj_new_york_properties_main_menu.object.gmx, Step event]** — Calls `scr_PropertiesRefreshListings()` every single step instead of on demand.
- **[obj_load_cont.object.gmx, Step event]** — Small uncovered gaps in loading-label progress bands; cosmetic only.
- **[obj_hitmen_sectionOne.object.gmx / obj_hitmen_sectionTwo.object.gmx]** — Some difficulty-text branches are permanently dead given their own difficulty rolls.
- **[obj_items.object.gmx / obj_html_controller.object.gmx]** — Entire event bodies commented out; inert dead scaffolding.
- **[obj_phone.object.gmx, Create event]** — `ds_list_create()` never destroyed; leaks a small ds_list every open/close cycle.
- **[obj_properties_new_york_menu_pointer.object.gmx, Alarm 0]** — Dead code re-multiplying an already-applied factor; nothing reads the resulting globals.
- **[obj_property_management_make_inventory.object.gmx, Create event]** — Sets `currentPage = 0` then branches on `currentPage == 1`, which can never trigger.
- **[obj_property_employees_slots.object.gmx / obj_properties_employee_management.object.gmx]** — Reuses unrelated property globals to track "employees"; feature is explicitly marked locked/unreachable by the dev's own note.
- **[obj_options_reset_all_job_bar_ranks.object.gmx]** — No confirmation before wiping all job-bar progress on a single click.
- **[obj_properties_income_generator.object.gmx]** — Several dead-code/no-op lines and a mislabeled comment ("rate in 1 minute" for an hourly calc).
- **[Stylistic, multiple files]** — Missing semicolons in a handful of statements; harmless under GML but inconsistent.
- **[obj_trips_slot2 through obj_trips_slot8.object.gmx, Mouse Enter]** — All seven set `global.slotTime` instead of `global.slotNTime` (only slot1 is correct); creates a dead global and frozen per-slot time text.
- **[obj_trips_loadout_gui.object.gmx, Create]** — Duplicate back-to-back existence-check block.
- **[obj_trips_slot3.object.gmx, Step]** — 8px cosmetic misalignment vs its row-mates.
- **[obj_trips_slot6/7/8.object.gmx, Mouse Enter]** — Leftover commented-out dead code.
- **[obj_scrollbar.object.gmx vs obj_scrollbar_black_market.object.gmx]** — Global vs instance-scoped variable for the same concept; naming inconsistency.
- **[obj_web_test.object.gmx]** — Leftover developer/staging test object left in the project.
- **[scr_CalculateBlueprints.gml, lines 58-61]** — `global.blueprintsDiscovered` only ever set at the max value; dead/misleading global (a local shadow is what's actually displayed).
- **[scrDrawLootWindow.gml, lines 51-52]** — Two near-identical `draw_rectangle_colour` calls back-to-back; redundant.
- **[scr_DestroyManagerMenu.gml]** — Dead code, never called; its one `instance_create` also lacks the `!instance_exists` guard used everywhere else.
- **[scr_CalculateStorageMaximum.gml, lines 3-15]** — Locals assigned without `var`, polluting instance scope (harmless since overwritten each call).
- **[scale_canvas.gml, lines 13 & 15]** — Division with no zero-guard; low practical risk given current fixed-constant callers.
- **[scr_LoadGameScript.gml, ~lines 19, 22, 36-37]** — A few ini-load bootstrap defaults mismatch `scr_Globals.gml`'s defaults; only affects brand-new/missing save keys.
- **[scr_PropertiesCollect.gml, ~line 17]** — `moneySuffix` only set in the Billion branch; nothing resets it if income later drops below that tier.
- **[scr_MoverDebug.gml]** — Leftover WASD debug-mover script left in the project.
- **[scr_HitmenNamesReturn.gml, ~lines 103, 112]** — "Baba, " appears twice in the name list; cosmetic weighting quirk.
- **[scr_DialogueDraw.gml / scr_DrawHoverString.gml]** — A few statements missing trailing semicolons.
- **[scr_FirstTimeSetupTrophies.gml]** — No error handling if `ini_open`/`file_ensure` fails partway through its 30-file write; low risk, no recovery path.
- **[scr_SharedInspectorArmourQuantities.gml, line 1]** — Leftover "Melee weapons" comment on what is actually the Armour page block.
- **[scr_SharedInspectorAutomaticsQuantities.gml, line 25]** — Missing trailing semicolon, inconsistent with sibling lines.
- **[scr_UpgradeStatsMenuCloseFunction.gml, line 108]** — Debug message text says "LAS_VEGAS" inside the London code block (copy-paste leftover in a log string).
- **[scr_save_script.gml, lines 420-423]** — A second, empty, redundant `if os_browser == browser_not_a_browser` block runs right after the first.
- **[scr_deduct_money.gml]** — Function is effectively named/structured as a debug build (`scr_deduct_money_debug`, heavy `show_debug_message` use) promoted to production without cleanup; Trillion/Quadrillion/infinity-money tiers are unimplemented here, consistent with the rest of the codebase.

**Create/Destroy pair check:** `scr_CreateAgentsMenuGUIBlackMarket`/`scr_DestroyAgentsMenuGUIBlackMarket`, `scr_DestinationsCreateTrips`/`scr_DestinationsDestroyTrips`, `scr_CreateOptions`/`scr_DestroyOptions`, and `scr_DestinationsCreateManageTrips`/`scr_DestinationsDestroyManageTrips` were all verified symmetric (no leaked instances). No `argument_count`-gated latent argument-count traps were found in any script, and all call sites for scripts taking arguments pass the correct argument count.

## Completed / Patch Notes

Bugs fixed from the list above get moved here. Format: `- [YYYY-MM-DD] Fixed <short bug name> (file(s)) — what changed and why.` Keep the corresponding entry in the Known Bugs section removed once it's listed here, so the Known Bugs section always reflects what's still outstanding.

- [2026-07-20] Fixed London Job Five/Ten rank tracking reading/writing Chicago's globals (`obj_londonJobFiveBar.object.gmx`) — the Alarm "Rating system V2" event referenced `global.jobFiveBarChicago`/`jobFiveBarRankChicago`/`jobTenBarChicago`/`jobTenBarRankChicago` throughout; swapped every occurrence to the London equivalents (`jobFiveBarLondon`/`jobFiveBarRankLondon`/`jobTenBarLondon`/`jobTenBarRankLondon`) so London's own rank now advances correctly and Chicago's progress is no longer silently mutated from the London screen.
- [2026-07-20] Fixed the personal medic "pay with a banked million" heal exploit (`obj_createPersonalMedicHealTrigger.object.gmx`) — the fallback path converted a million into spendable cash, then discarded its own cost-subtraction with a final `global.moneyCount = tempMoney + 1` that overwrote the deduction, netting the player money instead of charging them. Replaced the whole hand-rolled branch with a single `if scr_deduct_money(obj_createPersonalMedic.healthConditionCost) { global.healthCount = global.healthCountMax; }`, reusing the project's existing cascading-borrow money script instead of re-implementing (and re-breaking) the million/billion conversion logic inline.
- [2026-07-20] Fixed Trip Slots 3/4/5 charging the Slot 2 price ($100k) instead of their own advertised price (`obj_trips_slot3.object.gmx`/`obj_trips_slot4.object.gmx`/`obj_trips_slot5.object.gmx`) — all three had copy-pasted Slot 2's purchase branches verbatim. Scaled each slot's Locked-purchase logic to its own cost, mirroring the existing sibling conventions: Slot 3 ($500,000, sub-million) now follows Slot 2's "convert 1 million, credit back the $500,000 change" pattern; Slot 4 ($1.0m) and Slot 5 ($2.0m) now follow Slot 6/7/8's "convert N whole millions, no change owed" pattern.
- [2026-07-20] Fixed the Trips Agents page-2/slot12 type-mismatch crash (`obj_black_market_trips_agents_slot3.object.gmx`) — the purchase-fallback branch checked `global.slot12Status && global.moneyCountMillion > 0`, using the string `slot12Status` directly as a boolean (a GML type-mismatch) instead of comparing it to `"EMPTY"` like every sibling slot. Added the missing `== "EMPTY"` comparison.
- [2026-07-20] Fixed the missing A-rank guard on the top-tier loot drop in Job Bars 4/5/9/10 (`obj_rob_j_store_bar4.object.gmx`, `obj_rob_small_bank_bar5.object.gmx`) — the 98–99% tail block fired the A→S drop table `(1,7,7,8)` at any rank, not just A, unlike sibling `obj_steal_a_car_bar2`. Added the missing `&& ratingListOne == "A"` / `&& ratingListTwo == "A"` conditions to match.
- [2026-07-20] Fixed the typo'd Agency Level Hub save key (`scr_LoadGameScript.gml`) — the load read `ini_read_real("blackmarket", "global.agencyLevelHub", 0)` while `scr_save_script.gml` writes under the key `"agencyLevelHub"` (no `global.` prefix), so the key never matched and progression silently reset to 0 on every load. Corrected the read key to match the write key.
- [2026-07-20] Fixed the billion-tier money underflow in all 9 property tiers across `obj_propertiesPurchaseOne.object.gmx`/`obj_propertiesPurchaseThree.object.gmx`/`obj_propertiesPurchaseFive.object.gmx` (27 occurrences) — the "billion money parameters" branch converted 1 billion into 1000 million but never topped up `global.moneyCount` before deducting the property cost, driving cash negative and breaking every future `moneyCount >=` purchase check. Replaced each tier's 3-branch normal/million/billion chain with a single `if <property selected> && scr_deduct_money(cost * quantity) { grant property }`, reusing the project's existing cascading-borrow money script instead of re-implementing (and re-breaking) the tier conversion logic inline.
- [2026-07-20] Fixed the trips-loadout Close (X) button spawning duplicate trigger instances (`obj_trips_loadout_gui_close_x.object.gmx`) — its Left Released event checked `if instance_exists(obj_trip_upgrades_button_trigger)` (inverted from the "create only if missing" idiom used everywhere else in the project), and since the trigger is created by the parent Trips panel and stays alive for as long as that panel is open, the check was almost always true, spawning an extra large invisible click-catcher trigger at the close button's last position on every click. Inverted the condition to `!instance_exists(...)`. (The GUI itself does correctly get torn down already, via `scr_CalculateApplyEquippedTripsLoadoutState()` → `scr_DestroyTripsLoadoutGUI()`, which this event already calls first — the leaked triggers were the real bug.)
