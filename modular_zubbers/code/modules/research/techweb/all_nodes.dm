// RESEARCH NODES

/datum/techweb_node/cyber/empathy_implant
	id = TECHWEB_NODE_EMPATHY_IMPLANT
	display_name = "Empathic Sensor Implant"
	description = "The result of assuredly-ethical experiments conducted on those with special minds."
	prereq_ids = list(TECHWEB_NODE_CYBER_IMPLANTS)
	design_ids = list(
		"ci_empathic_sensor",
	)
	required_experiments = list(/datum/experiment/scanning/people/open_minds)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_4_POINTS)
	announce_channels = list(RADIO_CHANNEL_SCIENCE, RADIO_CHANNEL_MEDICAL)

/datum/techweb_node/botanygene
	id = TECHWEB_NODE_BOTANY_ADV
	display_name = "Experimental Botanical Engineering"
	description = "Further advancement in plant cultivation techniques and machinery, enabling careful manipulation of plant DNA."
	prereq_ids = list(TECHWEB_NODE_PARTS_ADV, TECHWEB_NODE_SELECTION)
	design_ids = list(
		"diskplantgene",
		"plantgene",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_5_POINTS)

/datum/techweb_node/parts_bluespace/New()
	. = ..()
	design_ids += list(
		"bs_experi_scanner",
		"bs_experi_scanner_cyborg",
	)

/datum/techweb_node/ai_laws/New()
	. = ..()
	design_ids += list(
		"crewsimov",
		"crewsimovpp",
		"ntos",
	)

// MEDICAL
/datum/techweb_node/medbay_equip_adv/New()
	. = ..()
	design_ids += list(
		"borg_upgrade_advancedanalyzer",
	)

/datum/techweb_node/xenobiology/New()
	. = ..()
	design_ids += list(
		"limbdesign_hemophage",
		"limbdesign_tajaran",
	)

//ENGINEERING
/datum/techweb_node/atmos/New()
	. = ..()
	design_ids += list(
		"nitrogen_tank",
		//"nitrogen_tank_belt", | Uncomment in case nitrogen internal tanks get refactored to no longer be 25L
		"anesthetic_tank",
	)

// TOOLS

/datum/techweb_node/mining/New()
	. = ..()
	design_ids += list(
		"interdyne_mining_equipment_vendor",
	)

// Robotics Tech

/datum/techweb_node/borg_engi/New()
	. = ..()
	design_ids += list(
		"borg_upgrade_advcutter",
		"borg_upgrade_inducer_sci",
		"borg_upgrade_brped",
		"rld_cyborg"
	)

/datum/techweb_node/borg_medical/New()
	design_ids += list(
		"borg_upgrade_surgicalprocessor_sci",
		"borg_upgrade_pinpointer",
	)
	return ..()

/datum/techweb_node/augmentation/New()
	. = ..()
	design_ids += list(
		"blanksynth",
		"dominatrixmodule",
		"borg_upgrade_expand",
		"borg_upgrade_shrink",
	)

/datum/techweb_node/borg_utility/New()
	. = ..()
	design_ids -= list(
		"borg_upgrade_expand" // Moved to default robotics, always available. It provides no practical benefit so it shouldn't be here
	)

/datum/techweb_node/borg_mining/New()
	. = ..()
	design_ids += list(
		"pinpointer_vent_cyborg",
		"adv_xenoarchbag_cyborg"
	)

// Computer Tech
/datum/techweb_node/gaming/New()
	. = ..()
	design_ids += list(
		"minesweeper",
	)

/datum/techweb_node/riot_supression/New()
	design_ids += "wt550_ammo_rubber"
	design_ids += "wt550_ammo_flathead"
	design_ids += "sol35_shortmag"
	design_ids += "m45_mag"
	design_ids += "s12g_hornet"
	design_ids += "s12g_antitide"
	design_ids += "s12g_rubber"
	design_ids += "s12g_bslug"
	design_ids += "s12g_incinslug"
	design_ids += "wt550_ammo_normal"
	design_ids += "sol35_shortextmag"
	design_ids += "sol40_riflemag"
	design_ids += "solgrenade_mag"
	. = ..()

/datum/techweb_node/exotic_ammo/New()
	design_ids += "wt550_ammo_ap"
	. = ..()

/datum/techweb_node/syndicate_basic/New()
	design_ids -= "mag_autorifle"
	design_ids -= "mag_autorifle_ap"
	design_ids -= "mag_autorifle_ic"
	design_ids += "wt550_ammo_incendiary"
	design_ids += "s12g_magnum"
	design_ids += "s12g_express"
	design_ids += "mod_mind_transfer"
	. = ..()

/datum/techweb_node/nerd
	id = TECHWEB_NODE_NERD
	display_name = "Theoretical Physics"
	description = "They asked me how well I understood theoretical physics. I said I had a theoretical degree in physics."
	prereq_ids = list(
		TECHWEB_NODE_ROBOTICS, //Suit AI
		TECHWEB_NODE_CHEM_SYNTHESIS, //Wound analyzer (and morphine production).
		TECHWEB_NODE_MOD_ENGI //Suit protection.
	)
	design_ids = list(
		"nerd_suit",
		"nerd_glases"
	)
	research_costs = list(
		TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_3_POINTS
	)

/datum/techweb_node/advanced_nerd
	id = TECHWEB_NODE_NERD_ADV
	display_name = "Advanced Theoretical Physics"
	description = "Scientists aren't supposed to have guns."
	prereq_ids = list(
		TECHWEB_NODE_ALIENTECH, //Memes.
		TECHWEB_NODE_ANOMALY_SHELLS, //Physgun
		TECHWEB_NODE_NERD, //Previous tier
		TECHWEB_NODE_EXP_TOOLS //Crowbar
	)
	design_ids = list(
		"physgun",
		"fast_crowbar"
	)
	research_costs = list(
		TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_4_POINTS
	)

/datum/techweb_node/mod_equip/New()
	design_ids += "mod_protean_servo"
	. = ..()

