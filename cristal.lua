--cristal={}

--Crear los cristales
local list = {"black", "blue", "brown", "cyan", 
"dark_green", "dark_grey", "green", "grey", "magenta", 
"orange", "pink", "red", "violet", "white", "yellow"}

for id, color in pairs (list) do
	minetest.register_node("cristal:"..color, {
		description = "Cristal "..color,
		tiles = {color..".png"},
		groups = {cracky = 3, oddly_breakable_by_hand = 3},
		use_texture_alpha = true,
		sunlight_propagates = true,
		drawtype = "glasslike",
        paramtype = "light",
        is_ground_content = false,
		sounds = default.node_sound_glass_defaults(),
	})
end

--Hacerlos compatibles con la circular saw
