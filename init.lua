colored_steel = {}

function colored_steel.register_steel(color)

	minetest.register_node("colored_steel:block_"..color, {
		description =  color .. " Steel Block",
		tiles = {"default_steel_block.png^[colorize:"..color..":100"},
		is_ground_content = false,
		groups = {cracky=1,level=2},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_craftitem("colored_steel:steel_ingot_"..color, {
		description = color.." Steel Ingot",
		inventory_image = "default_steel_ingot.png^[colorize:"..color..":100",
	})

	minetest.register_craft({
		output = "colored_steel:block_"..color,
		recipe = {
			{"colored_steel:steel_ingot_"..color, "colored_steel:steel_ingot_"..color, "colored_steel:steel_ingot_"..color},
			{"colored_steel:steel_ingot_"..color, "colored_steel:steel_ingot_"..color, "colored_steel:steel_ingot_"..color},
			{"colored_steel:steel_ingot_"..color, "colored_steel:steel_ingot_"..color, "colored_steel:steel_ingot_"..color},
		}
	})

	minetest.register_craft({
		output = "colored_steel:steel_ingot_"..color.." 9",
		recipe = {
			{"colored_steel:block_"..color},
		}
	})

	minetest.register_craft({
		output = "colored_steel:steel_ingot_"..color.." 9",
		recipe = {
			{"default:steel_ingot", "dye:" .. color},
		}
	})

end

colored_steel.register_steel("green")
colored_steel.register_steel("cyan")
colored_steel.register_steel("red")
colored_steel.register_steel("black")
colored_steel.register_steel("yellow")
colored_steel.register_steel("blue")
colored_steel.register_steel("grey")
colored_steel.register_steel("magenta")
