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
