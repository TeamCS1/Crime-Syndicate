if global.totalPropertiesIncome > 0 //Normals
{
    global.moneyCount += floor(global.totalPropertiesIncome);
    global.totalPropertiesIncome = 0;
}

if global.totalPropertiesIncomeMillion > 0  //Million
{
    global.moneyCountMillion += floor(global.totalPropertiesIncomeMillion);
    global.totalPropertiesIncomeMillion = 0;
}

if global.totalPropertiesIncomeBillion > 0  //Billion
{
    global.moneyCountBillion += floor(global.totalPropertiesIncomeBillion);
    global.totalPropertiesIncomeBillion = 0;
    global.moneySuffix = "Billion";
}
