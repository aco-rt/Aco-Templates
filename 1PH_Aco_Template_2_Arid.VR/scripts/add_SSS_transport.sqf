//Name your vehicles "tran_helo_1", "tran_helo_1" and so on.  Add more iterations below if you need more vehicles.
//Then, add a gamelogic with this in the init: 
// execVM "scripts\add_SSS_transport.sqf";

if (isServer) then {

sleep 10;


[
tran_helo_1,
"", //Callsign.  Leave blank for default.
1800, //Respawn time in seconds.
{(group _this) setVariable ["acex_headless_blacklist",true,true];}, //Custom init code.
["FRXA_tf_rt1523g_Ranger_Green","FRXA_tf_rt1523g_big_Ranger_Green","vn_b_pack_prc77_01","vn_b_pack_lw_06"],  //Access items.  Player must have one to use the asset remotely.
"true", //Access condition.  Variable must be true if player can use asset.
"true" //Request approval condition.  Variable must be true if player request is accepted.
] call SSS_support_fnc_addTransport;

sleep 1;

[
tran_helo_2,
"", //Callsign.  Leave blank for default.
1800, //Respawn time in seconds.
{(group _this) setVariable ["acex_headless_blacklist",true,true];}, //Custom init code.
["FRXA_tf_rt1523g_Ranger_Green","FRXA_tf_rt1523g_big_Ranger_Green","vn_b_pack_prc77_01","vn_b_pack_lw_06"],  //Access items.  Player must have one to use the asset remotely.
"true", //Access condition.  Variable must be true if player can use asset.
"true" //Request approval condition.  Variable must be true if player request is accepted.
] call SSS_support_fnc_addTransport;

sleep 1;

[
tran_helo_3,
"MEDEVAC", //Callsign.  Leave blank for default.
900, //Respawn time in seconds.
{_this setcaptive true;

(group _this) setVariable ["acex_headless_blacklist",true,true];

_this setObjectTextureGlobal [0, "\CUP\AirVehicles\CUP_AirVehicles_HC3\data\merlinhc3_SAR_co.paa"];

[_this,  
 [  
 "<t color='#00CDFF'>Heal</t>",  
 "  
 [player] call ace_common_fnc_goKneeling;  
  [  
   20,   
   [],   
   {_heallist = player nearEntities 10;  
   {[player, _x] call ace_medical_treatment_fnc_fullHeal;}forEach _heallist;  
   hint 'Healing complete'},  
   {hint 'Healing interrupted'},  
   'Healing'  
  ] call ace_common_fnc_progressBar",  
  [],  
  1.5,  
  false,  
  true,  
  "",  
  "side player == WEST",  
  6 
  ]  
] remoteExec ["addAction",0,true];

}, //Custom init code.
["FRXA_tf_rt1523g_Ranger_Green","FRXA_tf_rt1523g_big_Ranger_Green","vn_b_pack_prc77_01","vn_b_pack_lw_06"],  //Access items.  Player must have one to use the asset remotely.
"true", //Access condition.  Variable must be true if player can use asset.
"true" //Request approval condition.  Variable must be true if player request is accepted.
] call SSS_support_fnc_addTransport;

};