

-----------------------bars--------------
local bar_levels = {
	Nickel    = 1,
	Platinum  = 2,
	Athenium = 3,
	Koblint    = 4,
	Ormium 	= 5,
	Varytrium	  = 6,
	Flumium 	= 7,
	Syrium  = 8,
	Zeltium    = 9,
	Orichalcum= 10,
	Tartarsium  = 11,
	Luminum   = 11,
	Tsevium  = 12,
}

local function register_xtrabar(name, level)
	local lcname = string.lower(name)
	minetest.register_craftitem('xtraores_redo:'.. lcname .. '_bar', {
		description = "".. core.colorize("#68fff6", name .. " bar\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: " .. level),
		inventory_image = "xtraores_redo_" .. lcname .. "_bar.png",
		stack_max= 999,
	})
end

for k,v in pairs(bar_levels) do
	register_xtrabar(k, v)
end


--------------------handles-------------

minetest.register_craftitem('xtraores_redo:steel_handle', {
		description = "".. core.colorize("#68fff6", "Steel handle\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 5-8"),
	inventory_image = "xtraores_redo_steel_handle.png",
	stack_max= 999,
})

minetest.register_craft({
	output = 'xtraores_redo:steel_handle 5',
	recipe = {
		{'', '', 'default:steel_ingot'},
		{'', 'default:steel_ingot', ''},
		{'default:steel_ingot', '', ''},
	}
})

minetest.register_craftitem('xtraores_redo:duraglass_handle', {
		description = "".. core.colorize("#68fff6", "Duraglass handle\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 9-12"),
	inventory_image = "xtraores_redo_duraglass_handle.png",
	stack_max= 999,
})

minetest.register_craft({
	output = 'xtraores_redo:duraglass_handle 3',
	recipe = {
		{'', '', 'default:obsidian_shard'},
		{'', 'xtraores_redo:varytrium_bar', ''},
		{'default:glass', '', ''},
	}
})

--------------------revolverparts-------------

minetest.register_craftitem('xtraores_redo:platinum_mag', {
		description = "".. core.colorize("#68fff6", "Platinum revolver magazine\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 2"),
	inventory_image = "xtraores_redo_platinum_mag.png",
	stack_max= 10,
})

minetest.register_craft({
	output = 'xtraores_redo:platinum_mag',
	recipe = {
		{'xtraores_redo:platinum_bar', 'xtraores_redo:platinum_bar', ''},
		{'xtraores_redo:platinum_bar', 'xtraores_redo:platinum_bar', ''},
		{'xtraores_redo:platinum_bar', 'xtraores_redo:platinum_bar', ''},
	}
})

minetest.register_craftitem('xtraores_redo:platinum_revolver_base', {
		description = "".. core.colorize("#68fff6", "Platinum revolver base\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 2"),
	inventory_image = "xtraores_redo_platinum_revolver_base.png",
	stack_max= 10,
})

minetest.register_craft({
	output = 'xtraores_redo:platinum_revolver_base',
	recipe = {
		{'xtraores_redo:platinum_bar', 'xtraores_redo:platinum_bar', 'xtraores_redo:platinum_bar'},
		{'', 'xtraores_redo:platinum_bar', 'xtraores_redo:platinum_bar'},
		{'', 'xtraores_redo:platinum_bar', ''},
	}
})

minetest.register_craftitem('xtraores_redo:revolver_handle', {
		description = "".. core.colorize("#68fff6", "Revolver handle\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 2"),
	inventory_image = "xtraores_redo_revolver_handle.png",
	stack_max= 10,
})

minetest.register_craft({
	output = 'xtraores_redo:revolver_handle',
	recipe = {
		{'', 'group:wood', 'group:wood'},
		{'', 'xtraores_redo:platinum_bar', 'group:wood'},
		{'', 'group:wood', 'group:wood'},
	}
})

--------------------handgunparts-------------

minetest.register_craftitem('xtraores_redo:koblint_base', {
		description = "".. core.colorize("#68fff6", "Koblint handgun base\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 4"),
	inventory_image = "xtraores_redo_koblint_base.png",
	stack_max= 10,
})

minetest.register_craft({
	output = 'xtraores_redo:koblint_base',
	recipe = {
		{'xtraores_redo:koblint_bar', 'xtraores_redo:koblint_bar', ''},
		{'xtraores_redo:koblint_bar', 'xtraores_redo:koblint_bar', 'xtraores_redo:koblint_bar'},
		{'', 'xtraores_redo:koblint_bar', ''},
	}
})

minetest.register_craftitem('xtraores_redo:koblint_top', {
		description = "".. core.colorize("#68fff6", "Koblint handgun top\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 4"),
	inventory_image = "xtraores_redo_koblint_top.png",
	stack_max= 10,
})

minetest.register_craft({
	output = 'xtraores_redo:koblint_top',
	recipe = {
		{'', '', 'xtraores_redo:koblint_bar'},
		{'xtraores_redo:koblint_bar', 'xtraores_redo:koblint_bar', 'xtraores_redo:koblint_bar'},
	}
})

minetest.register_craftitem('xtraores_redo:koblint_handle', {
		description = "".. core.colorize("#68fff6", "Koblint handgun handle\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 4"),
	inventory_image = "xtraores_redo_koblint_handle.png",
	stack_max= 10,
})

minetest.register_craft({
	output = 'xtraores_redo:koblint_handle',
	recipe = {
		{'xtraores_redo:koblint_bar', 'default:coal_lump', 'default:coal_lump'},
		{'xtraores_redo:koblint_bar', 'default:coal_lump', 'default:coal_lump'},
		{'xtraores_redo:koblint_bar', 'xtraores_redo:koblint_bar', 'xtraores_redo:koblint_bar'},
	}
})

--------------------orichalcum_rifle_parts-------------

minetest.register_craftitem('xtraores_redo:orichalcum_rifle_base', {
		description = "".. core.colorize("#68fff6", "orichalcum rifle base\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 10"),
	inventory_image = "xtraores_redo_orichalcum_rifle_base.png",
	stack_max= 10,
})

minetest.register_craft({
	output = 'xtraores_redo:orichalcum_rifle_base',
	recipe = {
		{'xtraores_redo:orichalcum_bar', 'xtraores_redo:orichalcum_bar', 'xtraores_redo:orichalcum_bar'},
		{'', 'xtraores_redo:orichalcum_bar', 'xtraores_redo:orichalcum_bar'},
	}
})


minetest.register_craftitem('xtraores_redo:orichalcum_rifle_scope', {
		description = "".. core.colorize("#68fff6", "orichalcum rifle scope\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 10"),
	inventory_image = "xtraores_redo_orichalcum_rifle_scope.png",
	stack_max= 10,
})

minetest.register_craft({
	output = 'xtraores_redo:orichalcum_rifle_scope',
	recipe = {
		{'xtraores_redo:orichalcum_bar', '', 'xtraores_redo:orichalcum_bar'},
		{'default:diamond', 'xtraores_redo:orichalcum_bar', 'default:diamond'},
		{'xtraores_redo:orichalcum_bar', '', 'xtraores_redo:orichalcum_bar'},
	}
})

minetest.register_craftitem('xtraores_redo:orichalcum_rifle_stock', {
		description = "".. core.colorize("#68fff6", "orichalcum rifle stock\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 10"),
	inventory_image = "xtraores_redo_orichalcum_rifle_stock.png",
	stack_max= 10,
})

minetest.register_craft({
	output = 'xtraores_redo:orichalcum_rifle_stock',
	recipe = {
		{'xtraores_redo:orichalcum_bar', 'xtraores_redo:orichalcum_bar', 'xtraores_redo:orichalcum_bar'},
		{'xtraores_redo:orichalcum_bar', '', 'xtraores_redo:orichalcum_bar'},
		{'', 'xtraores_redo:orichalcum_bar', 'xtraores_redo:orichalcum_bar'},
	}
})

minetest.register_craftitem('xtraores_redo:orichalcum_rifle_barrel', {
		description = "".. core.colorize("#68fff6", "orichalcum rifle barrel\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 10"),
	inventory_image = "xtraores_redo_orichalcum_rifle_barrel.png",
	stack_max= 10,
})

minetest.register_craft({
	output = 'xtraores_redo:orichalcum_rifle_barrel',
	recipe = {
		{'xtraores_redo:orichalcum_bar', 'xtraores_redo:orichalcum_bar', 'xtraores_redo:orichalcum_bar'},
	}
})

minetest.register_craftitem('xtraores_redo:orichalcum_rifle_grip', {
		description = "".. core.colorize("#68fff6", "orichalcum rifle grip\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 10"),
	inventory_image = "xtraores_redo_orichalcum_rifle_grip.png",
	stack_max= 10,
})

minetest.register_craft({
	output = 'xtraores_redo:orichalcum_rifle_grip',
	recipe = {
		{'xtraores_redo:orichalcum_bar', 'xtraores_redo:orichalcum_bar', 'xtraores_redo:orichalcum_bar'},
		{'xtraores_redo:orichalcum_bar', 'xtraores_redo:orichalcum_bar', 'xtraores_redo:orichalcum_bar'},
	}
})

minetest.register_craftitem('xtraores_redo:orichalcum_rifle_handle', {
		description = "".. core.colorize("#68fff6", "orichalcum rifle handle\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 10"),
	inventory_image = "xtraores_redo_orichalcum_rifle_handle.png",
	stack_max= 10,
})

minetest.register_craft({
	output = 'xtraores_redo:orichalcum_rifle_handle',
	recipe = {
		{'', 'xtraores_redo:orichalcum_bar', 'xtraores_redo:orichalcum_bar'},
		{'', '', 'xtraores_redo:orichalcum_bar'},
	}
})

--------------------tartarsiumgunparts-------------

minetest.register_craftitem('xtraores_redo:tartarsium_gun_barrel', {
		description = "".. core.colorize("#68fff6", "Tartarsium gun barrel\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 11"),
	inventory_image = "xtraores_redo_tartarsium_gun_barrel.png",
	stack_max= 10,
})

minetest.register_craft({
	output = "xtraores_redo:tartarsium_gun_barrel",
	recipe = {
	{"xtraores_redo:tartarsium_bar","xtraores_redo:tartarsium_bar","xtraores_redo:tartarsium_bar"},
	}
})

minetest.register_craftitem('xtraores_redo:tartarsium_handgun_base', {
		description = "".. core.colorize("#68fff6", "Tartarsium handgun base\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 11"),
	inventory_image = "xtraores_redo_tartarsium_handgun_base.png",
	stack_max= 10,
})

minetest.register_craft({
	output = "xtraores_redo:tartarsium_handgun_base",
	recipe = {
	{"xtraores_redo:tartarsium_bar","xtraores_redo:tartarsium_bar","xtraores_redo:tartarsium_bar"},
	{"xtraores_redo:tartarsium_bar","xtraores_redo:tartarsium_bar",""},
	}
})

minetest.register_craftitem('xtraores_redo:tartarsium_gun_handle', {
		description = "".. core.colorize("#68fff6", "Tartarsium gun handle\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 11"),
	inventory_image = "xtraores_redo_tartarsium_gun_handle.png",
	stack_max= 10,
})

minetest.register_craft({
	output = "xtraores_redo:tartarsium_gun_handle",
	recipe = {
	{"","xtraores_redo:tartarsium_bar","xtraores_redo:tartarsium_bar"},
	{"","","xtraores_redo:tartarsium_bar"},
	{"","","xtraores_redo:tartarsium_bar"},
	}
})

minetest.register_craftitem('xtraores_redo:tartarsium_machinegun_base', {
		description = "".. core.colorize("#68fff6", "Tartarsium machinegun base\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 11"),
	inventory_image = "xtraores_redo_tartarsium_machinegun_base.png",
	stack_max= 10,
})

minetest.register_craft({
	output = "xtraores_redo:tartarsium_machinegun_base",
	recipe = {
	{"xtraores_redo:tartarsium_bar","xtraores_redo:tartarsium_bar","xtraores_redo:tartarsium_bar"},
	{"xtraores_redo:tartarsium_bar","xtraores_redo:tartarsium_bar","xtraores_redo:tartarsium_bar"},
	{"","","xtraores_redo:tartarsium_bar"},
	}
})

minetest.register_craftitem('xtraores_redo:tartarsium_machinegun_stock', {
		description = "".. core.colorize("#68fff6", "Tartarsium machinegun stock\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 11"),
	inventory_image = "xtraores_redo_tartarsium_machinegun_stock.png",
	stack_max= 10,
})

minetest.register_craft({
	output = "xtraores_redo:tartarsium_machinegun_stock",
	recipe = {
	{"xtraores_redo:tartarsium_bar","xtraores_redo:tartarsium_bar","xtraores_redo:tartarsium_bar"},
	{"","","xtraores_redo:tartarsium_bar"},
	{"","","xtraores_redo:tartarsium_bar"},
	}
})

minetest.register_craftitem('xtraores_redo:tartarsium_machinegun_mag', {
		description = "".. core.colorize("#68fff6", "Tartarsium machinegun mag\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 11"),
	inventory_image = "xtraores_redo_tartarsium_machinegun_mag.png",
	stack_max= 10,
})

minetest.register_craft({
	output = "xtraores_redo:tartarsium_machinegun_mag",
	recipe = {
	{"","xtraores_redo:tartarsium_bar","xtraores_redo:tartarsium_bar"},
	{"","xtraores_redo:tartarsium_bar","xtraores_redo:tartarsium_bar"},
	{"","","xtraores_redo:tartarsium_bar"},
	}
})
