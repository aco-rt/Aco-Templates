_unit = _this select 0;

_medpoint3 = ["medpoint3","Deploy Medical Station","",
{
_num = player nearEntities ['Man',15]; 
	if(count _num >1) then
		{
			[player] call ace_common_fnc_goKneeling; [player, "AinvPknlMstpSnonWnonDnon_medic_1",1] call ace_common_fnc_doAnimation;
			[10,[],{medpoint3 setDir ((getDir Player)-180); medpoint3 setVehiclePosition [(player modelToWorld[0,2,0.1]), [],0.2, "CAN_COLLIDE"]; hint "Medical Station Deployed"},{hint "Deploying interupted"},"Deploying Medical Station"] call ace_common_fnc_progressBar
		} 
	else 
		{
			hint 'Need one other person nearby to deploy Medical Station'
		}
},{true}] call ace_interact_menu_fnc_createAction;

[_unit, 1, ["ACE_SelfActions"], _medpoint3] call ace_interact_menu_fnc_addActionToObject;