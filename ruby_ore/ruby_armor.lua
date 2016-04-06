--Ruby Armour Tool
minetest.register_tool("ruby_ore:ruby_helmet", {
	description = "Ruby Helmet",
	inventory_image = "ruby_helmet_inv.png",
	groups = {armor_head=20, armor_heal=17, armor_use=40},
	wear = 0,
})
minetest.register_tool("ruby_ore:ruby_chestplate", {
	description = "Ruby Chestplate",
	inventory_image = "ruby_chestplate_inv.png",
	groups = {armor_torso=25, armor_heal=17, armor_use=40},
	wear = 0,
})
minetest.register_tool("ruby_ore:ruby_leggings", {
	description = "Ruby Leggings",
	inventory_image = "ruby_leggings_inv.png",
	groups = {armor_legs=25, armor_heal=17, armor_use=40},
	wear = 0,
})
minetest.register_tool("ruby_ore:ruby_boots", {
	description = "Ruby Boots",
	inventory_image = "ruby_boots_inv.png",
	groups = {armor_feet=20, armor_heal=17, armor_use=40},
	wear = 0,
})
 
 
--Define Rainbow Armor crafting recipe
minetest.register_craft({
	output = "ruby_ore:ruby_helmet",
	recipe = {
		{"ruby_ore:ruby_gem", "ruby_ore:ruby_gem", "ruby_ore:ruby_gem"},
		{"ruby_ore:ruby_gem", "", "ruby_ore:ruby_gem"},
		{"", "", ""},
	},
})
minetest.register_craft({
	output = "ruby_ore:ruby_chestplate",
	recipe = {
		{"ruby_ore:ruby_gem", "", "rainbow_ore:rainbow_ore_ingot"},
		{"ruby_ore:ruby_gem", "ruby_ore:ruby_gem", "ruby_ore:ruby_gem"},
		{"ruby_ore:ruby_gem", "ruby_ore:ruby_gem", "ruby_ore:ruby_gem"},
	},
})
minetest.register_craft({
	output = "ruby_ore:ruby_leggings",
	recipe = {
		{"ruby_ore:ruby_gem", "ruby_ore:ruby_gem", "ruby_ore:ruby_gem"},
		{"ruby_ore:ruby_gem", "", "ruby_ore:ruby_gem"},
		{"ruby_ore:ruby_gem", "", "ruby_ore:ruby_gem"},
	},
})
minetest.register_craft({
	output = "ruby_ore:ruby_boots",
	recipe = {
		{"ruby_ore:ruby_gem", "", "ruby_ore:ruby_gem"},
		{"ruby_ore:ruby_gem", "", "ruby_ore:ruby_gem"},
	},
})