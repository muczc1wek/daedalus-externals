// Vanilla G1 externals with docu comments for DLS implementation
//
// Source: https://github.com/muczc1wek/daedalus-externals

var C_NPC hero;
var C_NPC self;
var C_NPC other;
var C_NPC victim;
var C_ITEM item;
var instance NULL;
var instance instance_help;

/// TODO: Searches for a specific item (e.g., the golden sword of destruction, if available)
///
/// @param self instance of the NPC
/// @param instance int instance ID of the item
func void AI_LookForItem(var C_NPC self, var int instance) {};


// TODO: Add remaining functions