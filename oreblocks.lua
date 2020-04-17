local block_table = {
	Nickel = 	   {cracky=3},
	Platinum =   {cracky=2},
	Palladium =  {cracky=1},
	Cobalt =		 {cracky=4},
	Thorium = 	 {cracky=5, end_on_blast=true},
	Osmium = 		 {cracky=6, end_on_blast=true},
	Rhenium = 	 {cracky=7, end_on_blast=true},
	Vanadium = 	 {cracky=8, end_on_blast=true},
	Rarium = 	 	 {cracky=9, end_on_blast=true, animation_length=0.66, light={brick=5, block=5, deco=5}},
	Orichalcum = {cracky=10, end_on_blast=true},
	Titanium = 	 {cracky=11, end_on_blast=true},
	Uranium = 	 {cracky=11, end_on_blast=true, animation_length=0.75, light={brick=10, block=14, deco=8}},
	Chromium =   {cracky=12, end_on_blast=true},
}

local function register_xtrablocks(name, props)
	local lcname = string.lower(name)
	local barname = 'xtraores_redo:' .. lcname .. '_bar'
	local brickname = 'xtraores_redo:brick_' .. lcname
	local common_props = {
		paramtype2 = "facedir",
		place_param2 = 0,
		is_ground_content = false,
		stack_max = 999,
		groups = {cracky = props.cracky},
		sounds = default.node_sound_stone_defaults(),
	}

	if props.end_on_blast then
		common_props.on_blast = function () end
	end

	-- brick
	local brick_props = {}
	for k,v in pairs(common_props) do brick_props[k] = v end
	brick_props.description = "" ..core.colorize("#68fff6", name .. " brick\n")..core.colorize("#FFFFFF", "Can be placed\n")..core.colorize("#FFFFFF", "Material")
	if props.animation_length then
		brick_props.tiles = {{name = "xtraores_redo_brick_".. lcname ..".png",
												 animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = props.animation_length} }}
	else
		brick_props.tiles = {"xtraores_redo_brick_".. lcname ..".png"}
	end
	if props.light then
		brick_props.light_source = props.light.brick
	end

	minetest.register_node(brickname, brick_props)
	minetest.register_craft( {
		type = "shapeless",
		output = brickname,
		recipe = {"xtraores_redo:"..lcname.."_ore", "default:cobble"},
	})

	-- block
	local block_props = {}
	for k,v in pairs(common_props) do block_props[k] = v end
	block_props.description = "" ..core.colorize("#68fff6", name .. " block\n")..core.colorize("#FFFFFF", "Can be placed\n")..core.colorize("#FFFFFF", "Material")
	if props.animation_length then
		block_props.tiles = {{name = "xtraores_redo_block_".. lcname ..".png",
												 animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = props.animation_length} }}
	else
		block_props.tiles = {"xtraores_redo_block_".. lcname ..".png"}
	end
	if props.light then
		block_props.light_source = props.light.block
	end

	minetest.register_node("xtraores_redo:block_" .. lcname, block_props)
	minetest.register_craft({
		output = 'xtraores_redo:block_nickel',
		recipe = {
			{barname, barname, barname},
			{barname, barname, barname},
			{barname, barname, barname},
		}
	})
	minetest.register_craft({
		output = barname .. ' 9',
		recipe = {
			{'xtraores_redo:block_' .. lcname},
		}
	})

	-- decorative brick
	local deco_props = {}
	for k,v in pairs(common_props) do deco_props[k] = v end
	deco_props.description = "" ..core.colorize("#68fff6", "Decorative " .. name .. " brick\n")..core.colorize("#FFFFFF", "Can be placed")
	if props.animation_length then
		deco_props.tiles = {{name = "xtraores_redo_decobrick_".. lcname ..".png",
												 animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = props.animation_length} }}
	else
		deco_props.tiles = {"xtraores_redo_decobrick_".. lcname ..".png"}
	end
	if props.light then
		deco_props.light_source = props.light.deco
	end

	minetest.register_node("xtraores_redo:decobrick_" .. lcname, deco_props)
	minetest.register_craft({
		output = 'xtraores_redo:decobrick_' .. lcname .. ' 4',
		recipe = {
			{brickname, brickname, ''},
			{brickname, brickname, ''},
		}
	})
end

for k,v in pairs(block_table) do
	register_xtrablocks(k,v)
end
