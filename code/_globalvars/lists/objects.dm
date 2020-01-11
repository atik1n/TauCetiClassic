var/global/list/poi_list = list()           //list of points of interest for observe/follow
var/global/list/cable_list = list()         //Index for all cables, so that powernets don't have to look through the entire world all the time
var/global/list/chemical_reactions_list     //list of all /datum/chemical_reaction datums. Used during chemical reactions
var/global/list/chemical_reagents_list      //list of all /datum/reagent datums indexed by reagent id. Used by chemistry stuff
var/global/list/closet_list = list()        //guess what? closets! /obj/structure/closet
var/global/list/crematorium_list = list()   //list if all /obj/structure/crematorium
var/global/list/implant_list = list()       //list of all /obj/item/weapon/implant
var/global/list/ladder_list = list()        //|====| <- /obj/structure/ladder
var/global/list/landmarks_list = list()     //list of all landmarks created
var/global/list/mecha_tracking_list = list()//list of all /obj/item/mecha_parts/mecha_tracking
var/global/list/surgery_steps = list()      //list of all surgery steps  |BS12
var/global/list/crafting_recipes = list()   //list of all personal craft recipes
var/global/list/side_effects = list()       //list of all medical sideeffects types by thier names |BS12
var/global/list/mechas_list = list()        //list of all mechs. Used by hostile mobs target tracking.
var/global/list/joblist = list()            //list of all jobstypes, minus borg and AI
var/global/list/all_dirt_covers = list()    //list of all /datum/dirt_covers with initial values.
var/global/list/tree_xmas_list = list()
var/global/list/rcd_list = list()
var/global/list/mecha_rcd_list = list()
var/global/list/remote_device_list = list()
var/global/list/decal_cleanable = list()
var/global/list/apc_list = list()
var/global/list/smes_list = list()
var/global/list/alarm_list = list()
var/global/list/firealarm_list = list()
var/global/list/aicore_deactivated_list = list()
var/global/list/scrubber_huge_list = list()
var/global/list/computer_list = list()
var/global/list/RDcomputer_list = list()
var/global/list/communications_list = list()
var/global/list/station_alert_list = list()
var/global/list/teleporter_list = list()
var/global/list/radio_beacon_list = list()
var/global/list/explosion_watcher_list = list()
var/global/list/beacon_medical_list = list() // not a child of beacon type :(
var/global/list/mop_list = list()
var/global/list/mopbucket_list = list()
var/global/list/bots_list = list()
var/global/list/janitorialcart_list = list()
var/global/list/portal_list = list()
var/global/list/centcom_barrier_list = list()
var/global/list/organ_head_list = list()
var/global/list/circuitboard_communications_list = list()
var/global/list/status_display_list = list()
var/global/list/ai_status_display_list = list()
var/global/list/paicard_list = list()
var/global/list/abductor_machinery_list = list()
var/global/list/poddoor_list = list()
var/global/list/mass_driver_list = list()
var/global/list/airlock_list = list()
var/global/list/brigdoor_list = list()
var/global/list/flasher_list = list()
var/global/list/holosign_list = list()
var/global/list/message_servers = list()
var/global/list/requests_console_list = list()
var/global/list/telecomms_list = list()
var/global/list/gateways_list = list()
var/global/list/conveyor_switch_list = list()
var/global/list/rnd_server_list = list()
var/global/list/PDAs = list()
var/global/list/facehuggers_list = list()

var/global/list/all_areas = list()
var/global/list/area/areas_by_type = list()
var/global/list/machines = list()
