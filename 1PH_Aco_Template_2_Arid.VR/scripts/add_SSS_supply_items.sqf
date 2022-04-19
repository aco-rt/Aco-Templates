//Create a gamelogic and place it somewhere you want the crates to spawn
//Name that gamelogic "supply_items_1" and put this in the init:
// execVM "scripts\add_SSS_supply_items.sqf";

if (isServer) then {

sleep 10;

[          
getposASL supply_items_1, //Code which tells the game where to put the crate     
random 360, //Code which tells the game which direction (in degrees) to point the spawned item
"Sling-Loadable Supply Crates",//Callsign of service
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
    }]

]},
// This is the end of the menu for droppable items.
"", //Custom init to put on each spawned item 
BLUFOR, //Side      
["FRXA_tf_rt1523g_Ranger_Green","FRXA_tf_rt1523g_big_Ranger_Green","vn_b_pack_prc77_01","vn_b_pack_lw_06"], //Access items.  Player must have at least one to use support.
"true", //Access condition.  Must be true for players to see support.
"true"  //Access permission.  Must be true for players requests to be accepted by support asset.
       
] call SSS_support_fnc_addLogisticsStation;

sleep 1;

};