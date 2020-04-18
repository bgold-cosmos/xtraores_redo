local ore_table = {
	{name = "Nickel",    level=1,  clustering = {{scarcity=16, y_max=100}, {scarcity=10,y_max=-64}}, cooktime=2},
	{name = "Platinum",  level=2,  clustering = {{scarcity=14, y_max=-250}},   cooktime=5},
	{name = "Palladium", level=3,  clustering = {{scarcity=16, y_max=-750}},  cooktime=12},
	{name = "Cobalt",    level=4,  clustering = {{scarcity=18, y_max=-1200}},  cooktime=20},
	{name = "Thorium",   level=5,  clustering = {{scarcity=19, y_max=-1900}}, cooktime=32, end_on_blast=true},
	-- antracite is more like coal, handled separately
	{name = "Osmium",    level=6,  clustering = {{scarcity=21, y_max=-3500}}, cooktime=45, end_on_blast=true},
	{name = "Rhenium",   level=7,  clustering = {{scarcity=23, y_max=-5750}}, cooktime=60, end_on_blast=true},
	{name = "Vanadium",  level=8,  clustering = {{scarcity=25, y_max=-8000}}, cooktime=75, end_on_blast=true},
	-- rarium is glowy and animated,
	{name = "Rarium",    level=9,  clustering = {{scarcity=27, y_max=-10000, num_ores=3, size=3}}, cooktime=90,  end_on_blast=true, animated=true, light=4},
	{name = "Orichalcum",level=10, clustering = {{scarcity=28, y_max=-12500, num_ores=3, size=3}}, cooktime=120, end_on_blast=true},
	{name = "Titanium",  level=11, clustering = {{scarcity=29, y_max=-15000, num_ores=3, size=3}}, cooktime=145, end_on_blast=true},
	-- uranium is glowy and animated
	{name = "Uranium",   level=11, clustering = {{scarcity=30, y_max=-15000, num_ores=2, size=3}}, cooktime=145, end_on_blast=true, animated=true, light=7},
	{name = "Chromium",  level=12, clustering = {{scarcity=31, y_max=-18000, num_ores=3, size=3}}, cooktime=180, end_on_blast=true},
}

local function register_xtraore(m)
	local lcname = string.lower(m.name)
	local function xtra_to_mtlevel(n) if n > 3 then return n else return 4-n end end
	local registration_table = {
		description = "" .. core.colorize("#68fff6", m.name .. " ore\n") .. core.colorize("#FFFFFF", "Can be placed\n")
			.. core.colorize("#FFFFFF", "Material\n") .. core.colorize("#FFFFFF", "xtraores_redo ore level: ".. m.level),
		tiles = {"default_stone.png^xtraores_redo_" .. lcname .. "_ore.png"},
		inventory_image = "xtraores_redo_" .. lcname .. "_lump.png",
		stack_max= 999,
		groups = {cracky = xtra_to_mtlevel(m.level)},
		sounds = default.node_sound_stone_defaults(),
	}

	if m.end_on_blast then
		registration_table.on_blast = function() end
	end

	if m.animated then
		registration_table.tiles = {{
			    name = "xtraores_redo_" .. lcname .. "_ore.png",
			    animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 1.0}
		}}
	end

	if m.light then
		registration_table.light_source = light
	end

	minetest.register_node("xtraores_redo:" .. lcname .. "_ore", registration_table)

	for i,v in ipairs(m.clustering) do
		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "xtraores_redo:" .. lcname .. "_ore",
			wherein        = "default:stone",
			clust_scarcity = v.scarcity^3,
			clust_num_ores = v.num_ores or 4,
			clust_size     = v.size or 4,
			y_min          = -31000,
			y_max          = v.y_max,
		})
	end

	minetest.register_craft({
		type = "cooking",
		cooktime = m.cooktime,
		output = "xtraores_redo:" .. lcname .. "_bar",
		recipe = "xtraores_redo:" .. lcname .. "_ore",
	})
end

for i,m in ipairs(ore_table) do
	register_xtraore(m)
end


-----------------antracite ore--------------

minetest.register_node("xtraores_redo:antracite_ore", {
		description = "" ..core.colorize("#68fff6", "antracite\n")..core.colorize("#FFFFFF", "Can be placed\n")..core.colorize("#FFFFFF", "Material\n")..core.colorize("#FFFFFF", "xtraores_redo ore level: 5"),
	tiles = {"default_stone.png^xtraores_redo_antracite_ore.png"},
	inventory_image = "xtraores_redo_antracite_lump.png",
	stack_max= 999,
	groups = {cracky = 5},
	on_blast = function() end,
	sounds = default.node_sound_stone_defaults(),
})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "xtraores_redo:antracite_ore",
		wherein        = "default:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 6,
		clust_size     = 5,
		y_min          = -31000,
		y_max          = -2000,
	})

minetest.register_craft({
	output = 'xtraores_redo:antracite_torch 5',
	recipe = {
		{'', '', ''},
		{'', 'xtraores_redo:antracite_ore', ''},
		{'', 'xtraores_redo:steel_handle', ''},
	}
})

minetest.register_craft({
	type = "fuel",
	recipe = "xtraores_redo:antracite_ore",
	burntime = 164,
})
