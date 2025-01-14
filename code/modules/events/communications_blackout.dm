/datum/round_event_control/communications_blackout
	name = "Communications Blackout"
	typepath = /datum/round_event/communications_blackout
	weight = 30
	category = EVENT_CATEGORY_ENGINEERING
	description = "Heavily emps all telecommunication machines, blocking all communication for a while."
	min_wizard_trigger_potency = 0
	max_wizard_trigger_potency = 3

	track = EVENT_TRACK_MODERATE
	tags = list(TAG_COMMUNAL, TAG_SPOOKY)
/datum/round_event/communications_blackout
	announce_when = 1

/datum/round_event/communications_blackout/announce(fake)
	var/alert = pick( "Обнаружены ионосферные аномалии. Временный сбой телекоммуникаций неизбежен. Пожалуйста, свяжитесь с *%fj00)`5vc-BZZT",
		"Обнаружены ионосферные аномалии. Временные телекоммуникационные сбои*3mga;b4;'1v¬-BZZZT",
		"Обнаружены ионосферные аномалии. Временны телек#MCi46:5.;@63-BZZZZZT",
		"Обнаружены ионосферные ано'fZ\\kg5_0-BZZZZZT",
		"Обнаружены ион:%£ MCayj^j<.3-BZZZZZZT",
		"#4nd%;f4y6,>£%-BZZZZZZZT",
	)

	for(var/mob/living/silicon/ai/A in GLOB.ai_list) //AIs are always aware of communication blackouts.
		to_chat(A, "<br>[span_warning("<b>[alert]</b>")]<br>")

	if(prob(30) || fake) //most of the time, we don't want an announcement, so as to allow AIs to fake blackouts.
		priority_announce(alert, "Anomaly Alert", sound = ANNOUNCER_COMMSBLACKOUT) //SKYRAT EDIT CHANGE - ORIGINAL: priority_announce(alert, "Anomaly Alert")


/datum/round_event/communications_blackout/start()
	for(var/obj/machinery/telecomms/T in GLOB.telecomms_list)
		T.emp_act(EMP_HEAVY)
