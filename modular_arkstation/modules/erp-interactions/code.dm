/datum/component/interactable/can_interact(datum/interaction/interaction, mob/living/carbon/human/target)
	. = ..()
	if(!interaction.allow_act(target, self))
		return FALSE
	if(interaction.lewd && !target.client?.prefs?.read_preference(/datum/preference/toggle/erp))
		return FALSE
	if(!interaction.distance_allowed && !target.Adjacent(self))
		return FALSE
	if(interaction.category == INTERACTION_CAT_HIDE)
		return FALSE
	if(self == target && interaction.usage == INTERACTION_OTHER)
		return FALSE
	return TRUE

/datum/interaction/allow_act(mob/living/carbon/human/user, mob/living/carbon/human/target)
	. = ..()
	if(target == user && usage == INTERACTION_OTHER)
		return FALSE

	if(user_required_parts.len)
		for(var/thing in user_required_parts)
			var/obj/item/organ/external/genital/required_part = user.get_organ_slot(thing)
			if(isnull(required_part))
				return FALSE
			if(!required_part.is_exposed())
				return FALSE

	if(target_required_parts.len)
		for(var/thing in target_required_parts)
			var/obj/item/organ/external/genital/required_part = target.get_organ_slot(thing)
			if(isnull(required_part))
				return FALSE
			if(!required_part.is_exposed())
				return FALSE

	for(var/requirement in interaction_requires)
		switch(requirement)
			if(INTERACTION_REQUIRE_SELF_HAND)
				if(!user.get_active_hand())
					return FALSE
			if(INTERACTION_REQUIRE_TARGET_HAND)
				if(!target.get_active_hand())
					return FALSE
			else
				CRASH("Unimplemented interaction requirement '[requirement]'")
	return TRUE

/datum/interaction/act(mob/living/carbon/human/user, mob/living/carbon/human/target)
	. = ..()
	if(!allow_act(user, target))
		return
	if(!message)
		message_admins("Interaction had a null message list. '[name]'")
		return
	if(!islist(message) && istext(message))
		message_admins("Deprecated message handling for '[name]'. Correct format is a list with one entry. This message will only show once.")
		message = list(message)
	var/msg = pick(message)
	// We replace %USER% with nothing because manual_emote already prepends it.
	msg = trim(replacetext(replacetext(msg, "%TARGET%", "[target]"), "%USER%", ""), INTERACTION_MAX_CHAR)
	if(lewd)
		user.emote("subtler", null, msg, TRUE)
	else
		user.manual_emote(msg)
	if(user_messages.len)
		var/user_msg = pick(user_messages)
		user_msg = replacetext(replacetext(user_msg, "%TARGET%", "[target]"), "%USER%", "[user]")
		to_chat(user, user_msg)
	if(target_messages.len)
		var/target_msg = pick(target_messages)
		target_msg = replacetext(replacetext(target_msg, "%TARGET%", "[target]"), "%USER%", "[user]")
		to_chat(target, target_msg)
	if(sound_use)
		if(!sound_possible)
			message_admins("Interaction has sound_use set to TRUE but does not set sound! '[name]'")
			return
		if(!islist(sound_possible) && istext(sound_possible))
			message_admins("Deprecated sound handling for '[name]'. Correct format is a list with one entry. This message will only show once.")
			sound_possible = list(sound_possible)
		sound_cache = pick(sound_possible)
		for(var/mob/mob in view(sound_range, user))
			SEND_SOUND(sound_cache, mob)

	if(lewd)
		user.adjust_pleasure(user_pleasure)
		user.adjust_arousal(user_arousal)
		user.adjust_pain(user_pain)
		target.adjust_pleasure(target_pleasure)
		target.adjust_arousal(target_arousal)
		target.adjust_pain(target_pain)
