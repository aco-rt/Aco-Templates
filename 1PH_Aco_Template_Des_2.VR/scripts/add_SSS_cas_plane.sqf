//Add a gamelogic with this in the init: 
// execVM "scripts\add_SSS_cas_plane.sqf";

if (isServer) then {

sleep 10;

[

"B_BLUAC_GRIFFON_01", //Aircraft Classname 
"Lancer 3-1 (F/A-39E Strike Griffon)", //Callsign.  Leave blank for default. 
["Twin_Cannon_20mm","Bomb_04_Plane_CAS_01_F","Rocket_04_HE_Plane_CAS_01_F","Rocket_04_AP_Plane_CAS_01_F"], //Weapon Set.  Leave blank for default loadout. 
600, //Cooldown after use 
{(group _this) setVariable ["acex_headless_blacklist",true,true];}, //Custom init code 
BLUFOR, //Side of unit 
["FRXA_tf_rt1523g_Ranger_Green","FRXA_tf_rt1523g_big_Ranger_Green","vn_b_pack_prc77_01","vn_b_pack_lw_06"],  //Access items.  Player must have one to use the asset remotely.
"true",  //Access condition.  Must be true for asset to appear at all.
"true"  //Access permission.  Must be true for player's request to be approved. 

] call SSS_support_fnc_addCasPlane;

sleep 1;

[

"B_BLUAC_GRIFFON_01", //Aircraft Classname 
"Lancer 3-2 (F/A-39E Strike Griffon)", //Callsign.  Leave blank for default. 
["Twin_Cannon_20mm","Bomb_04_Plane_CAS_01_F","Rocket_04_HE_Plane_CAS_01_F","Rocket_04_AP_Plane_CAS_01_F"], //Weapon Set.  Leave blank for default loadout. 
600, //Cooldown after use 
{(group _this) setVariable ["acex_headless_blacklist",true,true];}, //Custom init code 
BLUFOR, //Side of unit 
["FRXA_tf_rt1523g_Ranger_Green","FRXA_tf_rt1523g_big_Ranger_Green","vn_b_pack_prc77_01","vn_b_pack_lw_06"],  //Access items.  Player must have one to use the asset remotely.
"true",  //Access condition.  Must be true for asset to appear at all.
"true"  //Access permission.  Must be true for player's request to be approved. 

] call SSS_support_fnc_addCasPlane;


};