import crafttweaker.api.bracket.BracketHandlers;

furnace.remove(<item:projectred_core:electrotine_silicon>);
craftingTable.remove(<item:projectred_core:electrotine_silicon_comp>);

craftingTable.remove(<item:projectred_core:motor>);
craftingTable.remove(<item:projectred_core:draw_plate>);
for metal in ["copper", "iron", "gold"] as string[] {
    craftingTable.remove(BracketHandlers.getItem("projectred_core:" + metal + "_coil"));
}

craftingTable.remove(<item:projectred_core:sail>);
craftingTable.remove(<item:projectred_core:woven_cloth>);