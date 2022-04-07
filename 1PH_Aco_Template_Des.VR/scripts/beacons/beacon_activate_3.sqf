if (isNil "spawnDelayb3") then 
{
	spawnDelayb3 = 1;
	[player] call ace_common_fnc_goKneeling; [player, "AinvPknlMstpSnonWnonDnon_medic_1",1] call ace_common_fnc_doAnimation;
	[10,[],{
	wBeacon_3 setVehiclePosition [(player modelToWorld[0,2,0]), [],0.5, "CAN_COLLIDE"];
	hint "Reinforcement Beacon (3) Deployed";
	{deleteVehicle (vehicle _x);deleteVehicle _x;} foreach units ReinforceGroup03;
	deleteGroup ReinforceGroup03;
	ReinforceGroup03 = [getPosASL RP_west, west, (configfile >> "CfgGroups" >> "West" >> "BLU_C_HUS_D" >> "Infantry" >> "BLU_C_HUS_D_B_Rifle_Section")] call BIS_fnc_spawngroup;
	reinforce3_wp_0 = ReinforceGroup03 addWaypoint [getPosASL player, 0];
	reinforce3_wp_0 setWaypointStatements ["true","[this, getPos this, 50] call lambs_wp_fnc_taskPatrol;"];
	{_x setSkill 0.85} foreach units ReinforceGroup03;
	},{hint "Deploying interrupted"},"Deploying Reinforcement Beacon (3)"] call ace_common_fnc_progressBar;
	sleep 30;
	spawnDelayb3 = nil;
} else {hint "Reinforcement group 3 unavailable";};