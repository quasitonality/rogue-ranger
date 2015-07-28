///init_features()

// Initializes terrain types. Uses a flyweight design to assign terrain attributes
// to Tiles.

// Global terrain IDs
globalvar terrain_types = ds_map_create();

terrain_types[? "grass"] = terrain_create("Grass", false, true);
