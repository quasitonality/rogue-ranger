///tile_create(terrain_id)

terrain_id = argument0;

t = ds_map_create();

t[? TERRAIN] = GRASS;
T_VISIBLE = 0;
T_EXPLORED = 0;

return t;
