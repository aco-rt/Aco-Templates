// https://community.bistudio.com/wiki/Event_Scripts

enableSaving[false,false];
enableTeamswitch false;


// Uncomment to turn on the briefing.sqf file
//[] execVM "Briefing.sqf";

// Uncomment to turn on Fire For Effect, or AI calling in artillery if it's on the map
//nul = [] execVM "RYD_FFE\FFE.sqf";

// Uncomment below to disable ALL player-made map markers
//_null = [] execVM "no_markers.sqf";

//This attaches a marker to the rally point and FHQ at game start, and attaches the spawner markers to the 3d spawn locations
"RPMARK_1" setmarkerpos RP_west;
"FHQMark" setmarkerpos HQ01;
"veh_spawn_1" setmarkerpos veh_spawn_point_1;
"veh_spawn_02" setmarkerpos HELI_1;
"veh_spawn_03" setmarkerpos turretSpawn_1;

//This sets the FHQ and RP markers to face north (in case they get flipped around during mission making)
"RPMARK_1" setMarkerDir 000;
"FHQMark" setMarkerDir 000;

//This sets up the arsenal box
//execVM "scripts\arsenal_boxes.sqf";