local common_table = {
	Nickel    = {level=1,  range=4.0, interval=1.00, uses=15,  maxlevel=2, handle='group:stick'},
	Platinum  = {level=2,  range=4.2, interval=0.88, uses=20,  maxlevel=3, handle='group:stick'},
	Palladium = {level=3,  range=4.4, interval=0.86, uses=45,  maxlevel=3, handle='group:stick'},
	Cobalt    = {level=4,  range=4.6, interval=0.84, uses=60,  maxlevel=3, handle='group:stick'},
	Thorium =   {level=5,  range=4.8, interval=0.82, uses=90,  maxlevel=3, handle='xtraores_redo:steel_handle'},
	Osmium =    {level=6,  range=5.0, interval=0.80, uses=125, maxlevel=3, handle='xtraores_redo:steel_handle',},
	Rhenium =   {level=7,  range=5.2, interval=0.78, uses=175, maxlevel=3, handle='xtraores_redo:steel_handle',},
	Vanadium =  {level=8,  range=5.4, interval=0.76, uses=255, maxlevel=3, handle='xtraores_redo:steel_handle',},
	Rarium =    {level=9,  range=5.6, interval=0.74, uses=300, maxlevel=3, handle='xtraores_redo:duraglass_handle',},
	Orichalcum ={level=10, range=5.8, interval=0.72, uses=360, maxlevel=3, handle='xtraores_redo:duraglass_handle',},
	Titanium =  {level=11, range=5.9, interval=0.70, uses=390, maxlevel=3, handle='xtraores_redo:duraglass_handle',},
	Chromium =  {level=12, range=6.0, interval=0.69, uses=420, maxlevel=3, handle='xtraores_redo:duraglass_handle',},
}

local picks_table = {
	Nickel =    {damage=3,  crackytimes={6.00, 1.85, 0.90}},
	Platinum =  {damage=6,  crackytimes={2.40, 1.20, 0.60}},
	Palladium = {damage=8,  crackytimes={1.85, 1.10, 0.55, 4.00}},
	Cobalt =    {damage=10, crackytimes={1.65, 0.95, 0.45, 3.50, 6.00}},
	Thorium =   {damage=12, crackytimes={1.50, 0.85, 0.40, 3.50, 5.40, 8.00},
							 crumblytimes={0.6, 0.2, 0.15}},
	Osmium =    {damage=14, crackytimes={1.30, 0.75, 0.35, 3.00, 5.40, 7.20, 10.0},
							 crumblytimes={0.3, 0.12, 0.08}},
	Rhenium =   {damage=16, crackytimes={1.10, 0.65, 0.30, 2.60, 4.80, 6.40, 9.0, 12.0},
							 crumblytimes={0.2, 0.08, 0.05}},
	Vanadium =  {damage=18, crackytimes={0.90, 0.50, 0.25, 2.20, 4.40, 6.00, 8.0, 10.0, 15.0},
							 crumblytimes={0.1, 0.04, 0.025}},
	Rarium =    {damage=20, crackytimes={0.65, 0.35, 0.175, 1.80, 3.90, 5.00, 7.4, 8.0, 12.0, 20.0},
							 crumblytimes={0.05, 0.02, 0.0125}},
	Orichalcum ={damage=22, crackytimes={0.50, 0.25, 0.13, 1.20, 3.50, 4.50, 6.9, 7.0, 10.0, 16.0, 25.0},
							 crumblytimes={0.03, 0.01, 0.009}},
	Titanium =  {damage=23, crackytimes={0.45, 0.22, 0.115, 1.00, 3.25, 4.20, 6.4, 6.0, 8.75, 14.5, 22.5, 30.0},
							 crumblytimes={0.022, 0.008, 0.008}},
	Chromium =  {damage=24, crackytimes={0.35, 0.17, 0.100, 0.80, 2.75, 3.60, 5.5, 5.0, 7.25, 11.0, 17.5, 25.0, 36.0},
							 crumblytimes={0.022, 0.008, 0.008}},
}
for k,v in pairs(picks_table) do
	picks_table[k].level = common_table[k].level
	picks_table[k].range = common_table[k].range
	picks_table[k].interval = common_table[k].interval
end


local shovels_table = {
	Nickel =    {damage=3, crumblytimes={1.80, 1.05, 0.45}},
	Platinum =  {damage=5, crumblytimes={1.20, 0.60, 0.30}},
	Palladium = {damage=7, crumblytimes={0.95, 0.40, 0.25}},
	Cobalt =    {damage=9, crumblytimes={0.80, 0.30, 0.20}},
}
for k,v in pairs(shovels_table) do
	shovels_table[k].level = common_table[k].level
	shovels_table[k].range = common_table[k].range
	shovels_table[k].interval = common_table[k].interval + 0.1
end


local axes_table = {
	Nickel =    {damage=4,  choppytimes={3.50, 1.60, 1.15}},
	Platinum =  {damage=6,  choppytimes={2.20, 1.00, 0.60}},
	Palladium = {damage=8,  choppytimes={1.95, 0.80, 0.45}},
	Cobalt =    {damage=10, choppytimes={1.80, 0.70, 0.40}},
	Thorium =   {damage=12, choppytimes={1.60, 0.60, 0.35}},
	Osmium =    {damage=14, choppytimes={1.40, 0.50, 0.30}},
	Rhenium =   {damage=16, choppytimes={1.10, 0.30, 0.20}},
	Vanadium =  {damage=18, choppytimes={0.90, 0.25, 0.175}},
	Rarium =    {damage=20, choppytimes={0.70, 0.20, 0.10}},
	Orichalcum ={damage=22, choppytimes={0.50, 0.15, 0.075}},
	Titanium =  {damage=23, choppytimes={0.45, 0.13, 0.065}},
	Chromium =  {damage=24, choppytimes={0.40, 0.11, 0.055}},
}
for k,v in pairs(axes_table) do
	axes_table[k].level = common_table[k].level
	axes_table[k].range = common_table[k].range
	axes_table[k].interval = common_table[k].interval
end


local swords_table = {
	Nickel =    {damage=5,  snappytimes={3.50, 1.45, 0.40}},
	Platinum =  {damage=7,  snappytimes={2.00, 1.00, 0.35}},
	Palladium = {damage=9,  snappytimes={1.75, 0.80, 0.25}},
	Cobalt =    {damage=11, snappytimes={1.60, 0.70, 0.20}},
	Thorium =   {damage=13, snappytimes={1.40, 0.60, 0.15}, has_spear=true},
	Osmium =    {damage=15, snappytimes={1.20, 0.50, 0.10}, has_spear=true},
	Rhenium =   {damage=17, snappytimes={1.00, 0.40, 0.05}, has_spear=true},
	Vanadium =  {damage=19, snappytimes={0.80, 0.30, 0.025}, has_spear=true},
	Rarium =    {damage=21, snappytimes={0.80, 0.30, 0.025}, has_spear=true},
	Orichalcum ={damage=23, snappytimes={0.50, 0.30, 0.015}, has_spear=true},
	Titanium =  {damage=25, snappytimes={0.44, 0.26, 0.012}, has_spear=true},
	Chromium =  {damage=27, snappytimes={0.30, 0.19, 0.008}, has_spear=true},
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