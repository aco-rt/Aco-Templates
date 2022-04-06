/*  A simple, lightweight alternative to using a "Detected by X" trigger.

Put the following line of code into init.sqf or a game logic:

execVM "scripts\detection.sqf";

Don't forget to change the settings below to match your scenario.
*/

	_loop = true;
	
	while {_loop} do {

		 sleep 5; //This sleep is just for performance reasons.  In theory, it can be set to 0, but may cause issues in games with lots of OPFOR groups.

		_alertedUnits = [];
		_side = resistance; //The enemy side to the player being detected
		_unit = player;
		_playerSide = east; //The side the player is on (useful for PvP or other special uses)
		_distSqr = 2500;
		_groupsKnowAboutMe = allGroups select {side _x isEqualTo _side AND {((leader _x getHideFrom _unit) distanceSqr _unit < _distSqr) AND alive leader _x AND side group _unit == _playerSide}};
		_groupsKnowAboutMe apply {_alertedUnits append units _x};
		
		//hintSilent format ["%1 group(s) know about the player. First check.", count _groupsKnowAboutMe]; //Debug code.  This will update player about how many groups know about the player.

		
		//This section adjusts the delay between detection and "reporting" to the rest of the team
		if (count _groupsKnowAboutMe > 0 AND side group _unit == _playerSide) then {
			sleep 5;
			_groupsKnowAboutMe = allGroups select {side _x isEqualTo _side AND {((leader _x getHideFrom _unit) distanceSqr _unit < _distSqr) AND alive leader _x AND side group _unit == _playerSide}};
			
			//hintSilent format ["%1 group(s) know about the player. Second check.", count _groupsKnowAboutMe]; //Debug code.  This will update player about how many groups know about the player.
			
			sleep 5;
			_groupsKnowAboutMe = allGroups select {side _x isEqualTo _side AND {((leader _x getHideFrom _unit) distanceSqr _unit < _distSqr) AND alive leader _x AND side group _unit == _playerSide}};
			if (count _groupsKnowAboutMe > 0 AND side group _unit == _playerSide) then {
				execVM "scripts\onDetected.sqf"; //This script is the consequence for detection.
				_loop = false; //this turns on an exit for the script.  If you want the check looping forever once the player is spotted, comment this code.
				};
			};

	};

