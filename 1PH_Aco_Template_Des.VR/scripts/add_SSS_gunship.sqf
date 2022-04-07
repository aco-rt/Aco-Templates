// Add a gamelogic with this in the init: 
// execVM "scripts\add_SSS_gunship.sqf";
if (isServer) then {

sleep 10;

[
"B_T_VTOL_01_armed_F", //Classname for gunship vehicle
[1], //Turret path.  Leave default if unsure.  Suspected this is the position in the vehicle for the gunner.
"REAPER 1-1 (AU-400E GUNSHIP)", //Callsign.  Leave blank for default.
1800, //Cooldown
300, //Loiter Time
{
	(group _this) setVariable ["acex_headless_blacklist",true,true];
	_this setObjectTextureGlobal [0, "\ACM_CustomFactions\Vehicles\VTOL\VTOL_EXT01.paa"];
	_this setObjectTextureGlobal [1, "\ACM_CustomFactions\Vehicles\VTOL\VTOL_EXT02.paa"];
	_this setObjectTextureGlobal [2, "\ACM_CustomFactions\Vehicles\VTOL\VTOL_EXT03.paa"];
	_this setObjectTextureGlobal [3, "\ACM_CustomFactions\Vehicles\VTOL\VTOL_EXT04.paa"];	
	}, //Custom init code for each spawned vehicle.
BLUFOR, //Side
["FRXA_tf_rt1523g_Ranger_Green","FRXA_tf_rt1523g_big_Ranger_Green","vn_b_pack_prc77_01","vn_b_pack_lw_06"],  //Access items.  Player must have one to use the asset remotely.
"true", //Access condition.  This must be true if the player can use it at all.
"true" //Approval condition.  Must be true if the player will have the request approved by the provider.

] call SSS_support_fnc_addCASGunship;



};