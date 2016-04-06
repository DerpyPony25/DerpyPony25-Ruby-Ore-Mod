-- Ruby Things Mod By RarityGamingHD

--Mods Support
if minetest.get_modpath("3d_armor") then
dofile(minetest.get_modpath("ruby_ore").."/ruby_armor.lua")
end

if minetest.get_modpath("shields") then
dofile(minetest.get_modpath("ruby_ore").."/ruby_shield.lua")
end

-- Ruby Ore Node
minetest.register_node("ruby_ore:ruby_ore", {
	description = "Ruby Ore",
	tile_images = {"ruby_block.png"},
	groups = {stone=2, cracky=3},
	drop = "ruby_ore:ruby_gem",
	is_ground_content = true,
})


--Ruby Gem Item
minetest.register_craftitem("ruby_ore:ruby_gem", {
	description = "Ruby",
	inventory_image = "ruby_gem.png",
})


-- Ruby Pickaxe Tool
minetest.register_tool("ruby_ore:ruby_pickaxe", {
	description = "Ruby Pickaxe",
	inventory_image = "ruby_pickaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=1.0, [2]=0.5, [3]=0.25}, uses=15, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
})


--Craft Ruby Pickaxe
minetest.register_craft({
	output = "ruby_ore:ruby_pickaxe",
	recipe = {
		{"ruby_ore:ruby_gem", "ruby_ore:ruby_gem", "ruby_ore:ruby_gem", ""},
		{"", "default:stick", "", ""},
		{"", "default:stick", "", ""}
	}
})


--Ruby Axe Tool
minetest.register_tool("ruby_ore:ruby_axe", {
	description = "Ruby Axe",
	inventory_image = "ruby_axe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			choppy={times={[1]=1.05, [2]=0.45, [3]=0.25}, uses=15, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	}
})


--Craft Ruby Axe 
minetest.register_craft({
	output = "ruby_ore:ruby_axe",
	recipe = {
		{"ruby_ore:ruby_gem", "ruby_ore:ruby_gem", "", ""},
		{"ruby_ore:ruby_gem", "default:stick", "", ""},
		{"", "default:stick", "", ""}
	}
})

minetest.register_craft({
	output = "ruby_ore:ruby_axe",
	recipe = {
		{"", "ruby_ore:ruby_gem", "ruby_ore:ruby_gem", ""},
		{"", "default:stick", "ruby_ore:ruby_gem", ""},
		{"", "default:stick", "", ""}
	}
})


--Craft Ruby Shovel
minetest.register_tool("ruby_ore:ruby_shovel", {
	description = "Ruby Shovel",
	inventory_image = "ruby_shovel.png",
	wield_image = "ruby_shovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=3,
		groupcaps={
			crumbly = {times={[1]=0.55, [2]=0.25, [3]=0.15}, uses=15, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
})


--Define Rainbow shovel crafting recipe
minetest.register_craft({
	output = "ruby_ore:ruby_shovel",
	recipe = {
		{"", "ruby_ore:ruby_gem", "", ""},
		{"", "default:stick", "", ""},
		{"", "default:stick", "", ""}
	}
})


--Ruby Sword Tool
minetest.register_tool("ruby_ore:ruby_sword", {
	description = "Ruby Sword",
	inventory_image = "ruby_sword.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=3,
		groupcaps={
			snappy={times={[1]=0.95, [2]=0.45, [3]=0.15}, uses=20, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	}
})


--Craft Ruby Sword
minetest.register_craft({
	output = "ruby_ore:ruby_sword",
	recipe = {
		{"", "ruby_ore:ruby_gem", "", ""},
		{"", "ruby_ore:ruby_gem", "", ""},
		{"", "default:stick", "", ""}
	}
})


--Define Nyan Rainbow crafting recipe
minetest.register_craft({
	output = "default:nyancat_rainbow",
	recipe = {
		{"ruby_ore:ruby_gem", "ruby_ore:ruby_gem", "ruby_ore:ruby_gem"},
		{"ruby_ore:ruby_gem", "ruby_ore:ruby_gem", "ruby_ore:ruby_gem"},
		{"ruby_ore:ruby_gem", "ruby_ore:ruby_gem", "ruby_ore:ruby_gem"}
    }
})


--Make Rainbow Ore spawn
minetest.register_ore({
	ore_type = "scatter",
	ore = "ruby_ore:ruby_ore",
	wherein = "default:stone",
	clust_scarcity = 17*17*17,
	clust_num_ores = 3,
	clust_size = 3,
	height_min = -31000,
	height_max = -200,
})