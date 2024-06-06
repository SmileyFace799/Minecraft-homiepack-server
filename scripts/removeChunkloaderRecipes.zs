import crafttweaker.api.bracket.BracketHandlers;
import crafttweaker.api.item.IItemStack;

for tier in ["single", "basic", "advanced", "ultimate"] as string[] {
    val loader = BracketHandlers.getItem("chunkloaders:" + tier + "_chunk_loader") as IItemStack;
    loader.addTooltip("Distributed by server host - Ask Sigve for one of these");
    craftingTable.remove(loader);
}