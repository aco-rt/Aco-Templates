if (isNil "spawnDelayb1") then 
{
	[player] call ace_common_fnc_goKneeling; [player, "AinvPknlMstpSnonWnonDnon_medic_1",1] call ace_common_fnc_doAnimation;
	[10,[],{
	wBeacon_1 setVehiclePosition [(player modelToWorld[0,2,0]), [],0.5, "CAN_COLLIDE"];
	hint "Reinforcement Beacon (1) Deployed";
	{deleteVehicle (vehicle _x);deleteVehicle _x;} foreach units ReinforceGroup01;
	deleteGroup ReinforceGroup01;
	ReinforceGroup01 = [getPosASL RPwest, west, (configFile >> "CfgGroups" >> "West" >> "rhs_faction_usarmy_d" >> "rhs_group_nato_usarmy_d_infantry" >> "rhs_group_nato_usarmy_d_infantry_squad")] call BIS_fnc_spawngroup;
	reinforce1_wp_0 = ReinforceGroup01 addWaypoint [getPosASL player, 0];
	reinforce1_wp_0 setWaypointStatements ["true","[this, getPos this, 50] call lambs_wp_fnc_taskPatrol;"];
	{_x setSkill 0.85} foreach units ReinforceGroup01;
	},{hint "Deploying interrupted"},"Deploying Reinforcement Beacon (1)"] call ace_common_fnc_progressBar;
	spawnDelayb1 = 1;
	sleep 30;
	spawnDelayb1 = nil;
} else {hint "Reinforcement Beacon (1) on cooldown.";};