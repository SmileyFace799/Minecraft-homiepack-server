# Add dust recipe
craftingTable.addShapeless("electrotine_dust", <item:projectred_core:electrotine_dust>, [
    <item:minecraft:redstone>, <item:minecraft:lapis_lazuli>
]);

# Add new ingot recipe, and remove old one
furnace.remove(<item:projectred_core:electrotine_ingot>);
craftingTable.remove(<item:projectred_core:electrotine_iron_comp>);
craftingTable.addShapeless("electrotine_ingot", <item:projectred_core:electrotine_ingot>, [
    <tag:items:morered:red_alloyable_ingots>, <item:projectred_core:electrotine_dust>, <item:projectred_core:electrotine_dust>,
    <item:projectred_core:electrotine_dust>, <item:projectred_core:electrotine_dust>
]);