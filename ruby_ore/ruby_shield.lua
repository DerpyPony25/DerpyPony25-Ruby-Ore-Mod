--Ruby Shield Tool
minetest.register_tool("ruby_ore:ruby_shield", {
	description = "Ruby Shield",
	inventory_image = "ruby_shield_inv.png",
	groups = {armor_shield=20, armor_heal=17, armor_use=40, armor_fire=1},
	wear = 0,
})


--Craft Ruby Shield 
minetest.register_craft({
	output = "rainbow_ore:rainbow_ore_shield",
	recipe = {
		{"ruby_ore:ruby_gem", "ruby_ore:ruby_gem", "ruby_ore:ruby_gem"},
		{"ruby_ore:ruby_gem", "ruby_ore:ruby_gem", "ruby_ore:ruby_gem"},
		{"", "ruby_ore:ruby_gem", ""},
	},
})