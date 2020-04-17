-----------------------revolver---------------

minetest.register_tool("xtraores_redo:platinum_revolver", {
		description = "".. core.colorize("#68fff6", "Platinum revolver\n")..core.colorize("#FFFFFF", "Ranged damage: 6\n")..core.colorize("#FFFFFF", "Bullet speed: 30\n") ..core.colorize("#FFFFFF", "Reload delay: 20\n") ..core.colorize("#FFFFFF", "Xtraores gun level: 2"),
	inventory_image = "xtraores_redo_platinum_revolver.png",
	wield_scale = {x=1.0,y=1.0,z=1.0},
	range = 0,
on_use = function(itemstack, user, pointed_thing)
	meta = user:get_meta()
 	xo_wpn_c_down = meta:get_int("xo_weapon_cooldown") or 0
	if xo_wpn_c_down > 20 then
	shooter = user
		meta:set_int("xo_weapon_cooldown",0)
		local inv = user:get_inventory()
		if not inv:contains_item("main", "xtraores_redo:platinum_bullet 1") then
			minetest.sound_play("xtraores_redo_empty", {object=user})
			return itemstack
		end
		if not minetest.setting_getbool("creative_mode") then
			inv:remove_item("main", "xtraores_redo:platinum_bullet ")
itemstack:add_wear(65535/1000)
		end
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "xtraores_redo:platinumshot")
			if obj then
				minetest.sound_play("xtraores_redo_revolver", {object=obj})
				obj:setvelocity({x=dir.x * 30, y=dir.y * 30, z=dir.z * 30})
				obj:setacceleration({x=dir.x * 0, y=0, z=dir.z * 0})
				obj:setyaw(yaw + math.pi)
			pos.y = pos.y - 0.2
			local obj = minetest.add_entity(pos, "xtraores_redo:gunsmoke")
				minetest.sound_play("xtraores_redo_revolver", {object=obj})
				obj:setvelocity({x=dir.x * 3, y=dir.y * 3, z=dir.z * 3})
				obj:setacceleration({x=dir.x * -4, y=2, z=dir.z * -4})
				obj:setyaw(yaw + math.pi)

				local ent = obj:get_luaentity()
				if ent then
					ent.player = ent.player or user
				end
			end
		end
		end
		return itemstack
	end,
})

local xtraores_redo_platinumshot = {
	physical = false,
	timer = 0,
	glow = 20,
	visual = "wielditem",
	visual_size = {x=0.25, y=0.4,},
	textures = {'xtraores_redo:platinum_shot'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
xtraores_redo_platinumshot.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)
	local shooter = shooter or self.object

	if self.timer > 0.10 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "xtraores_redo:platinumshot" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 6
					obj:punch(shooter, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 6
				obj:punch(shooter, 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
				self.object:remove()
			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_item(self.lastpos, "")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("xtraores_redo:platinumshot", xtraores_redo_platinumshot)

minetest.register_craftitem("xtraores_redo:platinum_shot", {
	inventory_image = "xtraores_redo_platinum_shot.png",
})

minetest.register_craftitem("xtraores_redo:platinum_bullet", {
		description = "".. core.colorize("#68fff6", "Platinum  bullet\n")..core.colorize("#FFFFFF", "Used by guns of level 2\n")..core.colorize("#FFFFFF", "Xtraores ammo level: 2"),
	stack_max= 500,
	inventory_image = "xtraores_redo_platinum_bullet.png",
})

minetest.register_craft( {
	type = "shapeless",
	output = "xtraores_redo:platinum_revolver",
	recipe = {"xtraores_redo:platinum_revolver_base", "xtraores_redo:platinum_mag", "xtraores_redo:revolver_handle"},
})

minetest.register_craft({
	output = 'xtraores_redo:platinum_bullet 25',
	recipe = {
		{'', 'default:gold_ingot', ''},
		{'', 'xtraores_redo:platinum_bar', ''},
		{'', 'xtraores_redo:platinum_bar', ''},
	}
})

-----------------------handgun---------------

minetest.register_tool("xtraores_redo:cobalt_handgun", {
		description = "".. core.colorize("#68fff6", "Cobalt handgun\n")..core.colorize("#FFFFFF", "Ranged damage: 12\n")..core.colorize("#FFFFFF", "Bullet speed: 45\n")..core.colorize("#FFFFFF", "Reload delay: 15\n")..core.colorize("#FFFFFF", "Xtraores gun level: 4"),
	inventory_image = "xtraores_redo_cobalt_handgun.png",
	wield_scale = {x=1.0,y=1.0,z=1.0},
	range = 0,
	on_use = function(itemstack, user, pointed_thing)
	meta = user:get_meta()
 	xo_wpn_c_down = meta:get_int("xo_weapon_cooldown") or 0
	if xo_wpn_c_down > 15 then
	shooter = user
		meta:set_int("xo_weapon_cooldown",0)
		local inv = user:get_inventory()
		if not inv:contains_item("main", "xtraores_redo:cobalt_bullet 1") then
			minetest.sound_play("xtraores_redo_empty", {object=user})
			return itemstack
		end
		if not minetest.setting_getbool("creative_mode") then
			inv:remove_item("main", "xtraores_redo:cobalt_bullet ")
itemstack:add_wear(65535/1750)
		end
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "xtraores_redo:cobaltshot")
			if obj then
				minetest.sound_play("xtraores_redo_handgun", {object=obj})
				obj:setvelocity({x=dir.x * 45, y=dir.y * 45, z=dir.z * 45})
				obj:setacceleration({x=dir.x * 0, y=0, z=dir.z * 0})
				obj:setyaw(yaw + math.pi)
			pos.y = pos.y - 0.2
			local obj = minetest.add_entity(pos, "xtraores_redo:gunsmoke")
				minetest.sound_play("xtraores_redo_handgun", {object=obj})
				obj:setvelocity({x=dir.x * 3, y=dir.y * 3, z=dir.z * 3})
				obj:setacceleration({x=dir.x * -4, y=2, z=dir.z * -4})
				obj:setyaw(yaw + math.pi)

				local ent = obj:get_luaentity()
				if ent then
					ent.player = ent.player or user
				end
			end
		end
		end
		return itemstack
	end,
})

local xtraores_redo_cobaltshot = {
	physical = false,
	timer = 0,
	glow = 20,
	visual = "wielditem",
	visual_size = {x=0.25, y=0.4,},
	textures = {'xtraores_redo:cobalt_shot'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
xtraores_redo_cobaltshot.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)
	local shooter = shooter or self.object

	if self.timer > 0.07 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "xtraores_redo:cobaltshot" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 12
					obj:punch(shooter, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 12
				obj:punch(shooter, 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
				self.object:remove()
			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_item(self.lastpos, "")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("xtraores_redo:cobaltshot", xtraores_redo_cobaltshot)

minetest.register_craftitem("xtraores_redo:cobalt_shot", {
	inventory_image = "xtraores_redo_cobalt_shot.png",
})

minetest.register_craftitem("xtraores_redo:cobalt_bullet", {
		description = "".. core.colorize("#68fff6", "cobalt  bullet\n")..core.colorize("#FFFFFF", "Used by guns of level 4\n")..core.colorize("#FFFFFF", "Xtraores ammo level: 4"),
	stack_max= 500,
	inventory_image = "xtraores_redo_cobalt_bullet.png",
})

minetest.register_craft( {
	type = "shapeless",
	output = "xtraores_redo:cobalt_handgun",
	recipe = {"xtraores_redo:cobalt_top", "xtraores_redo:cobalt_base", "xtraores_redo:cobalt_handle"},
})

minetest.register_craft({
	output = 'xtraores_redo:cobalt_bullet 25',
	recipe = {
		{'', 'xtraores_redo:cobalt_bar', ''},
		{'', 'xtraores_redo:cobalt_bar', ''},
		{'', 'default:mese_crystal', ''},
	}
})

-----------------------orichalcum_rifle---------------

minetest.register_tool("xtraores_redo:orichalcum_rifle", {
		description = "".. core.colorize("#68fff6", "Orichalcum rifle\n")..core.colorize("#FFFFFF", "Ranged damage: 26\n")..core.colorize("#FFFFFF", "Bullet speed: 70\n")..core.colorize("#FFFFFF", "Reload delay: 50\n")..core.colorize("#FFFFFF", "Xtraores gun level: 10"),
	inventory_image = "xtraores_redo_orichalcum_rifle.png",
	wield_scale = {x=2.0,y=2.0,z=1.0},
	range = 0,
	on_use = function(itemstack, user, pointed_thing)
	meta = user:get_meta()
 	xo_wpn_c_down = meta:get_int("xo_weapon_cooldown") or 0
	if xo_wpn_c_down > 50 then
	shooter = user
		meta:set_int("xo_weapon_cooldown",0)
		local inv = user:get_inventory()
		if not inv:contains_item("main", "xtraores_redo:orichalcum_bullet 1") then
			minetest.sound_play("xtraores_redo_empty", {object=user})
			return itemstack
		end
		if not minetest.setting_getbool("creative_mode") then
			inv:remove_item("main", "xtraores_redo:orichalcum_bullet ")
itemstack:add_wear(65535/9001)
		end
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "xtraores_redo:orichalcumshot")
			if obj then
				minetest.sound_play("xtraores_redo_rifle", {object=obj})
				obj:setvelocity({x=dir.x * 70, y=dir.y * 70, z=dir.z * 70})
				obj:setacceleration({x=dir.x * 0, y=0, z=dir.z * 0})
				obj:setyaw(yaw + math.pi)
			pos.y = pos.y - 0.2
			local obj = minetest.add_entity(pos, "xtraores_redo:gunsmoke")
				minetest.sound_play("xtraores_redo_rifle", {object=obj})
				obj:setvelocity({x=dir.x * 3, y=dir.y * 3, z=dir.z * 3})
				obj:setacceleration({x=dir.x * -4, y=2, z=dir.z * -4})
				obj:setyaw(yaw + math.pi)

				local ent = obj:get_luaentity()
				if ent then
					ent.player = ent.player or user
				end
			end
		end
		end
		return itemstack
	end,
})

local xtraores_redo_orichalcumshot = {
	physical = false,
	timer = 0,
	glow = 20,
	visual = "wielditem",
	visual_size = {x=0.4, y=0.8,},
	textures = {'xtraores_redo:orichalcum_shot'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
xtraores_redo_orichalcumshot.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)
	local shooter = shooter or self.object

	if self.timer > 0.05 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1.5)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "xtraores_redo:orichalcumshot" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 26
					obj:punch(shooter, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 26
				obj:punch(shooter, 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
				self.object:remove()
			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_item(self.lastpos, "")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("xtraores_redo:orichalcumshot", xtraores_redo_orichalcumshot)

minetest.register_craftitem("xtraores_redo:orichalcum_shot", {
	inventory_image = "xtraores_redo_orichalcum_shot.png",
	wield_scale = {x=2.0,y=1.0,z=1.0},
})

minetest.register_craftitem("xtraores_redo:orichalcum_bullet", {
		description = "".. core.colorize("#68fff6", "orichalcum  bullet\n")..core.colorize("#FFFFFF", "Used by guns of level 10\n")..core.colorize("#FFFFFF", "Xtraores ammo level: 10"),
	stack_max= 500,
	inventory_image = "xtraores_redo_orichalcum_bullet.png",
})

minetest.register_craft( {
	type = "shapeless",
	output = "xtraores_redo:orichalcum_rifle",
	recipe = {"xtraores_redo:orichalcum_rifle_barrel", "xtraores_redo:orichalcum_rifle_scope", "xtraores_redo:orichalcum_rifle_base", "xtraores_redo:orichalcum_rifle_stock", "xtraores_redo:orichalcum_rifle_grip",
"xtraores_redo:orichalcum_rifle_handle" },
})

minetest.register_craft({
	output = 'xtraores_redo:orichalcum_bullet 30',
	recipe = {
		{'', 'xtraores_redo:orichalcum_bar', ''},
		{'', 'xtraores_redo:orichalcum_bar', ''},
		{'', 'xtraores_redo:antracite_ore', ''},
	}
})

local xtraores_redo_gunsmoke = {
	physical = false,
	timer = 0,
	visual = "sprite",
	visual_size = {x=0.5, y=0.5,},
	textures = {'tnt_smoke.png'},
	lastpos= { },
	collisionbox = {0, 0, 0, 0, 0, 0},
}
xtraores_redo_gunsmoke.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 1 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 100)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "xtraores_redo:gunsmoke" and obj:get_luaentity().name ~= "__builtin:item" then

					self.object:remove()
				end
			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_item(self.lastpos, "")
			end

			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end
minetest.register_entity("xtraores_redo:gunsmoke", xtraores_redo_gunsmoke)


minetest.register_tool("xtraores_redo:sword_radioactive", {
		description = "".. core.colorize("#68fff6", "Radioactive sword\n")..core.colorize("#FFFFFF", "Mele damage: 30\n")..core.colorize("#FFFFFF", "Full punch interval: 0.60\n") ..core.colorize("#FFFFFF", "range: 5.9\n")..core.colorize("#FFFFFF", "Launches radioactive projectiles that deal 15 damage while swung\n") ..core.colorize("#FFFFFF", "Xtraores tool level: 11"),
	inventory_image = "xtraores_redo_sword_radioactive.png",
	projectile_attack = "xtraores_redo:radioactive_ray",
	projectile_sound = "xtraores_redo_swosh",
	needed_ammo = "",
	consumed_ammo = 0,
	projectile_cooldown = 30,
	projectile_velocity = 40,
	projectile_gravity = 0,
	projectile_spread = 0,
	range = 5.9,
	tool_capabilities = {
		full_punch_interval = 0.60,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.44, [2]=0.26, [3]=0.012}, uses=390, maxlevel=3},
		},
		damage_groups = {fleshy=30},
	},
	sound = {breaks = "default_tool_breaks"},
})
minetest.register_craft({
	output = 'xtraores_redo:sword_radioactive',
	recipe = {
		{'', 'xtraores_redo:uranium_bar', 'xtraores_redo:uranium_bar'},
		{'', 'xtraores_redo:uranium_bar', ''},
		{'xtraores_redo:titanium_bar', 'xtraores_redo:duraglass_handle', ''},
	}
})

local xtraores_redo_radioactive_ray = {
	physical = false,
	timer = 0,
	glow = 20,
	visual = "wielditem",
	visual_size = {x=0.4, y=0.8,},
	textures = {"xtraores_redo:radioactive_ray_shot"},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
xtraores_redo_radioactive_ray.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)
	local shooter = shooter or self.object

	if self.timer > 0.1 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1.6)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "xtraores_redo:radioactive_ray" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 15
					obj:punch(shooter, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 15
				obj:punch(shooter, 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
				self.object:remove()
			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_item(self.lastpos, "")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("xtraores_redo:radioactive_ray", xtraores_redo_radioactive_ray)

minetest.register_craftitem("xtraores_redo:radioactive_ray_shot", {
	inventory_image = "xtraores_redo_radioactive_projectile.png",
	wield_scale = {x=2.0,y=2.0,z=3.5},
})


-----------------------titanium guns---------------

minetest.register_tool("xtraores_redo:titanium_machinegun", {
		description = "".. core.colorize("#68fff6", "Titanium machinegun\n")..core.colorize("#FFFFFF", "Ranged damage: 22\n")..core.colorize("#FFFFFF", "Bullet speed: 45\n") ..core.colorize("#FFFFFF", "Reload delay: 5\n")..core.colorize("#FFFFFF", "Xtraores gun level: 11"),
	inventory_image = "xtraores_redo_titanium_machinegun.png",
	projectile_attack = "xtraores_redo:titaniumshot_machinegun",
	projectile_sound = "xtraores_redo_machinegun",
	needed_ammo = "xtraores_redo:titanium_bullet 1",
	consumed_ammo = 0,
	projectile_cooldown = 7,
	projectile_velocity = 45,
	projectile_gravity = 0,
	projectile_spread = 20,
	range = 0,
})


minetest.register_tool("xtraores_redo:titanium_handgun", {
		description = "".. core.colorize("#68fff6", "titanium handgun\n")..core.colorize("#FFFFFF", "Ranged damage: 28\n")..core.colorize("#FFFFFF", "Bullet speed: 55\n")..core.colorize("#FFFFFF", "Reload delay: 12\n")..core.colorize("#FFFFFF", "Xtraores gun level: 11"),
	inventory_image = "xtraores_redo_titanium_handgun.png",
	wield_scale = {x=1.0,y=1.0,z=1.0},
	range = 0,
	on_use = function(itemstack, user, pointed_thing)
	meta = user:get_meta()
 	xo_wpn_c_down = meta:get_int("xo_weapon_cooldown") or 0
	if xo_wpn_c_down > 12 then
	shooter = user
		meta:set_int("xo_weapon_cooldown",0)
		local inv = user:get_inventory()
		if not inv:contains_item("main", "xtraores_redo:titanium_bullet 1") then
			minetest.sound_play("xtraores_redo_empty", {object=user})
			return itemstack
		end
		if not minetest.setting_getbool("creative_mode") then
			inv:remove_item("main", "xtraores_redo:titanium_bullet ")
itemstack:add_wear(65535/20000)
		end
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "xtraores_redo:titaniumshot_handgun")
			if obj then
				minetest.sound_play("xtraores_redo_handgun", {object=obj})
				obj:setvelocity({x=dir.x * 55, y=dir.y * 55, z=dir.z * 55})
				obj:setacceleration({x=dir.x * 0, y=0, z=dir.z * 0})
				obj:setyaw(yaw + math.pi)
			pos.y = pos.y - 0.2
			local obj = minetest.add_entity(pos, "xtraores_redo:gunsmoke")
				minetest.sound_play("xtraores_redo_handgun", {object=obj})
				obj:setvelocity({x=dir.x * 3, y=dir.y * 3, z=dir.z * 3})
				obj:setacceleration({x=dir.x * -4, y=2, z=dir.z * -4})
				obj:setyaw(yaw + math.pi)

				local ent = obj:get_luaentity()
				if ent then
					ent.player = ent.player or user
				end
			end
		end
		end
		return itemstack
	end,
})

local xtraores_redo_titaniumshot_handgun = {
	physical = false,
	timer = 0,
	glow = 20,
	visual = "wielditem",
	visual_size = {x=0.25, y=0.4,},
	textures = {'xtraores_redo:titanium_shot'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
xtraores_redo_titaniumshot_handgun.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)
	local shooter = shooter or self.object

	if self.timer > 0.08 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "xtraores_redo:titaniumshot_handgun" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 28
					obj:punch(shooter, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 28
				obj:punch(shooter, 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
				self.object:remove()
			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_item(self.lastpos, "")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("xtraores_redo:titaniumshot_handgun", xtraores_redo_titaniumshot_handgun)

local xtraores_redo_titaniumshot_machinegun = {
	physical = false,
	timer = 0,
	glow = 20,
	visual = "wielditem",
	visual_size = {x=0.25, y=0.4,},
	textures = {'xtraores_redo:titanium_shot'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
xtraores_redo_titaniumshot_machinegun.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)
	local shooter = shooter or self.object

	if self.timer > 0.1 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "xtraores_redo:titaniumshot_machinegun" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 22
					obj:punch(shooter, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 22
				obj:punch(shooter, 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
				self.object:remove()
			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_item(self.lastpos, "")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("xtraores_redo:titaniumshot_machinegun", xtraores_redo_titaniumshot_machinegun)


minetest.register_craftitem("xtraores_redo:titanium_shot", {
	inventory_image = "xtraores_redo_titanium_shot.png",
})

minetest.register_craftitem("xtraores_redo:titanium_bullet", {
		description = "".. core.colorize("#68fff6", "titanium  bullet\n")..core.colorize("#FFFFFF", "Used by guns of level 11\n")..core.colorize("#FFFFFF", "Xtraores ammo level: 11"),
	stack_max= 500,
	inventory_image = "xtraores_redo_titanium_bullet.png",
})

minetest.register_craft( {
	type = "shapeless",
	output = "xtraores_redo:titanium_handgun",
	recipe = {"xtraores_redo:titanium_gun_barrel","xtraores_redo:titanium_handgun_base", "xtraores_redo:titanium_gun_handle"},
})

minetest.register_craft( {
	type = "shapeless",
	output = "xtraores_redo:titanium_machinegun",
	recipe = {"xtraores_redo:titanium_gun_barrel","xtraores_redo:titanium_machinegun_base","xtraores_redo:titanium_machinegun_stock","xtraores_redo:titanium_gun_barrel","xtraores_redo:titanium_machinegun_mag","xtraores_redo:titanium_gun_handle"},
})


minetest.register_craft({
	output = 'xtraores_redo:titanium_bullet 100',
	recipe = {
		{'', 'default:diamond', ''},
		{'', 'xtraores_redo:titanium_bar', ''},
		{'', 'xtraores_redo:titanium_bar', ''},
	}
})
