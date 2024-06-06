import crafttweaker.api.bracket.BracketHandlers;
import crafttweaker.api.item.IItemStack;

# Remove the ProjectRed red alloy ingot, as the MoreRed red alloy ingot will be used instead
furnace.remove(<item:projectred_core:red_ingot>);
craftingTable.remove(<item:projectred_core:red_iron_comp>);

# Replace red alloy wire recipe
craftingTable.remove(<item:projectred_transmission:red_alloy_wire>);
craftingTable.addShaped("red_alloy_wire", <item:projectred_transmission:red_alloy_wire> * 12, [
    [<item:morered:red_alloy_ingot>],
    [<item:morered:red_alloy_ingot>],
    [<item:morered:red_alloy_ingot>]
]);

# Replace multimeter recipe
craftingTable.remove(<item:projectred_core:multimeter>);
craftingTable.addShaped("multimeter", <item:projectred_core:multimeter>, [
    [<item:morered:red_alloy_ingot>, <item:minecraft:air>, <item:morered:red_alloy_ingot>],
    [<item:minecraft:black_dye>, <item:minecraft:green_dye>, <item:minecraft:red_dye>],
    [<item:minecraft:black_dye>, <item:minecraft:glowstone_dust>, <item:minecraft:red_dye>]
]);

# Replace recipes for all the colored variants with
val colors = ["white", "orange", "magenta", "light_blue", "yellow", "lime", "pink", "gray", "light_gray", "cyan", "purple", "blue", "brown", "green", "red", "black"] as string[];
for color in colors {
    val wool = BracketHandlers.getItem("minecraft:" + color + "_wool") as IItemStack;
    val wire = BracketHandlers.getItem("projectred_transmission:" + color + "_insulated_wire");

    craftingTable.remove(wire);
    craftingTable.addShaped(color + "_insulated_wire", wire * 12, [
        [wool, <item:morered:red_alloy_ingot>, wool],
        [wool, <item:morered:red_alloy_ingot>, wool],
        [wool, <item:morered:red_alloy_ingot>, wool]
    ]);
}