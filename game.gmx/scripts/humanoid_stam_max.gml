///humanoid_stam_max(id)

m = argument0;

return 50 + 2 * m[? "endurance"] + m[? "strength"] / 2;
