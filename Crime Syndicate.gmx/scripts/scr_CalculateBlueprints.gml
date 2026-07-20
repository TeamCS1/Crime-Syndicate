//---Calculation
blueprintsDiscovered = 0;

if global.pistolBlueprint > 0 
{
    global.pistolBlueprintFound = true;
    blueprintsDiscovered++;
}

if global.shotgunBlueprint > 0  
{
    global.shotgunBlueprintFound = true;
    blueprintsDiscovered++;
}

if global.sniperBlueprint > 0 
{
    global.sniperBlueprintFound = true;
    blueprintsDiscovered++;
}

if global.lmgBlueprint > 0 
{
    global.lmgBlueprintFound = true;
    blueprintsDiscovered++;
}

if global.throwablesBlueprint > 0 
{
    global.throwablesBlueprintFound = true;
    blueprintsDiscovered++;
}

if global.meleeBlueprint > 0 
{
    global.meleeBlueprintFound = true;
    blueprintsDiscovered++;
}

if global.submachineBlueprint > 0 
{
    global.submachineBlueprintFound = true;
    blueprintsDiscovered++;
}

if global.automaticBlueprint > 0 
{
    global.automaticBlueprintFound = true;
    blueprintsDiscovered++;
}

if global.minesBlueprint > 0 
{
    global.minesBlueprintFound = true;
    blueprintsDiscovered++;
}

if blueprintsDiscovered >= 9
{
    global.blueprintsDiscovered = 9;
}
