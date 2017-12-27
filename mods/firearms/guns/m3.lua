
firearms.weapon.register(":firearms:m3", {
	description = "M3",
	mesh = "firearms_m3.obj",
	wield_scale = { x=2, y=2, z=2 },
	firearms = {
		weapon_type = "shotgun",
		hud = { crosshairs = { { image="firearms_crosshair_shotgun.png", } } },
		clip = {
			ammo = "firearms:bullet_12g",
			size = 8,
		},
		range = 15,
		spread = 150,
		shoot_cooldown = 1.2,
		weight = 3.2, -- in Kg
	},
})

firearms.ammo.register(":firearms:bullet_12g", {
	description = "12 Gauge Shells",
	firearms = {
		damage = 20,
		pellets = 8,
	},
})

if firearms.config.get_bool("allow_crafting", true) then

	local _, I, W = "", "default:steel_ingot", "default:wood"

	minetest.register_craft({
		output = "firearms:m3",
		recipe = {
			{ I, _, _ },
			{ W, I, _ },
			{ _, W, I },
		},
	})

	minetest.register_craft({
		output = "firearms:bullet_12g 8",
		type = "shapeless",
		recipe = {
			"firearms:iron_ball", "firearms:iron_ball",
			"firearms:iron_ball", "tnt:gunpowder",
		},
	})

end
