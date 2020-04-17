-----nickel--------

minetest.register_node("xtraores_redo:brick_nickel", {
		description = "" ..core.colorize("#68fff6", "Nickel brick\n")..core.colorize("#FFFFFF", "Can be placed\n")..core.colorize("#FFFFFF", "Material"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"xtraores_redo_brick_nickel.png"},
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft( {
	type = "shapeless",
	output = "xtraores_redo:brick_nickel",
	recipe = {"xtraores_redo:nickel_ore", "default:cobble"},
})

minetest.register_node("xtraores_redo:block_nickel", {
		description = "" ..core.colorize("#68fff6", "Nickel block\n")..core.colorize("#FFFFFF", "Can be placed\n")..core.colorize("#FFFFFF", "Material"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"xtraores_redo_block_nickel.png"},
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = 'xtraores_redo:block_nickel',
	recipe = {
		{'xtraores_redo:nickel_bar', 'xtraores_redo:nickel_bar', 'xtraores_redo:nickel_bar'},
		{'xtraores_redo:nickel_bar', 'xtraores_redo:nickel_bar', 'xtraores_redo:nickel_bar'},
		{'xtraores_redo:nickel_bar', 'xtraores_redo:nickel_bar', 'xtraores_redo:nickel_bar'},
	}
})

minetest.register_craft({
	output = 'xtraores_redo:nickel_bar 9',
	recipe = {
		{'xtraores_redo:block_nickel'},
	}
})
minetest.register_node("xtraores_redo:decobrick_nickel", {
		description = "" ..core.colorize("#68fff6", "Decorative Nickel brick\n")..core.colorize("#FFFFFF", "Can be placed"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"xtraores_redo_decobrick_nickel.png"},
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'xtraores_redo:decobrick_nickel 4',
	recipe = {
		{'xtraores_redo:brick_nickel', 'xtraores_redo:brick_nickel', ''},
		{'xtraores_redo:brick_nickel', 'xtraores_redo:brick_nickel', ''},

	}
})

-----platinum--------

minetest.register_node("xtraores_redo:brick_platinum", {
		description = "" ..core.colorize("#68fff6", "Platinum brick\n")..core.colorize("#FFFFFF", "Can be placed\n")..core.colorize("#FFFFFF", "Material"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"xtraores_redo_brick_platinum.png"},
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft( {
	type = "shapeless",
	output = "xtraores_redo:brick_platinum",
	recipe = {"xtraores_redo:platinum_ore", "default:cobble"},
})

minetest.register_node("xtraores_redo:block_platinum", {
		description = "" ..core.colorize("#68fff6", "Platinum block\n")..core.colorize("#FFFFFF", "Can be placed\n")..core.colorize("#FFFFFF", "Material"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"xtraores_redo_block_platinum.png"},
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = 'xtraores_redo:block_platinum',
	recipe = {
		{'xtraores_redo:platinum_bar', 'xtraores_redo:platinum_bar', 'xtraores_redo:platinum_bar'},
		{'xtraores_redo:platinum_bar', 'xtraores_redo:platinum_bar', 'xtraores_redo:platinum_bar'},
		{'xtraores_redo:platinum_bar', 'xtraores_redo:platinum_bar', 'xtraores_redo:platinum_bar'},
	}
})

minetest.register_craft({
	output = 'xtraores_redo:platinum_bar 9',
	recipe = {
		{'xtraores_redo:block_platinum'},
	}
})
minetest.register_node("xtraores_redo:decobrick_platinum", {
		description = "" ..core.colorize("#68fff6", "Decorative platinum brick\n")..core.colorize("#FFFFFF", "Can be placed"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"xtraores_redo_decobrick_platinum.png"},
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'xtraores_redo:decobrick_platinum 4',
	recipe = {
		{'xtraores_redo:brick_platinum', 'xtraores_redo:brick_platinum', ''},
		{'xtraores_redo:brick_platinum', 'xtraores_redo:brick_platinum', ''},

	}
})

-----palladium--------

minetest.register_node("xtraores_redo:brick_palladium", {
		description = "" ..core.colorize("#68fff6", "palladium brick\n")..core.colorize("#FFFFFF", "Can be placed\n")..core.colorize("#FFFFFF", "Material"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"xtraores_redo_brick_palladium.png"},
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft( {
	type = "shapeless",
	output = "xtraores_redo:brick_palladium",
	recipe = {"xtraores_redo:palladium_ore", "default:cobble"},
})

minetest.register_node("xtraores_redo:block_palladium", {
		description = "" ..core.colorize("#68fff6", "palladium block\n")..core.colorize("#FFFFFF", "Can be placed\n")..core.colorize("#FFFFFF", "Material"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"xtraores_redo_block_palladium.png"},
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = 'xtraores_redo:block_palladium',
	recipe = {
		{'xtraores_redo:palladium_bar', 'xtraores_redo:palladium_bar', 'xtraores_redo:palladium_bar'},
		{'xtraores_redo:palladium_bar', 'xtraores_redo:palladium_bar', 'xtraores_redo:palladium_bar'},
		{'xtraores_redo:palladium_bar', 'xtraores_redo:palladium_bar', 'xtraores_redo:palladium_bar'},
	}
})

minetest.register_craft({
	output = 'xtraores_redo:palladium_bar 9',
	recipe = {
		{'xtraores_redo:block_palladium'},
	}
})
minetest.register_node("xtraores_redo:decobrick_palladium", {
		description = "" ..core.colorize("#68fff6", "Decorative palladium brick\n")..core.colorize("#FFFFFF", "Can be placed"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"xtraores_redo_decobrick_palladium.png"},
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'xtraores_redo:decobrick_palladium 4',
	recipe = {
		{'xtraores_redo:brick_palladium', 'xtraores_redo:brick_palladium', ''},
		{'xtraores_redo:brick_palladium', 'xtraores_redo:brick_palladium', ''},

	}
})

-----cobalt--------

minetest.register_node("xtraores_redo:brick_cobalt", {
		description = "" ..core.colorize("#68fff6", "cobalt brick\n")..core.colorize("#FFFFFF", "Can be placed\n")..core.colorize("#FFFFFF", "Material"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"xtraores_redo_brick_cobalt.png"},
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 4},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft( {
	type = "shapeless",
	output = "xtraores_redo:brick_cobalt",
	recipe = {"xtraores_redo:cobalt_ore", "default:cobble"},
})

minetest.register_node("xtraores_redo:block_cobalt", {
		description = "" ..core.colorize("#68fff6", "cobalt block\n")..core.colorize("#FFFFFF", "Can be placed\n")..core.colorize("#FFFFFF", "Material"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"xtraores_redo_block_cobalt.png"},
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 4},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = 'xtraores_redo:block_cobalt',
	recipe = {
		{'xtraores_redo:cobalt_bar', 'xtraores_redo:cobalt_bar', 'xtraores_redo:cobalt_bar'},
		{'xtraores_redo:cobalt_bar', 'xtraores_redo:cobalt_bar', 'xtraores_redo:cobalt_bar'},
		{'xtraores_redo:cobalt_bar', 'xtraores_redo:cobalt_bar', 'xtraores_redo:cobalt_bar'},
	}
})

minetest.register_craft({
	output = 'xtraores_redo:cobalt_bar 9',
	recipe = {
		{'xtraores_redo:block_cobalt'},
	}
})
minetest.register_node("xtraores_redo:decobrick_cobalt", {
		description = "" ..core.colorize("#68fff6", "Decorative cobalt brick\n")..core.colorize("#FFFFFF", "Can be placed"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"xtraores_redo_decobrick_cobalt.png"},
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 4},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'xtraores_redo:decobrick_cobalt 4',
	recipe = {
		{'xtraores_redo:brick_cobalt', 'xtraores_redo:brick_cobalt', ''},
		{'xtraores_redo:brick_cobalt', 'xtraores_redo:brick_cobalt', ''},

	}
})

-----thorium--------

minetest.register_node("xtraores_redo:brick_thorium", {
		description = "" ..core.colorize("#68fff6", "thorium brick\n")..core.colorize("#FFFFFF", "Can be placed\n")..core.colorize("#FFFFFF", "Material"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"xtraores_redo_brick_thorium.png"},
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 5},
	on_blast = function() end,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft( {
	type = "shapeless",
	output = "xtraores_redo:brick_thorium",
	recipe = {"xtraores_redo:thorium_ore", "default:cobble"},
})

minetest.register_node("xtraores_redo:block_thorium", {
		description = "" ..core.colorize("#68fff6", "thorium block\n")..core.colorize("#FFFFFF", "Can be placed\n")..core.colorize("#FFFFFF", "Material"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"xtraores_redo_block_thorium.png"},
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 5},
	on_blast = function() end,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = 'xtraores_redo:block_thorium',
	recipe = {
		{'xtraores_redo:thorium_bar', 'xtraores_redo:thorium_bar', 'xtraores_redo:thorium_bar'},
		{'xtraores_redo:thorium_bar', 'xtraores_redo:thorium_bar', 'xtraores_redo:thorium_bar'},
		{'xtraores_redo:thorium_bar', 'xtraores_redo:thorium_bar', 'xtraores_redo:thorium_bar'},
	}
})

minetest.register_craft({
	output = 'xtraores_redo:thorium_bar 9',
	recipe = {
		{'xtraores_redo:block_thorium'},
	}
})
minetest.register_node("xtraores_redo:decobrick_thorium", {
		description = "" ..core.colorize("#68fff6", "Decorative thorium brick\n")..core.colorize("#FFFFFF", "Can be placed"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"xtraores_redo_decobrick_thorium.png"},
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 5},
	on_blast = function() end,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'xtraores_redo:decobrick_thorium 4',
	recipe = {
		{'xtraores_redo:brick_thorium', 'xtraores_redo:brick_thorium', ''},
		{'xtraores_redo:brick_thorium', 'xtraores_redo:brick_thorium', ''},

	}
})

-----osmium--------

minetest.register_node("xtraores_redo:brick_osmium", {
		description = "" ..core.colorize("#68fff6", "Osmium brick\n")..core.colorize("#FFFFFF", "Can be placed\n")..core.colorize("#FFFFFF", "Material"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"xtraores_redo_brick_osmium.png"},
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 6},
	on_blast = function() end,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft( {
	type = "shapeless",
	output = "xtraores_redo:brick_osmium",
	recipe = {"xtraores_redo:osmium_ore", "default:cobble"},
})

minetest.register_node("xtraores_redo:block_osmium", {
		description = "" ..core.colorize("#68fff6", "Osmium block\n")..core.colorize("#FFFFFF", "Can be placed\n")..core.colorize("#FFFFFF", "Material"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"xtraores_redo_block_osmium.png"},
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 6},
	on_blast = function() end,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = 'xtraores_redo:block_osmium',
	recipe = {
		{'xtraores_redo:osmium_bar', 'xtraores_redo:osmium_bar', 'xtraores_redo:osmium_bar'},
		{'xtraores_redo:osmium_bar', 'xtraores_redo:osmium_bar', 'xtraores_redo:osmium_bar'},
		{'xtraores_redo:osmium_bar', 'xtraores_redo:osmium_bar', 'xtraores_redo:osmium_bar'},
	}
})

minetest.register_craft({
	output = 'xtraores_redo:osmium_bar 9',
	recipe = {
		{'xtraores_redo:block_osmium'},
	}
})
minetest.register_node("xtraores_redo:decobrick_osmium", {
		description = "" ..core.colorize("#68fff6", "Decorative Osmium brick\n")..core.colorize("#FFFFFF", "Can be placed"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"xtraores_redo_decobrick_osmium.png"},
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 6},
	on_blast = function() end,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'xtraores_redo:decobrick_osmium 4',
	recipe = {
		{'xtraores_redo:brick_osmium', 'xtraores_redo:brick_osmium', ''},
		{'xtraores_redo:brick_osmium', 'xtraores_redo:brick_osmium', ''},

	}
})

-----rhenium--------

minetest.register_node("xtraores_redo:brick_rhenium", {
		description = "" ..core.colorize("#68fff6", "Rhenium brick\n")..core.colorize("#FFFFFF", "Can be placed\n")..core.colorize("#FFFFFF", "Material"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"xtraores_redo_brick_rhenium.png"},
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 7},
	on_blast = function() end,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft( {
	type = "shapeless",
	output = "xtraores_redo:brick_rhenium",
	recipe = {"xtraores_redo:rhenium_ore", "default:cobble"},
})

minetest.register_node("xtraores_redo:block_rhenium", {
		description = "" ..core.colorize("#68fff6", "Rhenium block\n")..core.colorize("#FFFFFF", "Can be placed\n")..core.colorize("#FFFFFF", "Material"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"xtraores_redo_block_rhenium.png"},
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 7},
	on_blast = function() end,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = 'xtraores_redo:block_rhenium',
	recipe = {
		{'xtraores_redo:rhenium_bar', 'xtraores_redo:rhenium_bar', 'xtraores_redo:rhenium_bar'},
		{'xtraores_redo:rhenium_bar', 'xtraores_redo:rhenium_bar', 'xtraores_redo:rhenium_bar'},
		{'xtraores_redo:rhenium_bar', 'xtraores_redo:rhenium_bar', 'xtraores_redo:rhenium_bar'},
	}
})

minetest.register_craft({
	output = 'xtraores_redo:rhenium_bar 9',
	recipe = {
		{'xtraores_redo:block_rhenium'},
	}
})
minetest.register_node("xtraores_redo:decobrick_rhenium", {
		description = "" ..core.colorize("#68fff6", "Decorative Rhenium brick\n")..core.colorize("#FFFFFF", "Can be placed"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"xtraores_redo_decobrick_rhenium.png"},
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 7},
	on_blast = function() end,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'xtraores_redo:decobrick_rhenium 4',
	recipe = {
		{'xtraores_redo:brick_rhenium', 'xtraores_redo:brick_rhenium', ''},
		{'xtraores_redo:brick_rhenium', 'xtraores_redo:brick_rhenium', ''},

	}
})

-----vanadium--------

minetest.register_node("xtraores_redo:brick_vanadium", {
		description = "" ..core.colorize("#68fff6", "Vanadium brick\n")..core.colorize("#FFFFFF", "Can be placed\n")..core.colorize("#FFFFFF", "Material"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"xtraores_redo_brick_vanadium.png"},
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 8},
	on_blast = function() end,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft( {
	type = "shapeless",
	output = "xtraores_redo:brick_vanadium",
	recipe = {"xtraores_redo:vanadium_ore", "default:cobble"},
})

minetest.register_node("xtraores_redo:block_vanadium", {
		description = "" ..core.colorize("#68fff6", "Vanadium block\n")..core.colorize("#FFFFFF", "Can be placed\n")..core.colorize("#FFFFFF", "Material"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"xtraores_redo_block_vanadium.png"},
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 8},
	on_blast = function() end,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = 'xtraores_redo:block_vanadium',
	recipe = {
		{'xtraores_redo:vanadium_bar', 'xtraores_redo:vanadium_bar', 'xtraores_redo:vanadium_bar'},
		{'xtraores_redo:vanadium_bar', 'xtraores_redo:vanadium_bar', 'xtraores_redo:vanadium_bar'},
		{'xtraores_redo:vanadium_bar', 'xtraores_redo:vanadium_bar', 'xtraores_redo:vanadium_bar'},
	}
})

minetest.register_craft({
	output = 'xtraores_redo:vanadium_bar 9',
	recipe = {
		{'xtraores_redo:block_vanadium'},
	}
})
minetest.register_node("xtraores_redo:decobrick_vanadium", {
		description = "" ..core.colorize("#68fff6", "Decorative Vanadium brick\n")..core.colorize("#FFFFFF", "Can be placed"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"xtraores_redo_decobrick_vanadium.png"},
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 8},
	on_blast = function() end,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'xtraores_redo:decobrick_vanadium 4',
	recipe = {
		{'xtraores_redo:brick_vanadium', 'xtraores_redo:brick_vanadium', ''},
		{'xtraores_redo:brick_vanadium', 'xtraores_redo:brick_vanadium', ''},

	}
})

-----rarium--------

minetest.register_node("xtraores_redo:brick_rarium", {
		description = "" ..core.colorize("#68fff6", "rarium brick\n")..core.colorize("#FFFFFF", "Can be placed\n")..core.colorize("#FFFFFF", "Material"),
	tiles = {{
		    name = "xtraores_redo_brick_rarium.png",
		    animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 0.66}
	}},
	paramtype2 = "facedir",
	place_param2 = 0,
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 9},
	light_source = 5,
	on_blast = function() end,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft( {
	type = "shapeless",
	output = "xtraores_redo:brick_rarium",
	recipe = {"xtraores_redo:rarium_ore", "default:cobble"},
})

minetest.register_node("xtraores_redo:block_rarium", {
		description = "" ..core.colorize("#68fff6", "rarium block\n")..core.colorize("#FFFFFF", "Can be placed\n")..core.colorize("#FFFFFF", "Material"),
	tiles = {{
		    name = "xtraores_redo_block_rarium.png",
		    animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 0.66}
	}},
	paramtype2 = "facedir",
	place_param2 = 0,
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 9},
	light_source = 5,
	on_blast = function() end,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = 'xtraores_redo:block_rarium',
	recipe = {
		{'xtraores_redo:rarium_bar', 'xtraores_redo:rarium_bar', 'xtraores_redo:rarium_bar'},
		{'xtraores_redo:rarium_bar', 'xtraores_redo:rarium_bar', 'xtraores_redo:rarium_bar'},
		{'xtraores_redo:rarium_bar', 'xtraores_redo:rarium_bar', 'xtraores_redo:rarium_bar'},
	}
})

minetest.register_craft({
	output = 'xtraores_redo:rarium_bar 9',
	recipe = {
		{'xtraores_redo:block_rarium'},
	}
})
minetest.register_node("xtraores_redo:decobrick_rarium", {
		description = "" ..core.colorize("#68fff6", "Decorative rarium brick\n")..core.colorize("#FFFFFF", "Can be placed"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {{
		    name = "xtraores_redo_decobrick_rarium.png",
		    animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 0.66}
	}},
	is_ground_content = false,
	light_source = 5,
	stack_max= 999,
	groups = {cracky = 9},
	on_blast = function() end,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'xtraores_redo:decobrick_rarium 4',
	recipe = {
		{'xtraores_redo:brick_rarium', 'xtraores_redo:brick_rarium', ''},
		{'xtraores_redo:brick_rarium', 'xtraores_redo:brick_rarium', ''},

	}
})

-----orichalcum--------

minetest.register_node("xtraores_redo:brick_orichalcum", {
		description = "" ..core.colorize("#68fff6", "orichalcum brick\n")..core.colorize("#FFFFFF", "Can be placed\n")..core.colorize("#FFFFFF", "Material"),
	tiles = {"xtraores_redo_brick_orichalcum.png"},
	paramtype2 = "facedir",
	place_param2 = 0,
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 10},
	on_blast = function() end,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft( {
	type = "shapeless",
	output = "xtraores_redo:brick_orichalcum",
	recipe = {"xtraores_redo:orichalcum_ore", "default:cobble"},
})

minetest.register_node("xtraores_redo:block_orichalcum", {
		description = "" ..core.colorize("#68fff6", "orichalcum block\n")..core.colorize("#FFFFFF", "Can be placed\n")..core.colorize("#FFFFFF", "Material"),
	tiles = {"xtraores_redo_block_orichalcum.png"},
	paramtype2 = "facedir",
	place_param2 = 0,
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 10},
	on_blast = function() end,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = 'xtraores_redo:block_orichalcum',
	recipe = {
		{'xtraores_redo:orichalcum_bar', 'xtraores_redo:orichalcum_bar', 'xtraores_redo:orichalcum_bar'},
		{'xtraores_redo:orichalcum_bar', 'xtraores_redo:orichalcum_bar', 'xtraores_redo:orichalcum_bar'},
		{'xtraores_redo:orichalcum_bar', 'xtraores_redo:orichalcum_bar', 'xtraores_redo:orichalcum_bar'},
	}
})

minetest.register_craft({
	output = 'xtraores_redo:orichalcum_bar 9',
	recipe = {
		{'xtraores_redo:block_orichalcum'},
	}
})
minetest.register_node("xtraores_redo:decobrick_orichalcum", {
		description = "" ..core.colorize("#68fff6", "Decorative orichalcum brick\n")..core.colorize("#FFFFFF", "Can be placed"),
	tiles = {"xtraores_redo_decobrick_orichalcum.png"},
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 10},
	on_blast = function() end,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'xtraores_redo:decobrick_orichalcum 4',
	recipe = {
		{'xtraores_redo:brick_orichalcum', 'xtraores_redo:brick_orichalcum', ''},
		{'xtraores_redo:brick_orichalcum', 'xtraores_redo:brick_orichalcum', ''},

	}
})

-----titanium--------

minetest.register_node("xtraores_redo:brick_titanium", {
		description = "" ..core.colorize("#68fff6", "titanium brick\n")..core.colorize("#FFFFFF", "Can be placed\n")..core.colorize("#FFFFFF", "Material"),
	tiles = {"xtraores_redo_brick_titanium.png"},
	paramtype2 = "facedir",
	place_param2 = 0,
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 11},
	on_blast = function() end,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft( {
	type = "shapeless",
	output = "xtraores_redo:brick_titanium",
	recipe = {"xtraores_redo:titanium_ore", "default:cobble"},
})

minetest.register_node("xtraores_redo:block_titanium", {
		description = "" ..core.colorize("#68fff6", "titanium block\n")..core.colorize("#FFFFFF", "Can be placed\n")..core.colorize("#FFFFFF", "Material"),
	tiles = {"xtraores_redo_block_titanium.png"},
	paramtype2 = "facedir",
	place_param2 = 0,
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 11},
	on_blast = function() end,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = 'xtraores_redo:block_titanium',
	recipe = {
		{'xtraores_redo:titanium_bar', 'xtraores_redo:titanium_bar', 'xtraores_redo:titanium_bar'},
		{'xtraores_redo:titanium_bar', 'xtraores_redo:titanium_bar', 'xtraores_redo:titanium_bar'},
		{'xtraores_redo:titanium_bar', 'xtraores_redo:titanium_bar', 'xtraores_redo:titanium_bar'},
	}
})

minetest.register_craft({
	output = 'xtraores_redo:titanium_bar 9',
	recipe = {
		{'xtraores_redo:block_titanium'},
	}
})
minetest.register_node("xtraores_redo:decobrick_titanium", {
		description = "" ..core.colorize("#68fff6", "Decorative titanium brick\n")..core.colorize("#FFFFFF", "Can be placed"),
	tiles = {"xtraores_redo_decobrick_titanium.png"},
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 11},
	on_blast = function() end,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'xtraores_redo:decobrick_titanium 4',
	recipe = {
		{'xtraores_redo:brick_titanium', 'xtraores_redo:brick_titanium', ''},
		{'xtraores_redo:brick_titanium', 'xtraores_redo:brick_titanium', ''},

	}
})

-----uranium--------

minetest.register_node("xtraores_redo:brick_uranium", {
		description = "" ..core.colorize("#68fff6", "uranium brick\n")..core.colorize("#FFFFFF", "Can be placed\n")..core.colorize("#FFFFFF", "Material"),
	tiles = {{
		    name = "xtraores_redo_brick_uranium.png",
		    animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 0.75}
	}},
	paramtype2 = "facedir",
	place_param2 = 0,
	light_source = 10,
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 11},
	on_blast = function() end,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft( {
	type = "shapeless",
	output = "xtraores_redo:brick_uranium",
	recipe = {"xtraores_redo:uranium_ore", "default:cobble"},
})

minetest.register_node("xtraores_redo:block_uranium", {
		description = "" ..core.colorize("#68fff6", "uranium block\n")..core.colorize("#FFFFFF", "Can be placed\n")..core.colorize("#FFFFFF", "Material"),
	tiles = {{
		    name = "xtraores_redo_block_uranium.png",
		    animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 0.75}
	}},
	paramtype2 = "facedir",
	place_param2 = 0,
	is_ground_content = false,
	stack_max= 999,
	light_source = 14,
	groups = {cracky = 11},
	on_blast = function() end,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = 'xtraores_redo:block_uranium',
	recipe = {
		{'xtraores_redo:uranium_bar', 'xtraores_redo:uranium_bar', 'xtraores_redo:uranium_bar'},
		{'xtraores_redo:uranium_bar', 'xtraores_redo:uranium_bar', 'xtraores_redo:uranium_bar'},
		{'xtraores_redo:uranium_bar', 'xtraores_redo:uranium_bar', 'xtraores_redo:uranium_bar'},
	}
})

minetest.register_craft({
	output = 'xtraores_redo:uranium_bar 9',
	recipe = {
		{'xtraores_redo:block_uranium'},
	}
})
minetest.register_node("xtraores_redo:decobrick_uranium", {
		description = "" ..core.colorize("#68fff6", "Decorative uranium brick\n")..core.colorize("#FFFFFF", "Can be placed"),
	tiles = {{
		    name = "xtraores_redo_decobrick_uranium.png",
		    animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 0.75}
	}},
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 11},
	light_source = 8,
	on_blast = function() end,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'xtraores_redo:decobrick_uranium 4',
	recipe = {
		{'xtraores_redo:brick_uranium', 'xtraores_redo:brick_uranium', ''},
		{'xtraores_redo:brick_uranium', 'xtraores_redo:brick_uranium', ''},

	}
})

-----chromium--------

minetest.register_node("xtraores_redo:brick_chromium", {
		description = "" ..core.colorize("#68fff6", "chromium brick\n")..core.colorize("#FFFFFF", "Can be placed\n")..core.colorize("#FFFFFF", "Material"),
	tiles = {"xtraores_redo_brick_chromium.png"},
	paramtype2 = "facedir",
	place_param2 = 0,
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 12},
	on_blast = function() end,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft( {
	type = "shapeless",
	output = "xtraores_redo:brick_chromium",
	recipe = {"xtraores_redo:chromium_ore", "default:cobble"},
})

minetest.register_node("xtraores_redo:block_chromium", {
		description = "" ..core.colorize("#68fff6", "chromium block\n")..core.colorize("#FFFFFF", "Can be placed\n")..core.colorize("#FFFFFF", "Material"),
	tiles = {"xtraores_redo_block_chromium.png"},
	paramtype2 = "facedir",
	place_param2 = 0,
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 12},
	on_blast = function() end,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = 'xtraores_redo:block_chromium',
	recipe = {
		{'xtraores_redo:chromium_bar', 'xtraores_redo:chromium_bar', 'xtraores_redo:chromium_bar'},
		{'xtraores_redo:chromium_bar', 'xtraores_redo:chromium_bar', 'xtraores_redo:chromium_bar'},
		{'xtraores_redo:chromium_bar', 'xtraores_redo:chromium_bar', 'xtraores_redo:chromium_bar'},
	}
})

minetest.register_craft({
	output = 'xtraores_redo:chromium_bar 9',
	recipe = {
		{'xtraores_redo:block_chromium'},
	}
})
minetest.register_node("xtraores_redo:decobrick_chromium", {
		description = "" ..core.colorize("#68fff6", "Decorative chromium brick\n")..core.colorize("#FFFFFF", "Can be placed"),
	tiles = {"xtraores_redo_decobrick_chromium.png"},
	is_ground_content = false,
	stack_max= 999,
	groups = {cracky = 12},
	on_blast = function() end,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'xtraores_redo:decobrick_chromium 4',
	recipe = {
		{'xtraores_redo:brick_chromium', 'xtraores_redo:brick_chromium', ''},
		{'xtraores_redo:brick_chromium', 'xtraores_redo:brick_chromium', ''},

	}
})
