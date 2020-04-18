
if minetest.get_modpath("3d_armor") then

	local armor_table = {
		{name = "Nickel",    level=1,  protection=12, heal=0,  use=1200, speed=-0.01, gravity=0.01, jump=0.0},
		{name = "Platinum",  level=2,  protection=15, heal=6,  use=300,  speed=-0.01, gravity=-0.01,  jump=-0.01},
		{name = "Palladium", level=3,  protection=17, heal=9,  use=250,  speed=-0.01, gravity=0.0,  jump=0.0},
		{name = "Cobalt",    level=4,  protection=20, heal=12, use=120,  speed=-0.01, gravity=-0.02,  jump=0.0},
		{name = "Thorium",   level=5,  protection=20.4, heal=12.2, use=100,  speed= 0.11, gravity=0.0,  jump=0.03},
		{name = "Osmium",    level=6,  protection=20.6, heal=12.3, use= 60,  speed= 0.16, gravity=0.0,  jump=0.05},
		{name = "Rhenium",   level=7,  protection=20.8, heal=12.4, use= 40,  speed= 0.21, gravity=-0.01,  jump=0.08},
		{name = "Vanadium",  level=8,  protection=21.0, heal=12.5, use= 25,  speed= 0.25, gravity=-0.02,  jump=0.10},
		{name = "Rarium",    level=9,  protection=21.2, heal=12.6, use= 20,  speed= 0.29, gravity=-0.03,  jump=0.12},
		{name = "Orichalcum",level=10, protection=21.4, heal=12.7, use= 17,  speed= 0.33, gravity=-0.04,  jump=0.14},
		{name = "Titanium",  level=11, protection=21.5, heal=12.8, use= 15,  speed= 0.34, gravity=-0.045, jump=0.15},
		{name = "Chromium",  level=12, protection=21.6, heal=12.9, use= 14,  speed= 0.35, gravity=-0.05,  jump=0.16},
	}

	local armor_names = {
		Nickel = {helmet="helm", chestplate="chestguard", leggings="leg protectors", boots="boots", shield="buckler"},
		Platinum = {helmet="chain-helm", chestplate="chainmail", leggings="leggings", boots="chained boots", shield="small-shield"},
		Palladium = {helmet="helmet", chestplate="platemail", leggings="leggings", boots="boots", shield="shield"},
		Cobalt = {helmet="helmet", chestplate="platemail", leggings="leggings", boots="boots", shield="shield"},
		Thorium = {helmet="helmet", chestplate="platemail", leggings="leggings", boots="boots", shield="shield"},
		Osmium = {helmet="helmet", chestplate="platemail", leggings="leggings", boots="boots", shield="shield"},
		Rhenium = {helmet="helmet", chestplate="platemail", leggings="leggings", boots="boots", shield="shield"},
		Vanadium = {helmet="helmet", chestplate="platemail", leggings="leggings", boots="boots", shield="shield"},
 		Rarium = {helmet="heavy-helm", chestplate="heavy-platemail", leggings="heavy-leggings", boots="heavy-boots", shield="heavy-shield"},
 		Orichalcum = {helmet="heavy-helm", chestplate="heavy-platemail", leggings="heavy-leggings", boots="heavy-boots", shield="heavy-shield"},
 		Titanium = {helmet="heavy-helm", chestplate="heavy-platemail", leggings="heavy-leggings", boots="heavy-boots", shield="heavy-shield"},
 		Chromium = {helmet="heavy-helm", chestplate="heavy-platemail", leggings="heavy-leggings", boots="heavy-boots", shield="heavy-shield"},
	}

	local function register_xtraarmor(a)
		local lcname = string.lower(a.name)
		local barname = 'xtraores_redo:'..lcname..'_bar'

		local function describe(piecename, a, isbig)
			local prot = 0
			if isbig then prot = a.protection else prot = a.protection - 5 end
			return "".. core.colorize("#68fff6", a.name .. " " .. piecename .. "\n")
				.. core.colorize("#FFFFFF", "Protection: ".. prot .. "%\n")
				.. core.colorize("#FFFFFF", "Heal chance: ".. a.heal .."%\n")
				.. core.colorize("#FFFFFF", "Speed bonus: ".. a.speed * 100 .. "%\n")
				.. core.colorize("#FFFFFF", "Jump bonus: ".. a.jump * 100 .. "%\n")
				.. core.colorize("#FFFFFF", "Gravity bonus: ".. a.gravity * 100 .. "%\n")
				.. core.colorize("#FFFFFF", "Xtraores armor level: ".. a.level)
		end

		local pieces = {
			helmet = {prot=a.protection-5, piece_group='armor_head', descname=armor_names[a.name].helmet,
				recipe={{barname, barname, barname},{barname, '', barname},{'', '', ''}} },
			chestplate = {prot=a.protection, piece_group='armor_torso', descname=armor_names[a.name].chestplate, isbig=true,
				recipe = {{barname, '', barname},{barname, barname, barname},{barname, barname, barname}} },
			leggings = {prot=a.protection, piece_group='armor_legs', descname=armor_names[a.name].leggings, isbig=true,
				recipe={{barname, barname, barname},{barname, '', barname},{barname, '', barname}} },
			boots = {prot=a.protection-5, piece_group='armor_feet', descname=armor_names[a.name].boots,
				recipe={{'','',''},{barname, '', barname},{barname, '', barname}} },
			shield = {prot=a.protection-5, piece_group='armor_shield', descname=armor_names[a.name].shield,
				recipe={{barname, barname, barname},{barname, barname, barname},{'', barname, ''}} },
		}

		for piece, vars in pairs(pieces) do
			local agroups = {armor_heal=a.heal, armor_use=a.use, physics_speed=a.speed, physics_jump=a.jump, physics_gravity=a.gravity}

			agroups[vars.piece_group] = 1

			armor:register_armor("xtraores_redo:"..piece.."_" .. lcname, {
				description = describe(vars.descname, a, vars.isbig),
				inventory_image = "xtraores_redo_inv_"..piece.."_" .. lcname .. ".png",
				groups = agroups,
				armor_groups = {fleshy=vars.prot},
				damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
			})

			minetest.register_craft({
				output = 'xtraores_redo:'..piece..'_'..lcname,
				recipe = vars.recipe
			})
		end
	end

	for i,a in ipairs(armor_table) do
		register_xtraarmor(a)
	end
end
