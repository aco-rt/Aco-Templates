if (isNil "spawnDelayb3") then 
{
	[player] call ace_common_fnc_goKneeling; [player, "AinvPknlMstpSnonWnonDnon_medic_1",1] call ace_common_fnc_doAnimation;
	[10,[],{
	wBeacon_3 setVehiclePosition [(player modelToWorld[0,2,0]), [],0.5, "CAN_COLLIDE"];
	hint "Reinforcement Beacon (3) Deployed";
	{deleteVehicle (vehicle _x);deleteVehicle _x;} foreach units ReinforceGroup03;
	deleteGroup ReinforceGroup03;
	ReinforceGroup03 = [getPosASL RPwest, west, (configFile >> "CfgGroups" >> "West" >> "rhs_faction_usarmy_d" >> "rhs_group_nato_usarmy_d_infantry" >> "rhs_group_nato_usarmy_d_infantry_squad")] call BIS_fnc_spawngroup;
	reinforce3_wp_0 = ReinforceGroup03 addWaypoint [getPosASL player, 0];
	reinforce3_wp_0 setWaypointStatements ["true","[this, getPos this, 50] call lambs_wp_fnc_taskPatrol;"];
	{_x setSkill 0.85} foreach units ReinforceGroup03;
	},{hint "Deploying interrupted"},"Deploying Reinforcement Beacon (3)"] call ace_common_fnc_progressBar;
	spawnDelayb3 = 1;
	sleep 30;
	spawnDelayb3 = nil;
} else {hint "Reinforcement Beacon (3) on cooldown.";};