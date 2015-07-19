///roll(dice, sides)

dice = argument0;
sides = argument1;

r = 0;

for (n = 0; n < dice; n++)
    r += irandom_range(1, sides);
    
return r;