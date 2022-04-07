// type none
// activation blufor
// activation type present
// repeatable
// this and ((getPos (thisList select 0)) select 2 < 1)
// _handle = [(thisList select 0)] execVM "rearmVehicle.sqf";
                                                       
private _veh = _this select 0;

if (_veh isKindOf "ParachuteBase" || !alive _veh) exitWith {};

if (!(_veh isKindOf "LandVehicle")) exitWith { 
	_veh vehicleChat "This pad is for Vehicles service only, soldier!"; 
};

_veh vehicleChat "Servicing vehicle, Stand by...";

_veh setFuel 0;

//---------- RE-ARMING

sleep 15;

_veh vehicleChat "Re-arming ...";

//---------- REPAIRING

sleep 15;

_veh vehicleChat "Repairing ...";

//---------- REFUELING

sleep 20;

_veh vehicleChat "Refueling ...";

//---------- FINISHED

sleep 20;

_veh setDamage 0;
_veh vehicleChat "Repaired (100%).";

_veh setVehicleAmmo 1;
_veh vehicleChat "Re-armed (100%).";

_veh setFuel 1;
_veh vehicleChat "Refuelled (100%).";

sleep 2;

_veh vehicleChat "Service complete. Ready to GO.!";