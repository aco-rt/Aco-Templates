// type none
// activation blufor
// activation type present
// repeatable
// this and ((getPos (thisList select 0)) select 2 < 1)
// _handle = [(thisList select 0)] execVM "rearmVehicle.sqf";
                                                       
private _veh = _this select 0;

if (_veh isKindOf "ParachuteBase" || !alive _veh) exitWith {};

if (_veh isKindOf "Man") exitWith { 
	systemChat "This pad is for Vehicle service only, soldier! Clear this Area!";
};

_veh vehicleChat "Servicing vehicle, Stand by...";
_veh setFuel 0;
_veh setVehicleAmmo 0;

//---------- REPAIRING
_veh vehicleChat "Repairing ...";
sleep 5;
_veh vehicleChat "Repaired (25%).";
sleep 5;
_veh vehicleChat "Repaired (50%).";
sleep 5;
_veh vehicleChat "Repaired (75%).";
sleep 5;
_veh setDamage 0;
_veh vehicleChat "Repaired (100%).";

//---------- RE-ARMING
_veh vehicleChat "Re-arming ...";
sleep 5;
_veh setVehicleAmmo 0.25;
_veh vehicleChat "Re-armed (25%).";
sleep 5;
_veh setVehicleAmmo 0.5;
_veh vehicleChat "Re-armed (50%).";
sleep 5;
_veh setVehicleAmmo 0.75;
_veh vehicleChat "Re-armed (75%).";
sleep 5;
_veh setVehicleAmmo 1;
_veh vehicleChat "Re-armed (100%).";

//---------- REFUELING
_veh vehicleChat "Refueling ...";
sleep 5;
_veh setFuel 0.25;
_veh vehicleChat "Refuelled (25%).";
sleep 5;
_veh setFuel 0.5;
_veh vehicleChat "Refuelled (50%).";
sleep 5;
_veh setFuel 0.75;
_veh vehicleChat "Refuelled (75%).";
sleep 5;
_veh setFuel 1;
_veh vehicleChat "Refuelled (100%).";

//---------- FINISHED
sleep 1;

_veh vehicleChat "Service complete. Ready to GO.!";