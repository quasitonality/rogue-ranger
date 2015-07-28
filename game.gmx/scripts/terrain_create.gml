///terrain_create(name, is_solid, is_clear)

name = argument0;
is_solid = argument1;
is_clear = argument2;

t = ds_map_create();

t[? "name"] = name;
t[? "is_solid"] = is_solid;
t[? "is_clear"] = is_clear;

return t;
