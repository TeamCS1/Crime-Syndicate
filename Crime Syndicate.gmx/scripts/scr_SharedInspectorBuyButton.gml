//BUY BUTTON
if obj_black_market_shop_gui_upper_piece.currentPage == 0   //Melee weapons
{
    if obj_sharedInspectorClass.itemIndex == 0   //Ballbuster
    {
        global.ballbusterQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 1   //Baseball bat
    {
        global.baseballBatQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 2   //Baseball bat spiked
    {
        global.baseballBatSpikedQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    } 
    
    else if obj_sharedInspectorClass.itemIndex == 3   //Basic mallet
    {
        global.basicMalletRubberQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 4   //Basic sledgehammer
    {
        global.basicSledgehammerQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 5   //Basic wrench
    {
        global.basicWrenchQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 6   //Big axe
    {
        global.bigAxeQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 7   //Big sign
    {
        global.bigSignQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 8   //standard knife
    {
        global.standardKnifeQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 9   //sturdy knife
    {
        global.sturdyKnifeQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 10   //golf club
    {
        global.golfClubQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 11   //Bone hooks
    {
        global.boneHooksQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 12   //Bunsen burder
    {
        global.bunsenBurnerMixedChemicalsQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 13   //curved nailboard
    {
        global.curvedNailboardQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 14   //handmade bone club
    {
        global.handmadeBoneClubQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
}

if obj_black_market_shop_gui_upper_piece.currentPage == 1   //ARMOUR
{
    
    if obj_sharedInspectorClass.itemIndex == 0   //stealth suit
    {
        global.stealth_suitQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;  
    }
    
    else if obj_sharedInspectorClass.itemIndex == 1   //stealth suit
    {
        global.military_suitQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 2   //stealth suit
    {
        global.jugganaut_suitQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 3   //stealth suit
    {
        global.power_armourQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 4   //stealth suit
    {
        global.prototype_suitQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 5   //stealth suit
    {
        global.three_piece_suit_normalQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 6   //stealth suit
    {
        global.three_piece_suit_kevlarQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 7   //stealth suit
    {
        global.flak_jacketQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 8   //stealth suit
    {
        global.radiation_suitQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 9   //stealth suit
    {
        global.cloaking_deviceQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 10   //stealth suit
    {
        global.luxury_leather_gold_jacketQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 11   //stealth suit
    {
        global.spider_silk_armourQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 12   //stealth suit
    {
        global.handmade_bone_armourQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
}

///--- VEHICLES

if obj_black_market_shop_gui_upper_piece.currentPage == 3   //VEHICLES
{
    if obj_sharedInspectorClass.itemIndex == 0  
    {
        global.freight_liner_vanQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;  
    }
    
    else if obj_sharedInspectorClass.itemIndex == 1  
    {
        global.transporter_vanQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;  
    }
    
    else if obj_sharedInspectorClass.itemIndex == 2  
    {
        global.limousineQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;  
    }
    
    else if obj_sharedInspectorClass.itemIndex == 3  
    {
        global.pickup_truckQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;  
    }
    
    else if obj_sharedInspectorClass.itemIndex == 4  
    {
        global.sports_suvQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;  
    }
    
    else if obj_sharedInspectorClass.itemIndex == 5  
    {
        global.modern_suvQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;  
    }
    
    else if obj_sharedInspectorClass.itemIndex == 6  
    {
        global.sports_sedanQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;  
    }
    
    else if obj_sharedInspectorClass.itemIndex == 7  
    {
        global.offroad4x4_weaponisedQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;  
    }
    
    else if obj_sharedInspectorClass.itemIndex == 8  
    {
        global.military8x8_truckQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;  
    }
    
    else if obj_sharedInspectorClass.itemIndex == 9  
    {
        global.private_jetQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;  
    }
    
    else if obj_sharedInspectorClass.itemIndex == 10  
    {
        global.f16_fighter_jetQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;  
    }
    
    else if obj_sharedInspectorClass.itemIndex == 11  
    {
        global.apache_helicopterQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;  
    }
    
    else if obj_sharedInspectorClass.itemIndex == 12  
    {
        global.chinook_helicopterQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;  
    }
    
    else if obj_sharedInspectorClass.itemIndex == 13  
    {
        global.hearseQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;  
    }
    
    else if obj_sharedInspectorClass.itemIndex == 14  
    {
        global.dcm_deluxo_coupeQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;  
    }
    
    else if obj_sharedInspectorClass.itemIndex == 15  
    {
        global.ghost_motorcycleQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;  
    }
    
    else if (scr_deduct_money(obj_sharedInspectorClass.price)) {
    global.v_22_predator_helicopterQuantity++;
}
    
}

///--- AUTOMATICS

if obj_black_market_shop_gui_upper_piece.currentPage == 4   //Automatics
{
    if obj_sharedInspectorClass.itemIndex == 0  //AK47 Rifle
    {
        global.ak47Quantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 1 //SIG Sauer Rifle
    {
        global.sigSauerRifleQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 2 //M4 Rifle
    {
        global.m4RifleQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
  
    else if obj_sharedInspectorClass.itemIndex == 3 //KRINKOV Rifle
    {
        global.krinkovRifleQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }

    
    else if obj_sharedInspectorClass.itemIndex == 4 //ASVAL9 Rifle
    {
        global.asVal9RifleQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }

    else if obj_sharedInspectorClass.itemIndex == 5 //Combine Rifle
    {
        global.combineRifleQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }

    else if obj_sharedInspectorClass.itemIndex == 6 //AUG Rifle
    {
        global.augRifleQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }

    else if obj_sharedInspectorClass.itemIndex == 7 //ASH 12 Tarkov Rifle
    {
        global.ash12TarkovRifleQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }

    else if obj_sharedInspectorClass.itemIndex == 8 //ASTW2 Carbine Rifle
    {
        global.astw2CarbineRifleQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }

    else if obj_sharedInspectorClass.itemIndex == 9 //Tommy Rifle
    {
        global.tommyRifleQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }

    else if obj_sharedInspectorClass.itemIndex == 10 //Tombstone Rifle
    {
        global.tombstoneRifleQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
}

///--- PISTOLS & LMG

if obj_black_market_shop_gui_upper_piece.currentPage == 5   //Pistols & LMG
{
    if obj_sharedInspectorClass.itemIndex == 0  
    {
        global.pythonQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 1  
    {
        global.dragonPistolQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 2  
    {
        global.makarovPistolQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 3  
    {
        global.n9500PistolQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 4  
    {
        global.lmg2000Quantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 5  
    {
        global.hks2050Quantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 6  
    {
        global.m60Quantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }

}

///--- SHOTGUNS

if obj_black_market_shop_gui_upper_piece.currentPage == 6   //SHOTGUNS
{
    if obj_sharedInspectorClass.itemIndex == 0  
    {
        global.combat_shotgunQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 1  
    {
        global.sawed_off_shotgunQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 2 
    {
        global.assault_shotgunQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 3  
    {
        global.long_range_shotgunQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 4  
    {
        global.spez_12_shotgunQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 5  
    {
        global.standard_hunting_rifleQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 6  
    {
        global.powerful_hunting_rifleQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
}

///--- SNIPERS

if obj_black_market_shop_gui_upper_piece.currentPage == 7   //SNIPERS
{
    if obj_sharedInspectorClass.itemIndex == 0  
    {
        global.pipe_sniperQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 1  
    {
        global.bolt_action_sniperQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 2  
    {
        global.tactical_sniperQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 3  
    {
        global.marksman_sniperQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    else if obj_sharedInspectorClass.itemIndex == 4  
    {
        global.destroyer_aw308Quantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
}

///--- THROWABLES

if obj_black_market_shop_gui_upper_piece.currentPage == 8   //THROWABLES
{
    if obj_sharedInspectorClass.itemIndex == 0  
    {
        global.c4Quantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    if obj_sharedInspectorClass.itemIndex == 1  
    {
        global.grenadeQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    if obj_sharedInspectorClass.itemIndex == 2  
    {
        global.motolov_cocktailsQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    if obj_sharedInspectorClass.itemIndex == 3  
    {
        global.landmineQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    if obj_sharedInspectorClass.itemIndex == 4  
    {
        global.claymoreQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    if obj_sharedInspectorClass.itemIndex == 5  
    {
        global.gas_bombQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    if obj_sharedInspectorClass.itemIndex == 6  
    {
        global.shurikenQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
    
    if obj_sharedInspectorClass.itemIndex == 7  
    {
        global.throwing_knifeQuantity++;
        global.moneyCount -= obj_sharedInspectorClass.price;
    }
}
