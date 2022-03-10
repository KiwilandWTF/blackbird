package us.jcedeno;

import org.bukkit.plugin.java.JavaPlugin;

import kr.entree.spigradle.annotations.SpigotPlugin;

/**
 * blackbird
 */
@SpigotPlugin
public class blackbird extends JavaPlugin {

    @Override
    public void onEnable() {
        System.out.println("test");
    }
}