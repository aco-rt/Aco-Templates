//Name your helicopters "cas_helo_1", "cas_helo_2" and so on.  Add more iterations below if you need more helicopters.
//Then, add a gamelogic with this in the init: 
// execVM "scripts\add_SSS_cas.sqf";

if (isServer) then {

sleep 10;

[

cas_helo_1,
"Talon 6-1 (UH-4 Hellcat)", //Callsign.  Leave blank for default.
1800, //Respawn time.
{(group _this) setVariable ["acex_headless_blacklist",true,true];}, //Custom init code for each spawned vehicle.
["FRXA_tf_rt1523g_Ranger_Green","FRXA_tf_rt1523g_big_Ranger_Green","vn_b_pack_prc77_01","vn_b_pack_lw_06"],  //Access items.  Player must have one to use the asset remotely.
"true", //Access condition.  This must be true if the player can use it at all.
"true" //Approval condition.  Must be true if the player will have the request approved by the provider.

] call SSS_support_fnc_addCasHelicopter;

sleep 1;

[

cas_helo_2,
"Talon 6-2 (UH-4 Hellcat)", //Callsign.  Leave blank for default.
1800, //Respawn time.
{(group _this) setVariable ["acex_headless_blacklist",true,true];}, //Custom init code for each spawned vehicle.
["FRXA_tf_rt1523g_Ranger_Green","FRXA_tf_rt1523g_big_Ranger_Green","vn_b_pack_prc77_01","vn_b_pack_lw_06"],  //Access items.  Player must have one to use the asset remotely.
"true", //Access condition.  This must be true if the player can use it at all.
"true" //Approval condition.  Must be true if the player will have the request approved by the provider.

] call SSS_support_fnc_addCasHelicopter;

sleep 1;

};