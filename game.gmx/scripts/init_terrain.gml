///init_terrain()

// Initializes terrain types. Uses a flyweight design to assign terrain attributes
// to Tiles.

// Global terrain IDs
globalvar GRASS;

GRASS = terrain_create("Grass", false, true);
