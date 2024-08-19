if (!isServer) exitWith {};

sleep 10;

//Adds custom Hussar-only supply spawning
[
getposATL SSS_SupplyItems_01, //Code which tells the game where to put the crate     
getDir SSS_SupplyItems_01, //Code which tells the game which direction (in degrees) to point the spawned item
"Supplies and Vehicles (Spectre)",//Callsign of service
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

	"B_Truck_01_ammo_F", 
	"B_Quadbike_01_F", 
	"B_MRAP_01_F", 
	"B_MRAP_01_hmg_F", 
	"B_MRAP_01_gmg_F", 
	"B_Truck_01_fuel_F", 
	"B_Truck_01_medical_F", 
	"B_Truck_01_transport_F", 
	"B_Truck_01_Repair_F"

]},
// This is the end of the menu for droppable items.
"", //Custom init to put on each spawned item 
BLUFOR, //Side      
["itemMap"], //Access items.  Player must have at least one to use support.
"true", //Access condition.  Must be true for players to see support.
"true"  //Access permission.  Must be true for players requests to be accepted by support asset.
       
] call SSS_support_fnc_addLogisticsStation;