local common_table = {
	Nickel    = {level=1,  range=4.0, interval=1.00, uses=15,  maxlevel=2, handle='group:stick'},
	Platinum  = {level=2,  range=4.0, interval=1.00, uses=20,  maxlevel=2, handle='group:stick'},
	Palladium = {level=3,  range=4.0, interval=0.90, uses=45,  maxlevel=2, handle='group:stick'},
	Cobalt    = {level=4,  range=4.0, interval=0.89, uses=55,  maxlevel=2, handle='group:stick'},
	Thorium =   {level=5,  range=4.1, interval=1.00, uses=70,  maxlevel=3, handle='xtraores_redo:steel_handle'},
	Osmium =    {level=6,  range=4.1, interval=0.88, uses=80,  maxlevel=3, handle='xtraores_redo:steel_handle',},
	Rhenium =   {level=7,  range=4.1, interval=0.87, uses=120, maxlevel=3, handle='xtraores_redo:steel_handle',},
	Vanadium =  {level=8,  range=4.1, interval=0.86, uses=145, maxlevel=3, handle='xtraores_redo:steel_handle',},
	Rarium =    {level=9,  range=4.2, interval=0.85, uses=175, maxlevel=3, handle='xtraores_redo:duraglass_handle',},
	Orichalcum ={level=10, range=4.2, interval=0.84, uses=220, maxlevel=3, handle='xtraores_redo:duraglass_handle',},
	Titanium =  {level=11, range=4.2, interval=0.83, uses=250, maxlevel=3, handle='xtraores_redo:duraglass_handle',},
	Chromium =  {level=12, range=4.2, interval=0.80, uses=320, maxlevel=3, handle='xtraores_redo:duraglass_handle',},
}

local picks_table = {
	Nickel =    {damage=3,  crackytimes={6.00, 1.90, 0.90}},
	Platinum =  {damage=4,  crackytimes={4.50, 1.70, 0.75}},
	Palladium = {damage=5,  crackytimes={1.90, 1.10, 0.70, 4.00}},
	Cobalt =    {damage=6,  crackytimes={1.80, 1.00, 0.50, 3.50, 6.00}},
	Thorium =   {damage=9, crackytimes={1.50, 0.85, 0.40, 3.40, 5.40, 8.00},
							 crumblytimes={1.20, 0.60, 0.30}},
	Osmium =    {damage=10, crackytimes={1.40, 0.75, 0.35, 3.10, 5.20, 7.20, 10.0},
							 crumblytimes={1.10, 0.50, 0.25}},
	Rhenium =   {damage=11, crackytimes={1.20, 0.65, 0.30, 2.60, 4.80, 6.40, 9.0, 12.0},
							 crumblytimes={1.00, 0.45, 0.21}},
	Vanadium =  {damage=12, crackytimes={1.10, 0.60, 0.25, 2.20, 4.40, 6.00, 8.0, 10.0, 15.0},
							 crumblytimes={0.90, 0.40, 0.18}},
	Rarium =    {damage=14, crackytimes={0.90, 0.45, 0.20, 1.80, 3.70, 5.00, 7.2, 8.0, 12.0, 20.0},
							 crumblytimes={0.80, 0.35, 0.15}},
	Orichalcum ={damage=15, crackytimes={0.85, 0.40, 0.17, 1.50, 3.30, 4.20, 6.5, 7.0, 9.0, 15.0, 25.0},
							 crumblytimes={0.70, 0.30, 0.12}},
	Titanium =  {damage=16, crackytimes={0.75, 0.32, 0.12, 1.00, 2.80, 3.80, 5.8, 6.0, 8.2, 13.5, 20.0, 30.0},
							 crumblytimes={0.65, 0.25, 0.09}},
	Chromium =  {damage=17, crackytimes={0.70, 0.29, 0.10, 0.80, 2.40, 3.20, 4.8, 5.0, 7.2, 10.0, 15.0, 22.0, 36.0},
							 crumblytimes={0.60, 0.21, 0.08}},
}
for k,v in pairs(picks_table) do
	picks_table[k].level = common_table[k].level
	picks_table[k].range = common_table[k].range
	picks_table[k].interval = common_table[k].interval
end


local shovels_table = {
	Nickel =    {damage=3, crumblytimes={1.80, 1.05, 0.45}},
	Platinum =  {damage=3, crumblytimes={1.65, 1.00, 0.40}},
	Palladium = {damage=4, crumblytimes={1.00, 0.60, 0.35}},
	Cobalt =    {damage=5, crumblytimes={0.95, 0.50, 0.25}},
}
for k,v in pairs(shovels_table) do
	shovels_table[k].level = common_table[k].level
	shovels_table[k].range = common_table[k].range
	shovels_table[k].interval = common_table[k].interval + 0.1
end


local axes_table = {
	Nickel =    {damage=3,  choppytimes={3.60, 1.90, 1.2}},
	Platinum =  {damage=4,  choppytimes={2.80, 1.60, 0.95}},
	Palladium = {damage=6,  choppytimes={2.00, 1.00, 0.75}},
	Cobalt =    {damage=8,  choppytimes={1.90, 0.90, 0.50}},
	Thorium =   {damage=10, choppytimes={2.00, 1.00, 0.60}},
	Osmium =    {damage=11, choppytimes={1.80, 0.80, 0.40}},
	Rhenium =   {damage=13, choppytimes={1.70, 0.75, 0.35}},
	Vanadium =  {damage=14, choppytimes={1.65, 0.60, 0.30}},
	Rarium =    {damage=16, choppytimes={1.50, 0.55, 0.25}},
	Orichalcum ={damage=18, choppytimes={1.40, 0.45, 0.21}},
	Titanium =  {damage=20, choppytimes={1.30, 0.40, 0.18}},
	Chromium =  {damage=22, choppytimes={1.20, 0.35, 0.15}},
}
for k,v in pairs(axes_table) do
	axes_table[k].level = common_table[k].level
	axes_table[k].range = common_table[k].range
	axes_table[k].interval = common_table[k].interval
end


local swords_table = {
	Nickel =    {damage=5,  snappytimes={3.50, 1.45, 0.40}},
	Platinum =  {damage=6,  snappytimes={2.75, 1.25, 0.35}},
	Palladium = {damage=7,  snappytimes={1.80, 1.00, 0.35}},
	Cobalt =    {damage=8,  snappytimes={1.80, 0.90, 0.30}},
	Thorium =   {damage=10, snappytimes={1.70, 0.80, 0.25}, has_spear=true},
	Osmium =    {damage=12, snappytimes={1.60, 0.70, 0.20}, has_spear=true},
	Rhenium =   {damage=14, snappytimes={1.50, 0.65, 0.10}, has_spear=true},
	Vanadium =  {damage=16, snappytimes={1.40, 0.60, 0.15}, has_spear=true},
	Rarium =    {damage=19, snappytimes={1.30, 0.55, 0.12}, has_spear=true},
	Orichalcum ={damage=21, snappytimes={1.20, 0.48, 0.10}, has_spear=true},
	Titanium =  {damage=23, snappytimes={1.10, 0.40, 0.08}, has_spear=true},
	Chromium =  {damage=26, snappytimes={1.00, 0.35, 0.06}, has_spear=true},
}
for k,v in pairs(swords_table) do
	swords_table[k].level = common_table[k].level
	swords_table[k].range = common_table[k].range
	swords_table[k].interval = common_table[k].interval - 0.2
	swords_table[k].short_damage = swords_table[k].damage - 1.0
	swords_table[k].short_range = 3.0 + (swords_table[k].range - 4.0)/2.0
	swords_table[k].short_interval = swords_table[k].interval - 0.1
	swords_table[k].spear_damage = swords_table[k].damage + 1.0
	swords_table[k].spear_range = swords_table[k].range * 1.25
	swords_table[k].spear_interval = swords_table[k].interval * 1.5
end


local function describe_stats(m)
	return core.colorize("#FFFFFF", "Melee damage: ".. m.damage .. "\n")
					..core.colorize("#FFFFFF", "Full punch interval: " .. m.interval .. "\n")
					..core.colorize("#FFFFFF", "Range: " .. m.range .. "\n")
					..core.colorize("#FFFFFF", "Xtraores tool level: " .. m.level)
end

local function register_xtrapick(name, m)
	local lcname = string.lower(name)
	local barname = 'xtraores_redo:' .. lcname .. '_bar'
	local mycaps = {}
	local c = common_table[name]

	mycaps.cracky = {}
	mycaps.cracky.times = m.crackytimes
	mycaps.cracky.uses = c.uses
	mycaps.cracky.maxlevel = c.maxlevel
	if m.crumblytimes then
		mycaps.crumbly = {}
		mycaps.crumbly.times = m.crumblytimes
		mycaps.crumbly.uses = c.uses
		mycaps.crumbly.maxlevel = c.maxlevel
	end

	minetest.register_tool("xtraores_redo:pickaxe_" .. lcname, {
		description = "".. core.colorize("#68fff6", name .. " pickaxe\n") .. describe_stats(m),
		inventory_image = "xtraores_redo_pickaxe_" .. lcname .. ".png",
		range = m.range,
		tool_capabilities = {
			full_punch_interval = m.interval,
			max_drop_level=1,
			groupcaps= mycaps,
			damage_groups = {fleshy=m.damage},
		},
		sound = {breaks = "default_tool_breaks"},
	})
	minetest.register_craft({
		output = 'xtraores_redo:pickaxe_' .. lcname,
		recipe = {
			{barname, barname, barname},
			{'', c.handle, ''},
			{'', c.handle, ''},
		}
	})
end

local function register_xtrashovel(name, m)
	local lcname = string.lower(name)
	local barname = 'xtraores_redo:' .. lcname .. '_bar'
	local c = common_table[name]

	minetest.register_tool("xtraores_redo:shovel_" .. lcname, {
		description = "".. core.colorize("#68fff6", name .. " shovel\n") .. describe_stats(m),
		inventory_image = "xtraores_redo_shovel_" .. lcname ..".png",
		range = m.range,
		tool_capabilities = {
			full_punch_interval = m.interval,
			max_drop_level=1,
			groupcaps={
				crumbly = {times=m.crumblytimes, uses=c.uses, maxlevel=c.maxlevel},
			},
			damage_groups = {fleshy=m.damage},
		},
		sound = {breaks = "default_tool_breaks"},
	})
	minetest.register_craft({
		output = 'xtraores:shovel_' .. lcname,
		recipe = {
			{'', barname, ''},
			{'', c.handle, ''},
			{'', c.handle, ''},
		}
	})
end

local function register_xtraaxe(name, m)
	local lcname = string.lower(name)
	local barname = 'xtraores_redo:' .. lcname .. '_bar'
	local c = common_table[name]

	minetest.register_tool("xtraores_redo:axe_" .. lcname, {
		description = "".. core.colorize("#68fff6", name .. " axe\n") .. describe_stats(m),
		inventory_image = "xtraores_redo_axe_" .. lcname ..".png",
		range = m.range,
		tool_capabilities = {
			full_punch_interval = m.interval,
			max_drop_level=1,
			groupcaps={
				choppy={times=m.choppytimes, uses=c.uses, maxlevel=c.maxlevel},
			},
			damage_groups = {fleshy=m.damage},
		},
		sound = {breaks = "default_tool_breaks"},
	})
	minetest.register_craft({
		output = 'xtraores:axe_' .. lcname,
		recipe = {
			{barname, barname, ''},
			{barname, c.handle, ''},
			{'', c.handle, ''},
		}
	})
	minetest.register_craft({
		output = 'xtraores:axe_' .. lcname,
		recipe = {
			{'', barname, barname},
			{'', c.handle, barname},
			{'', c.handle, ''},
		}
	})
end

local function register_xtrasword(name, m)
	local lcname = string.lower(name)
	local barname = 'xtraores_redo:' .. lcname .. '_bar'
	local c = common_table[name]

	minetest.register_tool("xtraores_redo:sword_" .. lcname, {
		description = "".. core.colorize("#68fff6", name .. " sword\n") .. describe_stats(m),
		inventory_image = "xtraores_redo_sword_" .. lcname ..".png",
		range = m.range,
		tool_capabilities = {
			full_punch_interval = m.interval,
			max_drop_level=1,
			groupcaps={
				snappy={times=m.snappytimes, uses=c.uses, maxlevel=c.maxlevel},
			},
			damage_groups = {fleshy=m.damage},
		},
		sound = {breaks = "default_tool_breaks"},
	})

	m.range = m.short_range
	m.interval = m.short_interval
	m.damage = m.short_damage

	minetest.register_tool("xtraores_redo:shortsword_" .. lcname, {
		description = "".. core.colorize("#68fff6", name .. " shortsword\n") .. describe_stats(m),
		inventory_image = "xtraores_redo_shortsword_" .. lcname ..".png",
		range = m.range,
		tool_capabilities = {
			full_punch_interval = m.interval,
			max_drop_level=1,
			groupcaps={
				snappy={times=m.snappytimes, uses=c.uses, maxlevel=c.maxlevel},
			},
			damage_groups = {fleshy=m.damage},
		},
		sound = {breaks = "default_tool_breaks"},
	})

	if m.has_spear then
		m.range = m.spear_range
		m.interval = m.spear_interval
		m.damage = m.spear_damage

		minetest.register_tool("xtraores_redo:spear_" .. lcname, {
			description = "".. core.colorize("#68fff6", name .. " spear\n").. describe_stats(m),
			inventory_image = "xtraores_redo_spear_".. lcname ..".png",
			wield_scale = {x=2.0,y=2.0,z=1.0},
			range = m.range,
			tool_capabilities = {
				full_punch_interval = m.interval,
				max_drop_level=1,
				groupcaps={
					snappy={times=m.snappytimes, uses=c.uses, maxlevel=c.maxlevel},
				},
				damage_groups = {fleshy=m.damage},
			},
			sound = {breaks = "default_tool_breaks"},
		})

		minetest.register_craft({
			output = 'xtraores_redo:spear_' .. lcname,
			recipe = {
				{'', barname, barname},
				{'', c.handle, barname},
				{c.handle, '', ''},
			}
		})
	end

	minetest.register_craft({
		output = 'xtraores_redo:sword_' .. lcname,
		recipe = {
			{'', barname, ''},
			{'', barname, ''},
			{'', c.handle, ''},
		}
	})
	minetest.register_craft({
		output = 'xtraores_redo:shortsword_' .. lcname,
		recipe = {
			{'', '', ''},
			{'', '', barname},
			{'', c.handle, ''},
		}
	})
end

for k,v in pairs(picks_table) do
	register_xtrapick(k,v)
end

for k,v in pairs(shovels_table) do
	register_xtrashovel(k,v)
end

for k,v in pairs(axes_table) do
	register_xtraaxe(k,v)
end

for k,v in pairs(swords_table) do
	register_xtrasword(k,v)
end
