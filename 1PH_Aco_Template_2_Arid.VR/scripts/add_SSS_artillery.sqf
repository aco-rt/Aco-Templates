//Name your artillery units "arty_1", "arty_2" and so on.  Add more iterations below if you need more vehicles.
//Then, add a gamelogic with this in the init: 
// execVM "scripts\add_SSS_artillery.sqf";

if (isServer) then {

sleep 10;

[ 
arty_1, 
"EARTHSHAKER 1-1 (Heavy Mortar)", //Callsign/  Leave blank for default.
600, //Respawn time
[0,60], //Cooldown.  First number is the base cooldown time.  Second number is extra cooldown time for each round fired.
24, //Maximum rounds per fire mission.
100, //Distance in meters for coordination with other similar artillery units.
{(group _this) setVariable ["acex_headless_blacklist",true,true];}, //Custom init code
["FRXA_tf_rt1523g_Ranger_Green","FRXA_tf_rt1523g_big_Ranger_Green","vn_b_pack_prc77_01","vn_b_pack_lw_06"],  //Access items.  Player must have one to use the asset remotely.
"true", //Access condition.  Must be true if players can use it at all.
"true"  //Access permission.  Must be true for support provider to approve request.
] call SSS_support_fnc_addArtillery;

sleep 1;

[ 
arty_2, 
"EARTHSHAKER 1-2 (Heavy Mortar)", //Callsign/  Leave blank for default.
600, //Respawn time
[0,60], //Cooldown.  First number is the base cooldown time.  Second number is extra cooldown time for each round fired.
24, //Maximum rounds per fire mission.
100, //Distance in meters for coordination with other similar artillery units.
{(group _this) setVariable ["acex_headless_blacklist",true,true];}, //Custom init code
["FRXA_tf_rt1523g_Ranger_Green","FRXA_tf_rt1523g_big_Ranger_Green","vn_b_pack_prc77_01","vn_b_pack_lw_06"],  //Access items.  Player must have one to use the asset remotely.
"true", //Access condition.  Must be true if players can use it at all.
"true"  //Access permission.  Must be true for support provider to approve request.
] call SSS_support_fnc_addArtillery;

sleep 1;

[ 
arty_3, 
"EARTHSHAKER 1-3 (Heavy Mortar)", //Callsign/  Leave blank for default.
600, //Respawn time
[0,60], //Cooldown.  First number is the base cooldown time.  Second number is extra cooldown time for each round fired.
24, //Maximum rounds per fire mission.
100, //Distance in meters for coordination with other similar artillery units.
{(group _this) setVariable ["acex_headless_blacklist",true,true];}, //Custom init code
["FRXA_tf_rt1523g_Ranger_Green","FRXA_tf_rt1523g_big_Ranger_Green","vn_b_pack_prc77_01","vn_b_pack_lw_06"],  //Access items.  Player must have one to use the asset remotely.
"true", //Access condition.  Must be true if players can use it at all.
"true"  //Access permission.  Must be true for support provider to approve request.
] call SSS_support_fnc_addArtillery;

sleep 1;

};