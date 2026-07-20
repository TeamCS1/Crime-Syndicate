//BUY BUTTON
if obj_black_market_shop_gui_upper_piece.currentPage == 0   //Melee weapons
{
    if obj_sharedInspectorClass.itemIndex == 0 && scr_deduct_money(obj_sharedInspectorClass.price)   //Ballbuster
    {
        global.ballbusterQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 1 && scr_deduct_money(obj_sharedInspectorClass.price)   //Baseball bat
    {
        global.baseballBatQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 2 && scr_deduct_money(obj_sharedInspectorClass.price)   //Baseball bat spiked
    {
        global.baseballBatSpikedQuantity++;
    } 
    
    else if obj_sharedInspectorClass.itemIndex == 3 && scr_deduct_money(obj_sharedInspectorClass.price)   //Basic mallet
    {
        global.basicMalletRubberQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 4 && scr_deduct_money(obj_sharedInspectorClass.price)   //Basic sledgehammer
    {
        global.basicSledgehammerQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 5 && scr_deduct_money(obj_sharedInspectorClass.price)   //Basic wrench
    {
        global.basicWrenchQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 6 && scr_deduct_money(obj_sharedInspectorClass.price)   //Big axe
    {
        global.bigAxeQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 7 && scr_deduct_money(obj_sharedInspectorClass.price)   //Big sign
    {
        global.bigSignQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 8 && scr_deduct_money(obj_sharedInspectorClass.price)   //standard knife
    {
        global.standardKnifeQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 9 && scr_deduct_money(obj_sharedInspectorClass.price)   //sturdy knife
    {
        global.sturdyKnifeQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 10 && scr_deduct_money(obj_sharedInspectorClass.price)   //golf club
    {
        global.golfClubQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 11 && scr_deduct_money(obj_sharedInspectorClass.price)   //Bone hooks
    {
        global.boneHooksQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 12 && scr_deduct_money(obj_sharedInspectorClass.price)   //Bunsen burder
    {
        global.bunsenBurnerMixedChemicalsQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 13 && scr_deduct_money(obj_sharedInspectorClass.price)   //curved nailboard
    {
        global.curvedNailboardQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 14 && scr_deduct_money(obj_sharedInspectorClass.price)   //handmade bone club
    {
        global.handmadeBoneClubQuantity++;
    }
}

if obj_black_market_shop_gui_upper_piece.currentPage == 1   //ARMOUR
{
    
    if obj_sharedInspectorClass.itemIndex == 0 && scr_deduct_money(obj_sharedInspectorClass.price)   //stealth suit
    {
        global.stealth_suitQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 1 && scr_deduct_money(obj_sharedInspectorClass.price)   //stealth suit
    {
        global.military_suitQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 2 && scr_deduct_money(obj_sharedInspectorClass.price)   //stealth suit
    {
        global.jugganaut_suitQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 3 && scr_deduct_money(obj_sharedInspectorClass.price)   //stealth suit
    {
        global.power_armourQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 4 && scr_deduct_money(obj_sharedInspectorClass.price)   //stealth suit
    {
        global.prototype_suitQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 5 && scr_deduct_money(obj_sharedInspectorClass.price)   //stealth suit
    {
        global.three_piece_suit_normalQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 6 && scr_deduct_money(obj_sharedInspectorClass.price)   //stealth suit
    {
        global.three_piece_suit_kevlarQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 7 && scr_deduct_money(obj_sharedInspectorClass.price)   //stealth suit
    {
        global.flak_jacketQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 8 && scr_deduct_money(obj_sharedInspectorClass.price)   //stealth suit
    {
        global.radiation_suitQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 9 && scr_deduct_money(obj_sharedInspectorClass.price)   //stealth suit
    {
        global.cloaking_deviceQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 10 && scr_deduct_money(obj_sharedInspectorClass.price)   //stealth suit
    {
        global.luxury_leather_gold_jacketQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 11 && scr_deduct_money(obj_sharedInspectorClass.price)   //stealth suit
    {
        global.spider_silk_armourQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 12 && scr_deduct_money(obj_sharedInspectorClass.price)   //stealth suit
    {
        global.handmade_bone_armourQuantity++;
    }
}

///--- VEHICLES

if obj_black_market_shop_gui_upper_piece.currentPage == 3   //VEHICLES
{
    if obj_sharedInspectorClass.itemIndex == 0 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.freight_liner_vanQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 1 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.transporter_vanQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 2 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.limousineQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 3 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.pickup_truckQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 4 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.sports_suvQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 5 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.modern_suvQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 6 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.sports_sedanQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 7 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.offroad4x4_weaponisedQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 8 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.military8x8_truckQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 9 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.private_jetQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 10 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.f16_fighter_jetQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 11 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.apache_helicopterQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 12 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.chinook_helicopterQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 13 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.hearseQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 14 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.dcm_deluxo_coupeQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 15 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.ghost_motorcycleQuantity++;
    }
    
    else if (scr_deduct_money(obj_sharedInspectorClass.price)) {
    global.v_22_predator_helicopterQuantity++;
}
    
}

///--- AUTOMATICS

if obj_black_market_shop_gui_upper_piece.currentPage == 4   //Automatics
{
    if obj_sharedInspectorClass.itemIndex == 0 && scr_deduct_money(obj_sharedInspectorClass.price)   //AK47 Rifle
    {
        global.ak47Quantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 1 && scr_deduct_money(obj_sharedInspectorClass.price)   //SIG Sauer Rifle
    {
        global.sigSauerRifleQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 2 && scr_deduct_money(obj_sharedInspectorClass.price)   //M4 Rifle
    {
        global.m4RifleQuantity++;
    }
  
    else if obj_sharedInspectorClass.itemIndex == 3 && scr_deduct_money(obj_sharedInspectorClass.price)   //KRINKOV Rifle
    {
        global.krinkovRifleQuantity++;
    }

    
    else if obj_sharedInspectorClass.itemIndex == 4 && scr_deduct_money(obj_sharedInspectorClass.price)   //ASVAL9 Rifle
    {
        global.asVal9RifleQuantity++;
    }

    else if obj_sharedInspectorClass.itemIndex == 5 && scr_deduct_money(obj_sharedInspectorClass.price)   //Combine Rifle
    {
        global.combineRifleQuantity++;
    }

    else if obj_sharedInspectorClass.itemIndex == 6 && scr_deduct_money(obj_sharedInspectorClass.price)   //AUG Rifle
    {
        global.augRifleQuantity++;
    }

    else if obj_sharedInspectorClass.itemIndex == 7 && scr_deduct_money(obj_sharedInspectorClass.price)   //ASH 12 Tarkov Rifle
    {
        global.ash12TarkovRifleQuantity++;
    }

    else if obj_sharedInspectorClass.itemIndex == 8 && scr_deduct_money(obj_sharedInspectorClass.price)   //ASTW2 Carbine Rifle
    {
        global.astw2CarbineRifleQuantity++;
    }

    else if obj_sharedInspectorClass.itemIndex == 9 && scr_deduct_money(obj_sharedInspectorClass.price)   //Tommy Rifle
    {
        global.tommyRifleQuantity++;
    }

    else if obj_sharedInspectorClass.itemIndex == 10 && scr_deduct_money(obj_sharedInspectorClass.price)   //Tombstone Rifle
    {
        global.tombstoneRifleQuantity++;
    }
}

///--- PISTOLS & LMG

if obj_black_market_shop_gui_upper_piece.currentPage == 5   //Pistols & LMG
{
    if obj_sharedInspectorClass.itemIndex == 0 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.pythonQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 1 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.dragonPistolQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 2 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.makarovPistolQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 3 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.n9500PistolQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 4 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.lmg2000Quantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 5 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.hks2050Quantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 6 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.m60Quantity++;
    }

}

///--- SHOTGUNS

if obj_black_market_shop_gui_upper_piece.currentPage == 6   //SHOTGUNS
{
    if obj_sharedInspectorClass.itemIndex == 0 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.combat_shotgunQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 1 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.sawed_off_shotgunQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 2 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.assault_shotgunQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 3 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.long_range_shotgunQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 4 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.spez_12_shotgunQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 5 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.standard_hunting_rifleQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 6 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.powerful_hunting_rifleQuantity++;
    }
}

///--- SNIPERS

if obj_black_market_shop_gui_upper_piece.currentPage == 7   //SNIPERS
{
    if obj_sharedInspectorClass.itemIndex == 0 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.pipe_sniperQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 1 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.bolt_action_sniperQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 2 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.tactical_sniperQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 3 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.marksman_sniperQuantity++;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 4 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.destroyer_aw308Quantity++;
    }
}

///--- THROWABLES

if obj_black_market_shop_gui_upper_piece.currentPage == 8   //THROWABLES
{
    if obj_sharedInspectorClass.itemIndex == 0 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.c4Quantity++;
    }
    
    if obj_sharedInspectorClass.itemIndex == 1 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.grenadeQuantity++;
    }
    
    if obj_sharedInspectorClass.itemIndex == 2 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.motolov_cocktailsQuantity++;
    }
    
    if obj_sharedInspectorClass.itemIndex == 3 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.landmineQuantity++;
    }
    
    if obj_sharedInspectorClass.itemIndex == 4 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.claymoreQuantity++;
    }
    
    if obj_sharedInspectorClass.itemIndex == 5 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.gas_bombQuantity++;
    }
    
    if obj_sharedInspectorClass.itemIndex == 6 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.shurikenQuantity++;
    }
    
    if obj_sharedInspectorClass.itemIndex == 7 && scr_deduct_money(obj_sharedInspectorClass.price)
    {
        global.throwing_knifeQuantity++;
    }
}
