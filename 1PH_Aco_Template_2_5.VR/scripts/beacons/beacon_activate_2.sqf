if (isNil "spawnDelayb2") then 
{
	spawnDelayb2 = 1;
	[player] call ace_common_fnc_goKneeling; [player, "AinvPknlMstpSnonWnonDnon_medic_1",1] call ace_common_fnc_doAnimation;
	[10,[],{
	wBeacon_2 setVehiclePosition [(player modelToWorld[0,2,0]), [],0.5, "CAN_COLLIDE"];
	hint "Reinforcement Beacon (2) Deployed";
	{deleteVehicle (vehicle _x);deleteVehicle _x;} foreach units ReinforceGroup02;
	deleteGroup ReinforceGroup02;
	ReinforceGroup02 = [getPosASL RP_west, west, (configfile >> "CfgGroups" >> "West" >> "BLU_C_HUS_W" >> "Infantry" >> "BLU_C_HUS_W_B_Rifle_Section")] call BIS_fnc_spawngroup;
	reinforce2_wp_0 = ReinforceGroup02 addWaypoint [getPosASL player, 0];
	reinforce2_wp_0 setWaypointStatements ["true","[this, getPos this, 50] call lambs_wp_fnc_taskPatrol;"];
	{_x setSkill 0.85} foreach units ReinforceGroup02;
	},{hint "Deploying interrupted"},"Deploying Reinforcement Beacon (2)"] call ace_common_fnc_progressBar;
	sleep 30;
	spawnDelayb2 = nil;
} else {hint "Reinforcement group 2 unavailable";};