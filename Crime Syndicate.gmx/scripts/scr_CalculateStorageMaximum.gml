global.tripsStorageMaximum = 0;

s1 = (global.blackmarketProperty1QuantityOwned * 5);
s2 = (global.blackmarketProperty2QuantityOwned * 20);
s3 = (global.blackmarketProperty3QuantityOwned * 40);
s4 = (global.blackmarketProperty4QuantityOwned * 80);
s5 = (global.blackmarketProperty5QuantityOwned * 120);
s6 = (global.blackmarketProperty6QuantityOwned * 160);
s7 = (global.blackmarketProperty7QuantityOwned * 200);
s8 = (global.blackmarketProperty8QuantityOwned * 250);
s9 = (global.blackmarketProperty9QuantityOwned * 500);
s10 = (global.blackmarketProperty10QuantityOwned * 750);
s11 = (global.blackmarketProperty11QuantityOwned * 1000);
s12 = (global.blackmarketProperty12QuantityOwned * 2000);
s13 = (global.blackmarketProperty13QuantityOwned * 4000);
//100 reperesents initial carry weight
global.tripsStorageMaximum = 100 + 
(s1+s2+s3+s4+s5+s6+s7+s8+s9+s10+s11+s12+s13);
