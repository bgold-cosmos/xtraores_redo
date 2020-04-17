if minetest.get_modpath("awards") then
local S = awards.gettext



		awards.register_award("platinum_crusaders", {
			title = S("Platinum Crusaders"),
			description = S("Dig 1337 platinum ores."),
			icon = "xtraores_redo_award_platinumcrusaders.png",
			trigger = {
				type = "dig",
				node = "xtraores_redo:platinum_ore",
				target = 1337
			}
		})
end
