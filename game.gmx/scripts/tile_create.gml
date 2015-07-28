///tile_create(terrain_id)
// terrain_id is a string, and must be a valid key in terrain_types.
// [see init_terrain()]

terrain_id = argument0;

t = ds_map_create();

t[? "visible"] = false;
t[? "explored"] = false;
t[? "terrain"] = terrain_id;

return t;
