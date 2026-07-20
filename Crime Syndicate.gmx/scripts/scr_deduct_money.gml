/// scr_deduct_money_debug(amount)
var amount = argument0;

var deduct_billion = floor(amount / 1000000000);
var deduct_million = floor((amount mod 1000000000) / 1000000);
var deduct_remainder = amount mod 1000000;

var b = global.moneyCountBillion;
var m = global.moneyCountMillion;
var r = global.moneyCount;

show_debug_message("Start money: " + string(b) + "B " + string(m) + "M " + string(r));
show_debug_message("Deducting: " + string(deduct_billion) + "B " + string(deduct_million) + "M " + string(deduct_remainder));

if (r < deduct_remainder) {
    if (m > 0) {
        m -= 1;
        r += 1000000;
        show_debug_message("Borrowed 1 million for remainder");
    } else if (b > 0) {
        b -= 1;
        m += 999; // borrow 1 billion as 1000 million but 1 used to refill remainder borrow
        r += 1000000;
        show_debug_message("Borrowed 1 billion for remainder");
    } else {
        show_debug_message("Not enough funds to borrow remainder");
        return false;
    }
}
r -= deduct_remainder;
show_debug_message("After remainder deduction: " + string(b) + "B " + string(m) + "M " + string(r));

if (m < deduct_million) {
    var needed_m = deduct_million - m;
    var needed_b = ceil(needed_m / 1000);
    if (b >= needed_b) {
        b -= needed_b;
        m += needed_b * 1000;
        show_debug_message("Borrowed " + string(needed_b) + " billion for millions");
    } else {
        show_debug_message("Not enough billions to borrow millions");
        return false;
    }
}
m -= deduct_million;
show_debug_message("After million deduction: " + string(b) + "B " + string(m) + "M " + string(r));

if (b < deduct_billion) {
    show_debug_message("Not enough billions for billion deduction");
    return false;
}
b -= deduct_billion;
show_debug_message("After billion deduction: " + string(b) + "B " + string(m) + "M " + string(r));

// Normalize millions and remainder
while (r < 0) {
    if (m > 0) {
        m -= 1;
        r += 1000000;
    } else if (b > 0) {
        b -= 1;
        m += 999;
        r += 1000000;
    } else {
        show_debug_message("Failed normalization remainder");
        return false;
    }
}
while (m < 0) {
    if (b > 0) {
        b -= 1;
        m += 1000;
    } else {
        show_debug_message("Failed normalization millions");
        return false;
    }
}
while (m >= 1000) {
    b += 1;
    m -= 1000;
}
while (r >= 1000000) {
    m += 1;
    r -= 1000000;
}

show_debug_message("Final money: " + string(b) + "B " + string(m) + "M " + string(r));

global.moneyCountBillion = b;
global.moneyCountMillion = m;
global.moneyCount = r;

if (b > 0) {
    global.moneySuffix = "Billion";
} else {
    global.moneySuffix = "";
}

return true;

