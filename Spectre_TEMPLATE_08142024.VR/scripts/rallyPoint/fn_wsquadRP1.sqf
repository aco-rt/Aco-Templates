_unit = _this select 0;

_westsquadRP1 = ["westsquad_rp1","Deploy Squad RP","",
{
_num = player nearEntities ['Man',15]; 
	if(count _num >2) then
		{
			[player] call ace_common_fnc_goKneeling; [player, "AinvPknlMstpSnonWnonDnon_medic_1",1] call ace_common_fnc_doAnimation;
			[20,[],{wsquadRP1 setVehiclePosition [(player modelToWorld[0,2,0]), [],0.5, "CAN_COLLIDE"]; hint "Rally Point Deployed"},{hint "Deploying interupted"},"Deploying Rally point"] call ace_common_fnc_progressBar
		} 
	else 
		{
			hint 'Need more allies nearby to deploy Rally Point'
		}
},{true}] call ace_interact_menu_fnc_createAction;

[_unit, 1, ["ACE_SelfActions","1PH"], _westsquadRP1] call ace_interact_menu_fnc_addActionToObject;