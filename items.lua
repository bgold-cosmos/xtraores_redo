

-----------------------bars--------------

minetest.register_craftitem('xtraores_redo:nickel_bar', {
		description = "".. core.colorize("#68fff6", "Nickel bar\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 1"),
	inventory_image = "xtraores_redo_nickel_bar.png",
	stack_max= 999,
})

minetest.register_craftitem('xtraores_redo:platinum_bar', {
		description = "".. core.colorize("#68fff6", "Platinum bar\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 2"),
	inventory_image = "xtraores_redo_platinum_bar.png",
	stack_max= 999,
})

minetest.register_craftitem('xtraores_redo:palladium_bar', {
		description = "".. core.colorize("#68fff6", "palladium bar\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 3"),
	inventory_image = "xtraores_redo_palladium_bar.png",
	stack_max= 999,
})

minetest.register_craftitem('xtraores_redo:cobalt_bar', {
		description = "".. core.colorize("#68fff6", "Cobalt bar\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 4"),
	inventory_image = "xtraores_redo_cobalt_bar.png",
	stack_max= 999,
})

minetest.register_craftitem('xtraores_redo:thorium_bar', {
		description = "".. core.colorize("#68fff6", "Thorium bar\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 5"),
	inventory_image = "xtraores_redo_thorium_bar.png",
	stack_max= 999,
})

minetest.register_craftitem('xtraores_redo:osmium_bar', {
		description = "".. core.colorize("#68fff6", "Osmium bar\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 6"),
	inventory_image = "xtraores_redo_osmium_bar.png",
	stack_max= 999,
})

minetest.register_craftitem('xtraores_redo:rhenium_bar', {
		description = "".. core.colorize("#68fff6", "Rhenium bar\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 7"),
	inventory_image = "xtraores_redo_rhenium_bar.png",
	stack_max= 999,
})

minetest.register_craftitem('xtraores_redo:vanadium_bar', {
		description = "".. core.colorize("#68fff6", "Vanadium bar\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 8"),
	inventory_image = "xtraores_redo_vanadium_bar.png",
	stack_max= 999,
})

minetest.register_craftitem('xtraores_redo:rarium_bar', {
		description = "".. core.colorize("#68fff6", "Rarium bar\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 9"),
	inventory_image = "xtraores_redo_rarium_bar.png",
	stack_max= 999,
})

minetest.register_craftitem('xtraores_redo:orichalcum_bar', {
		description = "".. core.colorize("#68fff6", "Orichalcum bar\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 10"),
	inventory_image = "xtraores_redo_orichalcum_bar.png",
	stack_max= 999,
})

minetest.register_craftitem('xtraores_redo:titanium_bar', {
		description = "".. core.colorize("#68fff6", "Titanium bar\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 11"),
	inventory_image = "xtraores_redo_titanium_bar.png",
	stack_max= 999,
})

minetest.register_craftitem('xtraores_redo:uranium_bar', {
		description = "".. core.colorize("#68fff6", "Uranium bar\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 11"),
	inventory_image = "xtraores_redo_uranium_bar.png",
	stack_max= 999,
})

minetest.register_craftitem('xtraores_redo:chromium_bar', {
		description = "".. core.colorize("#68fff6", "Chromium bar\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 12"),
	inventory_image = "xtraores_redo_chromium_bar.png",
	stack_max= 999,
})

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
		{'', 'xtraores_redo:osmium_bar', ''},
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

minetest.register_craftitem('xtraores_redo:cobalt_base', {
		description = "".. core.colorize("#68fff6", "Cobalt handgun base\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 4"),
	inventory_image = "xtraores_redo_cobalt_base.png",
	stack_max= 10,
})

minetest.register_craft({
	output = 'xtraores_redo:cobalt_base',
	recipe = {
		{'xtraores_redo:cobalt_bar', 'xtraores_redo:cobalt_bar', ''},
		{'xtraores_redo:cobalt_bar', 'xtraores_redo:cobalt_bar', 'xtraores_redo:cobalt_bar'},
		{'', 'xtraores_redo:cobalt_bar', ''},
	}
})

minetest.register_craftitem('xtraores_redo:cobalt_top', {
		description = "".. core.colorize("#68fff6", "Cobalt handgun top\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 4"),
	inventory_image = "xtraores_redo_cobalt_top.png",
	stack_max= 10,
})

minetest.register_craft({
	output = 'xtraores_redo:cobalt_top',
	recipe = {
		{'', '', 'xtraores_redo:cobalt_bar'},
		{'xtraores_redo:cobalt_bar', 'xtraores_redo:cobalt_bar', 'xtraores_redo:cobalt_bar'},
	}
})

minetest.register_craftitem('xtraores_redo:cobalt_handle', {
		description = "".. core.colorize("#68fff6", "Cobalt handgun handle\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 4"),
	inventory_image = "xtraores_redo_cobalt_handle.png",
	stack_max= 10,
})

minetest.register_craft({
	output = 'xtraores_redo:cobalt_handle',
	recipe = {
		{'xtraores_redo:cobalt_bar', 'default:coal_lump', 'default:coal_lump'},
		{'xtraores_redo:cobalt_bar', 'default:coal_lump', 'default:coal_lump'},
		{'xtraores_redo:cobalt_bar', 'xtraores_redo:cobalt_bar', 'xtraores_redo:cobalt_bar'},
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

--------------------titaniumgunparts-------------

minetest.register_craftitem('xtraores_redo:titanium_gun_barrel', {
		description = "".. core.colorize("#68fff6", "Titanium gun barrel\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 11"),
	inventory_image = "xtraores_redo_titanium_gun_barrel.png",
	stack_max= 10,
})

minetest.register_craft({
	output = "xtraores_redo:titanium_gun_barrel",
	recipe = {
	{"xtraores_redo:titanium_bar","xtraores_redo:titanium_bar","xtraores_redo:titanium_bar"},
	}
})

minetest.register_craftitem('xtraores_redo:titanium_handgun_base', {
		description = "".. core.colorize("#68fff6", "Titanium handgun base\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 11"),
	inventory_image = "xtraores_redo_titanium_handgun_base.png",
	stack_max= 10,
})

minetest.register_craft({
	output = "xtraores_redo:titanium_handgun_base",
	recipe = {
	{"xtraores_redo:titanium_bar","xtraores_redo:titanium_bar","xtraores_redo:titanium_bar"},
	{"xtraores_redo:titanium_bar","xtraores_redo:titanium_bar",""},
	}
})

minetest.register_craftitem('xtraores_redo:titanium_gun_handle', {
		description = "".. core.colorize("#68fff6", "Titanium gun handle\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 11"),
	inventory_image = "xtraores_redo_titanium_gun_handle.png",
	stack_max= 10,
})

minetest.register_craft({
	output = "xtraores_redo:titanium_gun_handle",
	recipe = {
	{"","xtraores_redo:titanium_bar","xtraores_redo:titanium_bar"},
	{"","","xtraores_redo:titanium_bar"},
	{"","","xtraores_redo:titanium_bar"},
	}
})

minetest.register_craftitem('xtraores_redo:titanium_machinegun_base', {
		description = "".. core.colorize("#68fff6", "Titanium machinegun base\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 11"),
	inventory_image = "xtraores_redo_titanium_machinegun_base.png",
	stack_max= 10,
})

minetest.register_craft({
	output = "xtraores_redo:titanium_machinegun_base",
	recipe = {
	{"xtraores_redo:titanium_bar","xtraores_redo:titanium_bar","xtraores_redo:titanium_bar"},
	{"xtraores_redo:titanium_bar","xtraores_redo:titanium_bar","xtraores_redo:titanium_bar"},
	{"","","xtraores_redo:titanium_bar"},
	}
})

minetest.register_craftitem('xtraores_redo:titanium_machinegun_stock', {
		description = "".. core.colorize("#68fff6", "Titanium machinegun stock\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 11"),
	inventory_image = "xtraores_redo_titanium_machinegun_stock.png",
	stack_max= 10,
})

minetest.register_craft({
	output = "xtraores_redo:titanium_machinegun_stock",
	recipe = {
	{"xtraores_redo:titanium_bar","xtraores_redo:titanium_bar","xtraores_redo:titanium_bar"},
	{"","","xtraores_redo:titanium_bar"},
	{"","","xtraores_redo:titanium_bar"},
	}
})

minetest.register_craftitem('xtraores_redo:titanium_machinegun_mag', {
		description = "".. core.colorize("#68fff6", "Titanium machinegun mag\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "Xtraores material level: 11"),
	inventory_image = "xtraores_redo_titanium_machinegun_mag.png",
	stack_max= 10,
})

minetest.register_craft({
	output = "xtraores_redo:titanium_machinegun_mag",
	recipe = {
	{"","xtraores_redo:titanium_bar","xtraores_redo:titanium_bar"},
	{"","xtraores_redo:titanium_bar","xtraores_redo:titanium_bar"},
	{"","","xtraores_redo:titanium_bar"},
	}
})
