local list = {"black", "blue", "brown", "cyan", 
"dark_green", "dark_grey", "green", "grey", "magenta", 
"orange", "pink", "red", "violet", "white", "yellow"}

for id, color in pairs (list) do

minetest.register_craft({
	output = "cristal:" .. color .. " 8",
	recipe = {
				{"default:glass", "default:glass", "default:glass"},
				{"default:glass", "dye:" .. color, "default:glass"},
				{"default:glass", "default:glass", "default:glass"}
			},
	})

minetest.register_craft({
	output = "xpanes:cristal_pane_" .. color .. "_flat 16",
	recipe = {
				{"cristal:"..color, "cristal:"..color, "cristal:"..color},
				{"cristal:"..color, "cristal:"..color, "cristal:"..color},
				{"", "", ""}
			},
	})

minetest.register_craft({output = "cristal:pane_flat_"..color.."_double",
	recipe ={
		{"xpanes:cristal_pane_"..color.."_flat",},
		{"xpanes:cristal_pane_"..color.."_flat",},
	},
})

minetest.register_craft({output = "xpanes:cristal_pane_"..color.."_flat 2",
	type = "shapeless",
        recipe ={ "cristal:pane_flat_"..color.."_double" }
})

minetest.register_craft({output = "cristal:pane_flat_"..color.."_quadruple",
	recipe ={
		{"xpanes:cristal_pane_"..color.."_flat","xpanes:cristal_pane_"..color.."_flat",},
		{"xpanes:cristal_pane_"..color.."_flat","xpanes:cristal_pane_"..color.."_flat",},
	},
})

minetest.register_craft({output = "xpanes:cristal_pane_"..color.."_flat 4",
        type = "shapeless",
        recipe ={ "cristal:pane_flat_"..color.."_quadruple" }
})

end		




