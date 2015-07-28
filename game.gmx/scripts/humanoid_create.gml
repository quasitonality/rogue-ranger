///humanoid_create(rank)

// Values greater than 0 will produce higher starting stats
rank = argument0;

m = ds_map_create();

// Determine max (i.e. potential) attribute values
// TODO

// Determine starting attribute values
// TODO

// Weight is partially dependent on Strength
m[? "weight"] = 50 + m[? "strength"] + roll(1, m[? "strength"]) + roll(3, 10);

// Blood is partially dependent on Weight
m[? "blood_max"] = m[? "weight"] + 200 + roll(5, 10);
m[? "blood"] = m[? "blood_max"];

// Maximum Stamina is non-randomized secondary stat
m[? "stam"] = humanoid_stam_max(m);

// Increase stats by rank
// TODO
        
m[? "action_points"] = 0;
m[? "speed"] = 100;
m[? "alive"] = true;

// Placeholder name
m[? "name"] = "Anonymous";

return m;
