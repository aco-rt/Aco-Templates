_arsenalBox = (_this select 0);

removeAllActions _arsenalBox;

_universalArsenal_1 = [
'universalArsenal_1',
'Arsenal',
'',
{
	[universal_arsenal_reference_01, player] call ace_arsenal_fnc_openBox;
},
{true}
] call ace_interact_menu_fnc_createAction; // This creates the ACE interaction option to open the arsenal using the script therein

//[_arsenalBox, 0,["ACE_MainActions"], _universalArsenal_1] remoteExec ["ace_interact_menu_fnc_addActionToObject",0,true];
[_arsenalBox, 0, ["ACE_MainActions"], _universalArsenal_1] call ace_interact_menu_fnc_addActionToObject;
};

sleep 300;

deleteVehicle _arsenalBox;