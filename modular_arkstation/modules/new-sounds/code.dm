/obj/item/gun
	pickup_sound = 'modular_arkstation/modules/new-sounds/sound/gun_pickup.ogg'
	drop_sound = 'modular_arkstation/modules/new-sounds/sound/gun_drop.ogg'

/obj/item/flashlight
	sound_on = 'modular_arkstation/modules/new-sounds/sound/flashlight_on.ogg'
	sound_off = 'modular_arkstation/modules/new-sounds/sound/flashlight_off.ogg'

/obj/item/gun/ballistic/shotgun
	pickup_sound = 'modular_arkstation/modules/new-sounds/sound/shotgun_pickup.ogg'

/obj/item/gun/ballistic/shotgun/boltaction
	pickup_sound = 'modular_arkstation/modules/new-sounds/sound/rifle_pickup.ogg'

/obj/item/coin
	pickup_sound = 'modular_arkstation/modules/new-sounds/sound/coin_pickup.ogg'
	drop_sound = 'modular_arkstation/modules/new-sounds/sound/coin_drop.ogg'

/obj/item/knife
	pickup_sound = 'modular_arkstation/modules/new-sounds/sound/knife_pickup.ogg'
	drop_sound = 'modular_arkstation/modules/new-sounds/sound/knife_drop.ogg'

/obj/item/stack/rods
	pickup_sound = 'modular_arkstation/modules/new-sounds/sound/surgery1_pickup.ogg'
	drop_sound = 'modular_arkstation/modules/new-sounds/sound/metal_drop.ogg'

/obj/item/scalpel
	pickup_sound = 'modular_arkstation/modules/new-sounds/sound/surgery1_pickup.ogg'
	drop_sound = 'modular_arkstation/modules/new-sounds/sound/metal_drop.ogg'

/obj/item/retractor
	pickup_sound = 'modular_arkstation/modules/new-sounds/sound/surgery1_pickup.ogg'
	drop_sound = 'modular_arkstation/modules/new-sounds/sound/metal_drop.ogg'

/obj/item/hemostat
	pickup_sound = 'modular_arkstation/modules/new-sounds/sound/surgery1_pickup.ogg'
	drop_sound = 'modular_arkstation/modules/new-sounds/sound/metal_drop.ogg'

/obj/item/cautery
	pickup_sound = 'modular_arkstation/modules/new-sounds/sound/surgery1_pickup.ogg'
	drop_sound = 'modular_arkstation/modules/new-sounds/sound/metal_drop.ogg'

/obj/item/circular_saw
	pickup_sound = 'modular_arkstation/modules/new-sounds/sound/surgery1_pickup.ogg'
	drop_sound = 'modular_arkstation/modules/new-sounds/sound/metal_drop.ogg'

/obj/item/surgicaldrill
	pickup_sound = 'modular_arkstation/modules/new-sounds/sound/surgery1_pickup.ogg'
	drop_sound = 'modular_arkstation/modules/new-sounds/sound/metal_drop.ogg'

/obj/item/surgical_drapes
	pickup_sound =  'modular_arkstation/modules/new-sounds/sound/surgery2_pickup.ogg'

/obj/item/reagent_containers/cup
	pickup_sound = 'modular_arkstation/modules/new-sounds/sound/bottle_pickup.ogg'
	drop_sound = 'modular_arkstation/modules/new-sounds/sound/bottle_drop.ogg'

/obj/item/reagent_containers/cup/bottle
	pickup_sound = 'modular_arkstation/modules/new-sounds/sound/bottle_pickup.ogg'
	drop_sound = 'modular_arkstation/modules/new-sounds/sound/bottle_drop.ogg'

/obj/item/reagent_containers/cup/beaker
	pickup_sound = 'modular_arkstation/modules/new-sounds/sound/beaker_pickup.ogg'
	drop_sound = 'modular_arkstation/modules/new-sounds/sound/beaker_drop.ogg'

/obj/item/reagent_containers/throw_impact(atom/hit_atom, datum/thrownthing/throwingdatum)
	playsound(src.loc, 'modular_arkstation/modules/new-sounds/sound/watersplash.ogg', 40, 1)

