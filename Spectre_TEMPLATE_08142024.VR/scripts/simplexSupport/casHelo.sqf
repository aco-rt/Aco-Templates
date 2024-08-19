//Name your helicopters "cas_helo_1", "cas_helo_2" and so on.  Add more iterations below if you need more helicopters.
//Then, add a gamelogic with this in the init: 
// execVM "scripts\add_SSS_cas.sqf";

if (!isServer) exitWith {};

sleep 10;

[
cas_helo_1,
"TRAPPER 6-1", //Callsign.  Leave blank for default.
1800, //Respawn time.
{(group _this) setVariable ["zhc_offload_blacklisted",true,true]; (group _this) setVariable ["acex_headless_blacklist",true,true]; _this enableRopeAttach false;}, //Custom init code for each spawned vehicle.
[
"itemMap"
],  //Access items.  Player must have one to use the asset remotely.
"true", //Access condition.  Must be true for players to see support.
"true" //Approval condition.  Must be true if the player will have the request approved by the provider.
] call SSS_support_fnc_addCasHelicopter;

sleep 1;

[
cas_helo_2,
"TRAPPER 6-2", //Callsign.  Leave blank for default.
1800, //Respawn time.
{(group _this) setVariable ["zhc_offload_blacklisted",true,true]; (group _this) setVariable ["acex_headless_blacklist",true,true]; _this enableRopeAttach false;}, //Custom init code for each spawned vehicle.
[
"itemMap"
],  //Access items.  Player must have one to use the asset remotely.
"true", //Access condition.  Must be true for players to see support.
"true" //Approval condition.  Must be true if the player will have the request approved by the provider.
] call SSS_support_fnc_addCasHelicopter;

sleep 1;

[
cas_helo_3,
"TRAPPER 6-3", //Callsign.  Leave blank for default.
1800, //Respawn time.
{(group _this) setVariable ["zhc_offload_blacklisted",true,true]; (group _this) setVariable ["acex_headless_blacklist",true,true]; _this enableRopeAttach false;}, //Custom init code for each spawned vehicle.
[
"itemMap"
],  //Access items.  Player must have one to use the asset remotely.
"true", //Access condition.  Must be true for players to see support. 
"true" //Approval condition.  Must be true if the player will have the request approved by the provider.
] call SSS_support_fnc_addCasHelicopter;