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

if global.totalPropertiesIncomeTrillion > 0  //Trillion
{
    global.moneyCountTrillion += floor(global.totalPropertiesIncomeTrillion);
    global.totalPropertiesIncomeTrillion = 0;
    global.moneySuffix = "Trillion";
}

if global.totalPropertiesIncomeQuadrillion > 0  //Quadrillion
{
    global.moneyCountQuadrillion += floor(global.totalPropertiesIncomeQuadrillion);
    global.totalPropertiesIncomeQuadrillion = 0;
    global.moneySuffix = "Quadrillion";
}
