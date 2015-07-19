///terrain_create(name, is_solid, is_clear)

name = argument0;
is_solid = argument1;
is_clear = argument2;

t = ds_map_create();

t[? NAME] = name;
t[? IS_SOLID] = is_solid;
t[? IS_CLEAR] = is_clear;

return t;
