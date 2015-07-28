///chunk_create(w, h)

w = argument0;
h = argument1;

c = ds_map_create();

// Create Terrain
c[? "terrain"] = ds_grid_create(w, h);

// Initialize Actor List
c[? "actors"] = ds_list_create();

// Initialize Item List
c[? "items"] = ds_list_create();

return c;
