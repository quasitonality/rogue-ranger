///chunk_create(w, h)

w = argument0;
h = argument1;

c = ds_map_create();

// Create Terrain
c[? TERRAIN] = ds_grid_create(w, h);

// PLACEHOLDER CODE -- populate grid with grass tiles
ds_grid_set_region(c[? TERRAIN], 0, 0, w - 1, h - 1, tile_create(GRASS));

// Initialize Actor List
c[? ACTORS] = ds_list_create();

// Initialize Item List
c[? ITEMS] = ds_list_create();

return c;
