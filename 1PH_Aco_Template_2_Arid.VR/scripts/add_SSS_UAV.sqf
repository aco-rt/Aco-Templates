//Create a gamelogic and put this in the init:
// execVM "scripts\add_SSS_UAV.sqf";

if (isServer) then {

sleep 10;

[  
"B_UAV_02_dynamicLoadout_F", //Classname of the drone
"Palantir UAV",  //Callsign
300,  //Cooldown time between uses
1200,  //Loiter time
{
	(group _this) setVariable ["acex_headless_blacklist",true,true];
	for "_i" from 1 to 100 do {vehicle _this setPylonLoadout [_i, "", true];};
	},  //Custom init code
BLUFOR,  //Side (BLUFOR, OPFOR, or INDEPENDENT)
["FRXA_tf_rt1523g_Ranger_Green","FRXA_tf_rt1523g_big_Ranger_Green","vn_b_pack_prc77_01","vn_b_pack_lw_06"],  //Access items.  Player must have one to use the asset remotely.
"true",  //Access condition.  Must be true for asset to appear at all.
"true"  //Access permission.  Must be true for player's request to be approved.
  
] call SSS_support_fnc_addCASDrone;

sleep 1;

};