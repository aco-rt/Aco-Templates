//Create a gamelogic and place it somewhere you want to simulate the aircraft flying from
//Name that gamelogic "SSS_airItems_01" and put this in the init:
// execVM "scripts\add_SSS_air_drops.sqf";

if (!isServer) exitWith {};

sleep 10;

[
"sab_C130_JC",   //Classname of the air-dropping vehicle.     
"WIZARD 2-1 (Airdrop Supplies)",   //Callsign of the support service.      
getposASL SSS_airItems_01,     //Location of the airlift start  
(300 + (random 300)), //Spawn delay      
120, //Flying height
//
// Below is the menu for droppable items.      
{[
	
	["B_supplyCrate_F","Empty Cargo Box","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\box_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 6] remoteExec ["ace_cargo_fnc_setSpace",0,true];	
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
    }], 
	
	["B_supplyCrate_F","Arsenal Box (5 Minutes)","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\box_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 6] remoteExec ["ace_cargo_fnc_setSpace",0,true];
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
		[_this,["Open Arsenal Box","[(_this select 0)] execVM 'scripts\timedArsenalBall.sqf'",[],1.5,false,true,"","_this distance _target < 2"]] remoteExec ["addAction",0];	
    }], 
   
	["FlexibleTank_01_forest_F","Vehicle Fuel","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\refuel_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];		
    }],
  
	["Box_NATO_AmmoVeh_F","Vehicle Ammo","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\rearm_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 300] call ace_rearm_fnc_setSupplyCount;
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
    }], 
	
	["B_supplyCrate_F","=== WOODLAND ===","",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 6] remoteExec ["ace_cargo_fnc_setSpace",0,true];	
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
    }], 
	
	"B_Truck_01_ammo_F", 
	"B_Quadbike_01_F", 
	"B_MRAP_01_F", 
	"B_MRAP_01_hmg_F", 
	"B_MRAP_01_gmg_F", 
	"B_Truck_01_fuel_F", 
	"B_Truck_01_medical_F", 
	"B_Truck_01_transport_F", 
	"B_Truck_01_Repair_F", 
	"B_Mortar_01_F", 
	"B_GMG_01_high_F", 
	"B_GMG_01_F"
	

]},
// This is the end of the menu for droppable items.         
"[_this] execVM 'scripts\simplexSupport\tarpSystem.sqf';",    //Custom init code for every dropped item.     
1,     //Maximum number of dropped items.
0,     //Color of marking smoke.  0=none, 1=yellow, 2=green, 3=red, 4=blue
300,   //Cooldown after use    
{
(group _this) setVariable ["zhc_offload_blacklisted",true,true]; 
(group _this) setVariable ["acex_headless_blacklist",true,true];
(group driver _this) setVariable ["daoExclude",true, true];
_this allowDamage false;
}, //Custom init for the air dropping vehicle itself
BLUFOR, //Side      
[
"itemMap"
],  //Access items.  Player must have one to use the asset remotely.
"true", //Access condition.  Must be true for players to see support.
"true"  //Access permission.  Must be true for players requests to be accepted by support asset.
       
] call SSS_support_fnc_addLogisticsAirdrop;

sleep 1;

[
"sab_C130_JC",   //Classname of the air-dropping vehicle.     
"WIZARD 2-2 (Airdrop Supplies)",   //Callsign of the support service.      
getposASL SSS_airItems_01,     //Location of the airlift start  
(300 + (random 300)), //Spawn delay     
120, //Flying height
//
// Below is the menu for droppable items.      
{[
	
	["B_supplyCrate_F","Empty Cargo Box","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\box_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 6] remoteExec ["ace_cargo_fnc_setSpace",0,true];	
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
    }], 
	
	["B_supplyCrate_F","Arsenal Box (5 Minutes)","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\box_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 6] remoteExec ["ace_cargo_fnc_setSpace",0,true];
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
		[_this,["Open Arsenal Box","[(_this select 0)] execVM 'scripts\timedArsenalBall.sqf'",[],1.5,false,true,"","_this distance _target < 2"]] remoteExec ["addAction",0];	
    }], 
   
	["FlexibleTank_01_forest_F","Vehicle Fuel","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\refuel_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];		
    }],
  
	["Box_NATO_AmmoVeh_F","Vehicle Ammo","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\rearm_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 300] call ace_rearm_fnc_setSupplyCount;
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
    }], 
	
	["B_supplyCrate_F","=== WOODLAND ===","",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 6] remoteExec ["ace_cargo_fnc_setSpace",0,true];	
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
    }], 
	
	"B_Truck_01_ammo_F", 
	"B_Quadbike_01_F", 
	"B_MRAP_01_F", 
	"B_MRAP_01_hmg_F", 
	"B_MRAP_01_gmg_F", 
	"B_Truck_01_fuel_F", 
	"B_Truck_01_medical_F", 
	"B_Truck_01_transport_F", 
	"B_Truck_01_Repair_F", 
	"B_Mortar_01_F", 
	"B_GMG_01_high_F", 
	"B_GMG_01_F"
	
 
]},
// This is the end of the menu for droppable items.         
"[_this] execVM 'scripts\simplexSupport\tarpSystem.sqf';",    //Custom init code for every dropped item.     
1,     //Maximum number of dropped items.
0,     //Color of marking smoke.  0=none, 1=yellow, 2=green, 3=red, 4=blue
300,   //Cooldown after use    
{
(group _this) setVariable ["zhc_offload_blacklisted",true,true]; 
(group _this) setVariable ["acex_headless_blacklist",true,true];
(group driver _this) setVariable ["daoExclude",true, true];
_this allowDamage false;
}, //Custom init for the air dropping vehicle itself
BLUFOR, //Side      
[
"itemMap"
],  //Access items.  Player must have one to use the asset remotely.
"true", //Access condition.  Must be true for players to see support.
"true"  //Access permission.  Must be true for players requests to be accepted by support asset.
           
] call SSS_support_fnc_addLogisticsAirdrop;

sleep 1;

[
"sab_C130_JC",   //Classname of the air-dropping vehicle.     
"WIZARD 2-3 (Airdrop Supplies)",   //Callsign of the support service.      
getposASL SSS_airItems_01,     //Location of the airlift start  
(300 + (random 300)), //Spawn delay     
120, //Flying height
//
// Below is the menu for droppable items.      
{[
	
	["B_supplyCrate_F","Empty Cargo Box","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\box_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 6] remoteExec ["ace_cargo_fnc_setSpace",0,true];	
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
    }], 
	
	["B_supplyCrate_F","Arsenal Box (5 Minutes)","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\box_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 6] remoteExec ["ace_cargo_fnc_setSpace",0,true];
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
		[_this,["Open Arsenal Box","[(_this select 0)] execVM 'scripts\timedArsenalBall.sqf'",[],1.5,false,true,"","_this distance _target < 2"]] remoteExec ["addAction",0];	
    }], 
   
	["FlexibleTank_01_forest_F","Vehicle Fuel","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\refuel_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];		
    }],
  
	["Box_NATO_AmmoVeh_F","Vehicle Ammo","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\rearm_ca.paa",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 300] call ace_rearm_fnc_setSupplyCount;
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
    }], 
	
	["B_supplyCrate_F","=== WOODLAND ===","",{ 
        clearItemCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this;
		[_this, 6] remoteExec ["ace_cargo_fnc_setSpace",0,true];	
		[_this, true, [0, 2, 0.5], 45] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
    }], 
	
	"B_Truck_01_ammo_F", 
	"B_Quadbike_01_F", 
	"B_MRAP_01_F", 
	"B_MRAP_01_hmg_F", 
	"B_MRAP_01_gmg_F", 
	"B_Truck_01_fuel_F", 
	"B_Truck_01_medical_F", 
	"B_Truck_01_transport_F", 
	"B_Truck_01_Repair_F", 
	"B_Mortar_01_F", 
	"B_GMG_01_high_F", 
	"B_GMG_01_F"
	
 
]},
// This is the end of the menu for droppable items.         
"[_this] execVM 'scripts\simplexSupport\tarpSystem.sqf';",    //Custom init code for every dropped item.     
1,     //Maximum number of dropped items.
0,     //Color of marking smoke.  0=none, 1=yellow, 2=green, 3=red, 4=blue
300,   //Cooldown after use    
{
(group _this) setVariable ["zhc_offload_blacklisted",true,true]; 
(group _this) setVariable ["acex_headless_blacklist",true,true];
(group driver _this) setVariable ["daoExclude",true, true];
_this allowDamage false;
}, //Custom init for the air dropping vehicle itself
BLUFOR, //Side      
[
"itemMap"
],  //Access items.  Player must have one to use the asset remotely.
"true", //Access condition.  Must be true for players to see support.
"true"  //Access permission.  Must be true for players requests to be accepted by support asset.
        
] call SSS_support_fnc_addLogisticsAirdrop;