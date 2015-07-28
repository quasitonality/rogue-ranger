///humanoid_create(rank)

// Values greater than 0 will produce higher starting stats
rank = argument0;

m = ds_map_create();

// Determine max (i.e. potential) attribute values
// 1. Roll stat array
for (n = 0; n < 6; n++)
{
    stat_max[n] = roll(3, 8) + 10;
}


// 2. Assign values
m[? "strength_max"] = stat_max[0];
m[? "dexterity_max"] = stat_max[1];
m[? "endurance_max"] = stat_max[2];
m[? "learning_max"] = stat_max[3];
m[? "charisma_max"] = stat_max[4];
m[? "perception_max"] = stat_max[5];

// Determine starting attribute values
// 1. Roll stat array
for (n = 0; n < 6; n++)
{
    d = ceil(stat_max[n] / 4);
    stat[n] = d + roll(1, d);
}

// 2. Increase stats by rank
for (n = 0; n < rank; n++)
    for (s = 0; n < 6; s++)
    {
        diff = stat_max[s] - stat[s];
        if (diff >= roll(1, 20)) stat[s]++;
    }

// 3. Assign values
m[? "strength"] = stat[0];
m[? "dexterity"] = stat[1];
m[? "endurance"] = stat[2];
m[? "learning"] = stat[3];
m[? "charisma"] = stat[4];
m[? "perception"] = stat[5];

// Weight is partially dependent on Strength
m[? "weight"] = 50 + m[? "strength"] + roll(1, m[? "strength"]) + roll(3, 10);

// Blood is partially dependent on Weight
m[? "blood_max"] = m[? "weight"] + 200 + roll(5, 10);
m[? "blood"] = m[? "blood_max"];

// Maximum Stamina is non-randomized secondary stat
m[? "stam"] = humanoid_stam_max(m);
        
m[? "action_points"] = 0;
m[? "speed"] = 100;
m[? "alive"] = true;

// Placeholder name
m[? "name"] = "Anonymous";

return m;
