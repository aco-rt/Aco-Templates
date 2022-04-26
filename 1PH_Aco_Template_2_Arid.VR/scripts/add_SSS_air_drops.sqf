//Create a gamelogic and place it somewhere you want to simulate the aircraft flying from
//Name that gamelogic "air_supply_1" and put this in the init:
// execVM "scripts\add_SSS_air_drops.sqf";

if (isServer) then {

sleep 10;

[
"B_BLUCAF_H145C_Blackfish_02",   //Classname of the air-dropping vehicle.     
"Wizard 1-1 (Airdrop Supplies)",   //Callsign of the support service.      
getposASL air_supply_1,     //Location of the airlift start  
300, //Spawn delay      
120, //Flying height
//
// Below is the menu for droppable items.      
{[
  ["B_supplyCrate_F","Empty Cargo Box","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\box_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 6] call ace_cargo_fnc_setSpace;	
		[_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }], 
	
	["B_supplyCrate_F","Spare Tires","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\box_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 6] call ace_cargo_fnc_setSpace;
		["ACE_Wheel", _this] call ace_cargo_fnc_loadItem;
		["ACE_Wheel", _this] call ace_cargo_fnc_loadItem;
		["ACE_Wheel", _this] call ace_cargo_fnc_loadItem;
		["ACE_Wheel", _this] call ace_cargo_fnc_loadItem;
		["ACE_Wheel", _this] call ace_cargo_fnc_loadItem;
		["ACE_Wheel", _this] call ace_cargo_fnc_loadItem;
		[_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }],

	["B_supplyCrate_F","Spare Tracks","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\box_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 6] call ace_cargo_fnc_setSpace;
		["ACE_Track", _this] call ace_cargo_fnc_loadItem;
		["ACE_Track", _this] call ace_cargo_fnc_loadItem;
		["ACE_Track", _this] call ace_cargo_fnc_loadItem;
		["ACE_Track", _this] call ace_cargo_fnc_loadItem;
		[_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }],	
   
 ["FlexibleTank_01_forest_F","Vehicle Fuel","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\refuel_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;		
    }],
  
 ["Box_NATO_AmmoVeh_F","Vehicle Ammo","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\rearm_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 300] call ace_rearm_fnc_setSupplyCount;
		[_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }], 
  
 ["B_supplyCrate_F","Communications, Personal Equipment, and Uniforms Box","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\backpack_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;  
	  _this addItemCargoGlobal ["RavPat_Arid_Camo",5]; 
	  _this addItemCargoGlobal ["RavPat_blu4_olive",5]; 
	  _this addBackpackCargoGlobal ["CUP_B_AlicePack_OD",5]; 
	  _this addBackpackCargoGlobal ["B_AssaultPack_rgr",5]; 
	  _this addBackpackCargoGlobal ["FRXA_tf_rt1523g_big_Ranger_Green",2]; 
	  _this addBackpackCargoGlobal ["FRXA_tf_rt1523g_Ranger_Green",2];   
	  _this addItemCargoGlobal ["TFAR_anprc152",20]; 
	  _this addItemCargoGlobal ["KNB_PanelRed",30]; 
	  _this addItemCargoGlobal ["KNB_PanelYellow",30]; 
	  _this addItemCargoGlobal ["KNB_PanelGreen",30]; 
		[_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }], 
  
 ["B_supplyCrate_F","Medical Supplies","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\heal_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;  
	  _this addItemCargoGlobal ["ACE_adenosine",40]; 
	  _this addItemCargoGlobal ["ACE_fieldDressing",400]; 
	  _this addItemCargoGlobal ["ACE_elasticBandage",400]; 
	  _this addItemCargoGlobal ["ACE_packingBandage",400]; 
	  _this addItemCargoGlobal ["ACE_quikclot",400]; 
	  _this addItemCargoGlobal ["ACE_bloodIV",40]; 
	  _this addItemCargoGlobal ["ACE_bloodIV_250",120]; 
	  _this addItemCargoGlobal ["ACE_bloodIV_500",80]; 
	  _this addItemCargoGlobal ["ACE_bodyBag",60]; 
	  _this addItemCargoGlobal ["ACE_epinephrine",120]; 
	  _this addItemCargoGlobal ["ACE_morphine",120]; 
	  _this addItemCargoGlobal ["ACE_surgicalKit",5]; 
	  _this addItemCargoGlobal ["ACE_tourniquet",400]; 
	  [_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }], 
  
  
 ["B_supplyCrate_F","x100 30Rnd 5.56 Magazines","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\rifle_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this; 
        _this addMagazineCargoGlobal ["ACE_30Rnd_556x45_Stanag_M995_AP_mag",70];
		_this addMagazineCargoGlobal ["30Rnd_556x45_Stanag_Tracer_Red",30];
		[_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }],  
	
 ["B_supplyCrate_F","x30 Mk48 Boxes","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\rifle_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		_this addMagazineCargoGlobal ["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",30];
		[_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }],  
	
 ["B_supplyCrate_F","Mixed Ammunition Supply","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\rifle_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
	  _this addMagazineCargoGlobal ["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30]; 
	  _this addMagazineCargoGlobal ["CUP_30Rnd_TE1_Red_Tracer_762x51_FNFAL_M",10]; 
	  _this addMagazineCargoGlobal ["CUP_21Rnd_9x19_M17_Black",20]; 
    _this addMagazineCargoGlobal ["HandGrenade",20];
	  _this addMagazineCargoGlobal ["CUP_1Rnd_HEDP_M203",20]; 
	  _this addMagazineCargoGlobal ["SmokeShell",20]; 
	  _this addMagazineCargoGlobal ["SmokeShellBlue",10]; 
	  _this addMagazineCargoGlobal ["ACE_M84",10]; 
	  _this addMagazineCargoGlobal ["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",10]; 
	  _this addMagazineCargoGlobal ["CUP_MAAWS_HEAT_M",10]; 
	  [_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }],  
  
  
 ["B_supplyCrate_F","LAT(AT4,Law) Box","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\target_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this; 
  _this addWeaponCargoGlobal ["CUP_launch_M136",5]; 
  _this addWeaponCargoGlobal ["CUP_launch_M72A6",8]; 
  [_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }],  
  
 ["B_supplyCrate_F","MAAWS Box","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\target_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this; 
  _this addWeaponCargoGlobal ["launch_MRAWS_green_F",1]; 
  _this addMagazineCargoGlobal ["CUP_MAAWS_HEAT_M",30]; 
  [_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }],  
  
 ["B_supplyCrate_F","ATGM Box","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\target_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this; 
  _this addWeaponCargoGlobal ["launch_I_Titan_short_F",1]; 
  _this addMagazineCargoGlobal ["Titan_AT",9]; 
  _this addMagazineCargoGlobal ["Titan_AP",3]; 
  [_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }],  
  
 ["B_supplyCrate_F","MANPAD Box","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\target_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this; 
  _this addWeaponCargoGlobal ["launch_B_Titan_olive_F",1]; 
  _this addMagazineCargoGlobal ["Titan_AA",12]; 
  [_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }], 
	
 ["Land_FoodSacks_01_cargo_white_idap_F","Humanitarian Aid","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\meet_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this; 
		[_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }],
 
	"B_BLUCHUSW_B_APC_Wheeled_03_cannon_F", 
	"B_BLUCHUSW_CUP_B_M1126_ICV_M2", 
	"B_BLUCHUSW_CUP_B_M1126_ICV_MK19", 
	"B_BLUCHUSW_CUP_B_M1128_MGS", 
	"B_BLUCHUSW_CUP_B_M1130_CV_M2", 
	"B_BLUCHUSW_CUP_B_M1133_MEV", 
	"B_BLUCHUSW_CUP_B_M1135_ATGMV", 
	"B_BLUCHUSW_CUP_B_M1129", 
	"B_BLUCHUSW_B_Quadbike_01_F", 
	"B_BLUCHUSW_MRAP_03_F", 
	"B_BLUCHUSW_MRAP_03_gmg_F", 
	"B_BLUCHUSW_MRAP_03_hmg_F", 
	"B_BLUCHUSW_Trakker_ammo_01", 
	"B_BLUCHUSW_Trakker_fuel_01", 
	"B_BLUCHUSW_Trakker_med_01", 
	"B_BLUCHUSW_Trakker_repair_01", 
	"B_BLUCHUSW_Trakker_02", 
	"B_BLUCHUSW_Trakker_01", 
	"B_BLUCHUSW_B_T_AFV_Wheeled_01_cannon_F", 
	"B_BLUCHUSW_B_AFV_Wheeled_01_cannon_F", 
	"B_BLUCHUSW_CUP_B_CUP_Stinger_AA_pod_US", 
	"B_BLUCHUSW_HMG_02_low", 
	"B_BLUCHUSW_HMG_02_high", 
	"B_BLUCHUSW_CUP_B_TOW2_TriPod_US", 
	"B_BLUCHUSW_CUP_B_M252_US", 
	"B_BLUCHUSW_CUP_B_MK19_TriPod_US", 
	"B_BLUCHUSW_CUP_B_CUP_SearchLight_static_US"
 


]},
// This is the end of the menu for droppable items.         
"",    //Custom init code for every dropped item.     
1,     //Maximum number of dropped items.
4,     //Color of marking smoke.  0=none, 1=yellow, 2=green, 3=red, 4=blue
360,   //Cooldown after use    
{(group _this) setVariable ["acex_headless_blacklist",true,true];}, //Custom init for the air dropping vehicle itself
BLUFOR, //Side         
["FRXA_tf_rt1523g_Ranger_Green","FRXA_tf_rt1523g_big_Ranger_Green","vn_b_pack_prc77_01","vn_b_pack_lw_06"],  //Access items.  Player must have one to use the asset remotely.
"true", //Access condition.  Must be true for player to see asset at all.        
"true" //Access permission.  Must be true for player's request to be approved.   ex:  {[fobPowered,"FOB must be powered for request to be approved!"]} 
         
] call SSS_support_fnc_addLogisticsAirdrop;

[
"B_T_VTOL_01_vehicle_F",   //Classname of the air-dropping vehicle.     
"Wizard 1-2 (Airdrop Supplies)",   //Callsign of the support service.      
getposASL air_supply_1,     //Location of the airlift start  
300, //Spawn delay      
120, //Flying height
//
// Below is the menu for droppable items.      
{[
  ["B_supplyCrate_F","Empty Cargo Box","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\box_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 6] call ace_cargo_fnc_setSpace;	
		[_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }], 
	
	["B_supplyCrate_F","Spare Tires","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\box_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 6] call ace_cargo_fnc_setSpace;
		["ACE_Wheel", _this] call ace_cargo_fnc_loadItem;
		["ACE_Wheel", _this] call ace_cargo_fnc_loadItem;
		["ACE_Wheel", _this] call ace_cargo_fnc_loadItem;
		["ACE_Wheel", _this] call ace_cargo_fnc_loadItem;
		["ACE_Wheel", _this] call ace_cargo_fnc_loadItem;
		["ACE_Wheel", _this] call ace_cargo_fnc_loadItem;
		[_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }],

	["B_supplyCrate_F","Spare Tracks","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\box_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 6] call ace_cargo_fnc_setSpace;
		["ACE_Track", _this] call ace_cargo_fnc_loadItem;
		["ACE_Track", _this] call ace_cargo_fnc_loadItem;
		["ACE_Track", _this] call ace_cargo_fnc_loadItem;
		["ACE_Track", _this] call ace_cargo_fnc_loadItem;
		[_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }],	
   
 ["FlexibleTank_01_forest_F","Vehicle Fuel","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\refuel_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;		
    }],
  
 ["Box_NATO_AmmoVeh_F","Vehicle Ammo","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\rearm_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 300] call ace_rearm_fnc_setSupplyCount;
		[_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }], 
  
 ["B_supplyCrate_F","Communications, Personal Equipment, and Uniforms Box","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\backpack_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;  
	  _this addItemCargoGlobal ["RavPat_Arid_Camo",5]; 
	  _this addItemCargoGlobal ["RavPat_blu4_olive",5]; 
	  _this addBackpackCargoGlobal ["CUP_B_AlicePack_OD",5]; 
	  _this addBackpackCargoGlobal ["B_AssaultPack_rgr",5]; 
	  _this addBackpackCargoGlobal ["FRXA_tf_rt1523g_big_Ranger_Green",2]; 
	  _this addBackpackCargoGlobal ["FRXA_tf_rt1523g_Ranger_Green",2];   
	  _this addItemCargoGlobal ["TFAR_anprc152",20]; 
	  _this addItemCargoGlobal ["KNB_PanelRed",30]; 
	  _this addItemCargoGlobal ["KNB_PanelYellow",30]; 
	  _this addItemCargoGlobal ["KNB_PanelGreen",30]; 
		[_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }], 
  
 ["B_supplyCrate_F","Medical Supplies","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\heal_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;  
	  _this addItemCargoGlobal ["ACE_adenosine",40]; 
	  _this addItemCargoGlobal ["ACE_fieldDressing",400]; 
	  _this addItemCargoGlobal ["ACE_elasticBandage",400]; 
	  _this addItemCargoGlobal ["ACE_packingBandage",400]; 
	  _this addItemCargoGlobal ["ACE_quikclot",400]; 
	  _this addItemCargoGlobal ["ACE_bloodIV",40]; 
	  _this addItemCargoGlobal ["ACE_bloodIV_250",120]; 
	  _this addItemCargoGlobal ["ACE_bloodIV_500",80]; 
	  _this addItemCargoGlobal ["ACE_bodyBag",60]; 
	  _this addItemCargoGlobal ["ACE_epinephrine",120]; 
	  _this addItemCargoGlobal ["ACE_morphine",120]; 
	  _this addItemCargoGlobal ["ACE_surgicalKit",5]; 
	  _this addItemCargoGlobal ["ACE_tourniquet",400]; 
	  [_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }], 
  
  
 ["B_supplyCrate_F","x100 30Rnd 5.56 Magazines","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\rifle_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this; 
        _this addMagazineCargoGlobal ["ACE_30Rnd_556x45_Stanag_M995_AP_mag",70];
		_this addMagazineCargoGlobal ["30Rnd_556x45_Stanag_Tracer_Red",30];
		[_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }],  
	
 ["B_supplyCrate_F","x30 Mk48 Boxes","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\rifle_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		_this addMagazineCargoGlobal ["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",30];
		[_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }],  
	
 ["B_supplyCrate_F","Mixed Ammunition Supply","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\rifle_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
	  _this addMagazineCargoGlobal ["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30]; 
	  _this addMagazineCargoGlobal ["CUP_30Rnd_TE1_Red_Tracer_762x51_FNFAL_M",10]; 
	  _this addMagazineCargoGlobal ["CUP_21Rnd_9x19_M17_Black",20]; 
    _this addMagazineCargoGlobal ["HandGrenade",20];
	  _this addMagazineCargoGlobal ["CUP_1Rnd_HEDP_M203",20]; 
	  _this addMagazineCargoGlobal ["SmokeShell",20]; 
	  _this addMagazineCargoGlobal ["SmokeShellBlue",10]; 
	  _this addMagazineCargoGlobal ["ACE_M84",10]; 
	  _this addMagazineCargoGlobal ["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",10]; 
	  _this addMagazineCargoGlobal ["CUP_MAAWS_HEAT_M",10]; 
	  [_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }],  
  
  
 ["B_supplyCrate_F","LAT(AT4,Law) Box","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\target_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this; 
  _this addWeaponCargoGlobal ["CUP_launch_M136",5]; 
  _this addWeaponCargoGlobal ["CUP_launch_M72A6",8]; 
  [_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }],  
  
 ["B_supplyCrate_F","MAAWS Box","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\target_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this; 
  _this addWeaponCargoGlobal ["launch_MRAWS_green_F",1]; 
  _this addMagazineCargoGlobal ["CUP_MAAWS_HEAT_M",30]; 
  [_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }],  
  
 ["B_supplyCrate_F","ATGM Box","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\target_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this; 
  _this addWeaponCargoGlobal ["launch_I_Titan_short_F",1]; 
  _this addMagazineCargoGlobal ["Titan_AT",9]; 
  _this addMagazineCargoGlobal ["Titan_AP",3]; 
  [_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }],  
  
 ["B_supplyCrate_F","MANPAD Box","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\target_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this; 
  _this addWeaponCargoGlobal ["launch_B_Titan_olive_F",1]; 
  _this addMagazineCargoGlobal ["Titan_AA",12]; 
  [_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }], 
	
 ["Land_FoodSacks_01_cargo_white_idap_F","Humanitarian Aid","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\meet_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this; 
		[_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }],
 
	"B_BLUCHUSW_B_APC_Wheeled_03_cannon_F", 
	"B_BLUCHUSW_CUP_B_M1126_ICV_M2", 
	"B_BLUCHUSW_CUP_B_M1126_ICV_MK19", 
	"B_BLUCHUSW_CUP_B_M1128_MGS", 
	"B_BLUCHUSW_CUP_B_M1130_CV_M2", 
	"B_BLUCHUSW_CUP_B_M1133_MEV", 
	"B_BLUCHUSW_CUP_B_M1135_ATGMV", 
	"B_BLUCHUSW_CUP_B_M1129", 
	"B_BLUCHUSW_B_Quadbike_01_F", 
	"B_BLUCHUSW_MRAP_03_F", 
	"B_BLUCHUSW_MRAP_03_gmg_F", 
	"B_BLUCHUSW_MRAP_03_hmg_F", 
	"B_BLUCHUSW_Trakker_ammo_01", 
	"B_BLUCHUSW_Trakker_fuel_01", 
	"B_BLUCHUSW_Trakker_med_01", 
	"B_BLUCHUSW_Trakker_repair_01", 
	"B_BLUCHUSW_Trakker_02", 
	"B_BLUCHUSW_Trakker_01", 
	"B_BLUCHUSW_B_T_AFV_Wheeled_01_cannon_F", 
	"B_BLUCHUSW_B_AFV_Wheeled_01_cannon_F", 
	"B_BLUCHUSW_CUP_B_CUP_Stinger_AA_pod_US", 
	"B_BLUCHUSW_HMG_02_low", 
	"B_BLUCHUSW_HMG_02_high", 
	"B_BLUCHUSW_CUP_B_TOW2_TriPod_US", 
	"B_BLUCHUSW_CUP_B_M252_US", 
	"B_BLUCHUSW_CUP_B_MK19_TriPod_US", 
	"B_BLUCHUSW_CUP_B_CUP_SearchLight_static_US"
 


]},
// This is the end of the menu for droppable items.         
"",    //Custom init code for every dropped item.     
1,     //Maximum number of dropped items.
4,     //Color of marking smoke.  0=none, 1=yellow, 2=green, 3=red, 4=blue
360,   //Cooldown after use    
{(group _this) setVariable ["acex_headless_blacklist",true,true];}, //Custom init for the air dropping vehicle itself
BLUFOR, //Side         
["FRXA_tf_rt1523g_Ranger_Green","FRXA_tf_rt1523g_big_Ranger_Green","vn_b_pack_prc77_01","vn_b_pack_lw_06"],  //Access items.  Player must have one to use the asset remotely.
"true", //Access condition.  Must be true for player to see asset at all.        
"true" //Access permission.  Must be true for player's request to be approved.   ex:  {[fobPowered,"FOB must be powered for request to be approved!"]}    
         
] call SSS_support_fnc_addLogisticsAirdrop;

[
"B_T_VTOL_01_vehicle_F",   //Classname of the air-dropping vehicle.     
"Wizard 1-3 (Airdrop Supplies)",   //Callsign of the support service.      
getposASL air_supply_1,     //Location of the airlift start  
300, //Spawn delay      
120, //Flying height
//
// Below is the menu for droppable items.      
{[
  ["B_supplyCrate_F","Empty Cargo Box","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\box_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 6] call ace_cargo_fnc_setSpace;	
		[_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }], 
	
	["B_supplyCrate_F","Spare Tires","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\box_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 6] call ace_cargo_fnc_setSpace;
		["ACE_Wheel", _this] call ace_cargo_fnc_loadItem;
		["ACE_Wheel", _this] call ace_cargo_fnc_loadItem;
		["ACE_Wheel", _this] call ace_cargo_fnc_loadItem;
		["ACE_Wheel", _this] call ace_cargo_fnc_loadItem;
		["ACE_Wheel", _this] call ace_cargo_fnc_loadItem;
		["ACE_Wheel", _this] call ace_cargo_fnc_loadItem;
		[_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }],

	["B_supplyCrate_F","Spare Tracks","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\box_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 6] call ace_cargo_fnc_setSpace;
		["ACE_Track", _this] call ace_cargo_fnc_loadItem;
		["ACE_Track", _this] call ace_cargo_fnc_loadItem;
		["ACE_Track", _this] call ace_cargo_fnc_loadItem;
		["ACE_Track", _this] call ace_cargo_fnc_loadItem;
		[_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }],	
   
 ["FlexibleTank_01_forest_F","Vehicle Fuel","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\refuel_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;		
    }],
  
 ["Box_NATO_AmmoVeh_F","Vehicle Ammo","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\rearm_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 300] call ace_rearm_fnc_setSupplyCount;
		[_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }], 
  
 ["B_supplyCrate_F","Communications, Personal Equipment, and Uniforms Box","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\backpack_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;  
	  _this addItemCargoGlobal ["RavPat_Arid_Camo",5]; 
	  _this addItemCargoGlobal ["RavPat_blu4_olive",5]; 
	  _this addBackpackCargoGlobal ["CUP_B_AlicePack_OD",5]; 
	  _this addBackpackCargoGlobal ["B_AssaultPack_rgr",5]; 
	  _this addBackpackCargoGlobal ["FRXA_tf_rt1523g_big_Ranger_Green",2]; 
	  _this addBackpackCargoGlobal ["FRXA_tf_rt1523g_Ranger_Green",2];   
	  _this addItemCargoGlobal ["TFAR_anprc152",20]; 
	  _this addItemCargoGlobal ["KNB_PanelRed",30]; 
	  _this addItemCargoGlobal ["KNB_PanelYellow",30]; 
	  _this addItemCargoGlobal ["KNB_PanelGreen",30]; 
		[_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }], 
  
 ["B_supplyCrate_F","Medical Supplies","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\heal_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;  
	  _this addItemCargoGlobal ["ACE_adenosine",40]; 
	  _this addItemCargoGlobal ["ACE_fieldDressing",400]; 
	  _this addItemCargoGlobal ["ACE_elasticBandage",400]; 
	  _this addItemCargoGlobal ["ACE_packingBandage",400]; 
	  _this addItemCargoGlobal ["ACE_quikclot",400]; 
	  _this addItemCargoGlobal ["ACE_bloodIV",40]; 
	  _this addItemCargoGlobal ["ACE_bloodIV_250",120]; 
	  _this addItemCargoGlobal ["ACE_bloodIV_500",80]; 
	  _this addItemCargoGlobal ["ACE_bodyBag",60]; 
	  _this addItemCargoGlobal ["ACE_epinephrine",120]; 
	  _this addItemCargoGlobal ["ACE_morphine",120]; 
	  _this addItemCargoGlobal ["ACE_surgicalKit",5]; 
	  _this addItemCargoGlobal ["ACE_tourniquet",400]; 
	  [_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }], 
  
  
 ["B_supplyCrate_F","x100 30Rnd 5.56 Magazines","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\rifle_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this; 
        _this addMagazineCargoGlobal ["ACE_30Rnd_556x45_Stanag_M995_AP_mag",70];
		_this addMagazineCargoGlobal ["30Rnd_556x45_Stanag_Tracer_Red",30];
		[_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }],  
	
 ["B_supplyCrate_F","x30 Mk48 Boxes","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\rifle_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		_this addMagazineCargoGlobal ["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",30];
		[_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }],  
	
 ["B_supplyCrate_F","Mixed Ammunition Supply","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\rifle_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
	  _this addMagazineCargoGlobal ["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30]; 
	  _this addMagazineCargoGlobal ["CUP_30Rnd_TE1_Red_Tracer_762x51_FNFAL_M",10]; 
	  _this addMagazineCargoGlobal ["CUP_21Rnd_9x19_M17_Black",20]; 
    _this addMagazineCargoGlobal ["HandGrenade",20];
	  _this addMagazineCargoGlobal ["CUP_1Rnd_HEDP_M203",20]; 
	  _this addMagazineCargoGlobal ["SmokeShell",20]; 
	  _this addMagazineCargoGlobal ["SmokeShellBlue",10]; 
	  _this addMagazineCargoGlobal ["ACE_M84",10]; 
	  _this addMagazineCargoGlobal ["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",10]; 
	  _this addMagazineCargoGlobal ["CUP_MAAWS_HEAT_M",10]; 
	  [_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }],  
  
  
 ["B_supplyCrate_F","LAT(AT4,Law) Box","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\target_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this; 
  _this addWeaponCargoGlobal ["CUP_launch_M136",5]; 
  _this addWeaponCargoGlobal ["CUP_launch_M72A6",8]; 
  [_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }],  
  
 ["B_supplyCrate_F","MAAWS Box","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\target_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this; 
  _this addWeaponCargoGlobal ["launch_MRAWS_green_F",1]; 
  _this addMagazineCargoGlobal ["CUP_MAAWS_HEAT_M",30]; 
  [_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }],  
  
 ["B_supplyCrate_F","ATGM Box","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\target_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this; 
  _this addWeaponCargoGlobal ["launch_I_Titan_short_F",1]; 
  _this addMagazineCargoGlobal ["Titan_AT",9]; 
  _this addMagazineCargoGlobal ["Titan_AP",3]; 
  [_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }],  
  
 ["B_supplyCrate_F","MANPAD Box","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\target_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this; 
  _this addWeaponCargoGlobal ["launch_B_Titan_olive_F",1]; 
  _this addMagazineCargoGlobal ["Titan_AA",12]; 
  [_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }], 
	
 ["Land_FoodSacks_01_cargo_white_idap_F","Humanitarian Aid","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\meet_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this; 
		[_this, true, [0, 2, 0.5], 45] call ace_dragging_fnc_setDraggable;
    }],
 
	"B_BLUCHUSW_B_APC_Wheeled_03_cannon_F", 
	"B_BLUCHUSW_CUP_B_M1126_ICV_M2", 
	"B_BLUCHUSW_CUP_B_M1126_ICV_MK19", 
	"B_BLUCHUSW_CUP_B_M1128_MGS", 
	"B_BLUCHUSW_CUP_B_M1130_CV_M2", 
	"B_BLUCHUSW_CUP_B_M1133_MEV", 
	"B_BLUCHUSW_CUP_B_M1135_ATGMV", 
	"B_BLUCHUSW_CUP_B_M1129", 
	"B_BLUCHUSW_B_Quadbike_01_F", 
	"B_BLUCHUSW_MRAP_03_F", 
	"B_BLUCHUSW_MRAP_03_gmg_F", 
	"B_BLUCHUSW_MRAP_03_hmg_F", 
	"B_BLUCHUSW_Trakker_ammo_01", 
	"B_BLUCHUSW_Trakker_fuel_01", 
	"B_BLUCHUSW_Trakker_med_01", 
	"B_BLUCHUSW_Trakker_repair_01", 
	"B_BLUCHUSW_Trakker_02", 
	"B_BLUCHUSW_Trakker_01", 
	"B_BLUCHUSW_B_T_AFV_Wheeled_01_cannon_F", 
	"B_BLUCHUSW_B_AFV_Wheeled_01_cannon_F", 
	"B_BLUCHUSW_CUP_B_CUP_Stinger_AA_pod_US", 
	"B_BLUCHUSW_HMG_02_low", 
	"B_BLUCHUSW_HMG_02_high", 
	"B_BLUCHUSW_CUP_B_TOW2_TriPod_US", 
	"B_BLUCHUSW_CUP_B_M252_US", 
	"B_BLUCHUSW_CUP_B_MK19_TriPod_US", 
	"B_BLUCHUSW_CUP_B_CUP_SearchLight_static_US"
 


]},
// This is the end of the menu for droppable items.         
"",    //Custom init code for every dropped item.     
1,     //Maximum number of dropped items.
4,     //Color of marking smoke.  0=none, 1=yellow, 2=green, 3=red, 4=blue
360,   //Cooldown after use    
{(group _this) setVariable ["acex_headless_blacklist",true,true];}, //Custom init for the air dropping vehicle itself
BLUFOR, //Side         
["FRXA_tf_rt1523g_Ranger_Green","FRXA_tf_rt1523g_big_Ranger_Green","vn_b_pack_prc77_01","vn_b_pack_lw_06"],  //Access items.  Player must have one to use the asset remotely.
"true", //Access condition.  Must be true for player to see asset at all.        
"true" //Access permission.  Must be true for player's request to be approved.   ex:  {[fobPowered,"FOB must be powered for request to be approved!"]}    
         
] call SSS_support_fnc_addLogisticsAirdrop;

};