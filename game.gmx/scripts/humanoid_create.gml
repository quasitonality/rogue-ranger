///humanoid_create(rank)

// Values greater than 0 will produce higher starting stats
rank = argument0;

m = ds_map_create();

// Determine max (i.e. potential) attribute values
for (n = STR_MAX; n <= PER_MAX; n++)
    m[? n] = roll(4, 15) + 8;

// Determine starting attribute values
for (n = STR; n <= PER; n++)
{
    p = m[? n-6] / 10; // Starting attributes are partially dependent on max values
    m[? n] = p + roll(3, 4);
}

// Weight is partially dependent on Strength
m[? WEIGHT] = 50 + m[? STR] + roll(1, m[? STR]) + roll(3, 10);

// Blood is partially dependent on Weight
m[? BLOOD_MAX] = m[? WEIGHT] + 200 + roll(5, 10);
m[? BLOOD] = m[? BLOOD_MAX];

// Maximum Stamina is non-randomized secondary stat
m[? STAM] = humanoid_stam_max(m);

// Increase stats by rank
for (n = 0; n < rank; n++)
    for (a = STR; a <= PER; a++)
        // Each att. has [rank] chances to increase. Higher max att. has higher
        // chance to increase each time.
        if (m[? a+6] > roll(1, 65)) m[? a]++;

// Placeholder name
m[? NAME] = "Anonymous";

return m;