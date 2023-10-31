/obj/item/icona_madonna
	name = "Madonna icon"
	desc = "Икона великой Мадонны."
	icon =  'modular_arkstation/krashly_modulars/icons/obj/structures.dmi'
	icon_state = "madonna"

/obj/structure/desk_bell
	icon = 'modular_arkstation/krashly_modulars/icons/obj/structures.dmi'
	icon_state = "table-bell"

//InteQ

/obj/structure/sign/flag/inteq
	name = "flag of PMC InteQ"
	desc = "Коричнево-Оранжевый флаг с щитом по центру. Флаг пахнет кровью."
	icon = 'modular_arkstation/krashly_modulars/icons/obj/inteq_flag.dmi'
	icon_state = "full"
	item_flag = /obj/item/sign/flag/inteq

/obj/item/sign/flag/inteq
	name = "folded flag of the PMC InteQ"
	desc = "Сложенный флаг ЧВК 'InteQ'."
	icon = 'modular_arkstation/krashly_modulars/icons/obj/inteq_flag.dmi'
	icon_state = "mini"
	sign_path = /obj/structure/sign/flag/inteq

/obj/item/poster/random_inteq
	name = "random InteQ poster"
	poster_type = /obj/structure/sign/poster/contraband/inteq/random
	icon_state = "rolled_contraband"

/obj/structure/sign/poster/contraband/inteq/random
	name = "random contraband poster"
	icon_state = "random_contraband"
	never_random = TRUE
	random_basetype = /obj/structure/sign/poster/contraband/inteq

/obj/structure/sign/poster/contraband/inteq/inteq_recruitment
	name = "InteQ Recruitment"
	desc = "Увидь Галактику! Заработай денег! Вступай сегодня!"
	icon = 'modular_arkstation/krashly_modulars/icons/obj/poster.dmi'
	icon_state = "poster_inteq"

/obj/structure/sign/poster/contraband/inteq/inteq_sign
	name = "InteQ poster"
	desc = "Частная Военная Компания, занимающаяся обороной частных предприятий и выполнением заказов. В данный момент они хотят уничтожить Пакт между НТ и Синдикатом..."
	icon = 'modular_arkstation/krashly_modulars/icons/obj/poster.dmi'
	icon_state = "poster_inteq_baza"

/obj/structure/sign/poster/contraband/inteq/inteq_better_dead
	name = "Better Dead!"
	desc = "Сокрушим врагов!"
	icon = 'modular_arkstation/krashly_modulars/icons/obj/poster.dmi'
	icon_state = "poster_inteq_better_dead"

/obj/structure/sign/poster/contraband/inteq/inteq_no_peace
	name = "No peace!"
	desc = "Не имей сто друзей, а имей сто рублей, Вступай в ЧВК 'InteQ'!"
	icon = 'modular_arkstation/krashly_modulars/icons/obj/poster.dmi'
	icon_state = "poster_inteq_no_love"

/obj/structure/sign/poster/contraband/inteq/inteq_no_sex
	name = "No SEX"
	desc = "Хватит дрочить, вступай в ЧВК 'InteQ'!"
	icon = 'modular_arkstation/krashly_modulars/icons/obj/poster.dmi'
	icon_state = "poster_inteq_no_sex"

/obj/structure/sign/poster/contraband/inteq/inteq_vulp
	name = "InteQ Recruitment"
	desc = "Коричневый постер. На нём написано: 'Даже если ты дрочишь на вульп, вступай в ЧВК 'InteQ'. Сокрушим врагов вместе!'."
	icon = 'modular_arkstation/krashly_modulars/icons/obj/poster.dmi'
	icon_state = "poster_inteq_vulp"

/obj/item/storage/box/inteq_box
	name = "brown box"
	desc = "В неё определенно нет ничего опасного."
	icon = 'modular_arkstation/krashly_modulars/icons/obj/box.dmi'
	icon_state = "inteqbox"

/obj/item/storage/box/inteq_box/inteq_clothes
	name = "clothes kit"

/obj/item/storage/box/inteq_box/inteq_clothes/PopulateContents()
	new /obj/item/clothing/under/inteq(src)
	new /obj/item/clothing/suit/armor/inteq(src)
	new /obj/item/clothing/gloves/combat(src)
	new /obj/item/clothing/shoes/combat(src)
	new /obj/item/storage/belt/military/inteq(src)
	new /obj/item/clothing/glasses/hud/security/sunglasses/inteq(src)
	new /obj/item/clothing/head/helmet/swat/inteq(src)
	new /obj/item/clothing/mask/balaclava/breath/inteq(src)
	new /obj/item/storage/backpack/security/inteq(src)

/obj/item/soap/inteq
	desc = "Жёлтое мыло с крайне мощными химическими агентами, которые отмывают кровь быстрее."
	icon_state = "soapinteq"
	cleanspeed = 10
	icon = 'modular_arkstation/krashly_modulars/icons/obj/inteq_soap.dmi'
	lefthand_file = 'modular_arkstation/krashly_modulars/icons/mob/inhands/obj/lefthand.dmi'
	righthand_file = 'modular_arkstation/krashly_modulars/icons/mob/inhands/obj/righthand.dmi'

/obj/item/food/chips/intecookies
	name = "InteCookies"
	desc = "Песочное печенье, каждое из которых в форме маленьких щитов."
	icon = 'modular_arkstation/krashly_modulars/icons/obj/inteq_snacks.dmi'
	icon_state = "inteqcookies"
	trash_type = /obj/item/trash/intecookies
	tastes = list("shortbread cookies" = 1)
	foodtypes = JUNKFOOD

/obj/item/trash/intecookies
	name = "intecookies bag"
	icon = 'modular_arkstation/krashly_modulars/icons/obj/inteq_snacks.dmi'
	icon_state = "inteqcookies_trash"
	grind_results = list(/datum/reagent/aluminium = 1)

// /obj/item/storage/fancy/cigarettes/cigpack_inteq
// 	name = "cigarette packet"
// 	desc = "Пачка сигарет от известной ЧВК."
// 	icon = 'modular_arkstation/krashly_modulars/icons/obj/inteq_cigarettes.dmi'
// 	icon_state = "inteq"
// 	spawn_type = /obj/item/clothing/mask/cigarette/inteq

// /obj/item/clothing/mask/cigarette/inteq
// 	desc = "Сигарета от известной ЧВК."
// 	list_reagents = list(/datum/reagent/drug/nicotine = 15, /datum/reagent/medicine/omnizine = 15)
