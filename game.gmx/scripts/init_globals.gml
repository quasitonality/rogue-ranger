///init_globals()
// ------------------------------------------------------------------------------------
// Variables declared in ALL CAPS are constant id values, and should NOT be changed!
// ------------------------------------------------------------------------------------

// ******************************* Structure Keys ********************************** //
// Used to access maps representing (non-GML) objects. Key Values may be duplicated
// only across (not within!) a map "type".
// ********************************************************************************* //

// ********************************* Universal ************************************* //

// These values may be defined for any map "type".
// They are defined as negative numbers to avoid conflicts.
globalvar NAME, XPOS, YPOS, TYPE_ID, DESCRIPTION;

NAME = -1;

XPOS = -2;
YPOS = -3

TYPE_ID = -4;

DESCRIPTION = -5

// ********************************** Humanoid ************************************* //

globalvar STR, DEX, END, INT, CHA, PER, STR_MAX, DEX_MAX, END_MAX, INT_MAX, CHA_MAX, PER_MAX,
        BLOOD, BLOOD_MAX, STAM, STAM_MAX, WEIGHT, NAME;

STR = 0;
DEX = 1;
END = 2;
INT = 3;
CHA = 4;
PER = 5;

STR_MAX = 6;
DEX_MAX = 7;
END_MAX = 8;
INT_MAX = 9;
CHA_MAX = 10;
PER_MAX = 11;

BLOOD = 12;
BLOOD_MAX = 13;
STAM = 14;
STAM_MAX = 15;

WEIGHT = 16;

// *********************************** Dungeon ************************************* //

globalvar LEVELS;

LEVELS = 0;

// ************************************ Chunk ************************************** //

globalvar TERRAIN, ACTORS, ITEMS;

TERRAIN = 0;
ACTORS = 1;
ITEMS = 2;

// ************************************ Tile *************************************** //

globalvar T_VISIBLE, T_EXPLORED;

T_VISIBLE = 0;
T_EXPLORED = 1;

// *********************************** TERRAIN ************************************* //

globalvar IS_SOLID, IS_CLEAR;

IS_SOLID = 0;
IS_CLEAR = 1;
