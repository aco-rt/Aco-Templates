_heallist = list healTrigger;
if (vehicle player in _heallist) then {[player] call ace_medical_treatment_fnc_fullHealLocal; moveOut player};