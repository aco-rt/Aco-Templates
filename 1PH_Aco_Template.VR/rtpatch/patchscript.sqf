_medics = ["B_BLUCW_Medic_01"];
_engineers = ["B_BLUCW_ENG_01"];
_autorifs = ["B_BLUCW_AR_01"];
_snipers = ["B_BLUCW_DM_01","B_BLUCW_AMR_01"];
_EOD = ["B_BLUCW_G_01","B_BLUCW_MAT_01","B_BLUCW_ATGM_01","B_BLUCW_ATGMA_01","B_BLUCW_AAA_01","B_BLUCW_AA_01"];
_sl = ["B_BLUCW_PL_01"];
_tl = ["B_BLUCW_SL_01"];
_simple = ["B_BLUCW_AFV_Crew_01","B_BLUCW_Legionnaire_01","B_BLUCW_UAV_Operator_01"];
_pilot = ["B_BLUCW_Helicopter_Pilot_01","B_BLUCW_Helicopter_Crew_01","B_BLUCW_Pilot_01"];

{if (typeOf _x in _medics) then {[_x,"RT_Medic"] call Bis_fnc_setunitInsignia}} forEach allUnits;
{if (typeOf _x in _engineers) then {[_x,"RT_Engineer"] call Bis_fnc_setunitInsignia}} forEach allUnits;
{if (typeOf _x in _autorifs) then {[_x,"RT_AutoRifs"] call Bis_fnc_setunitInsignia}} forEach allUnits;
{if (typeOf _x in _snipers) then {[_x,"RT_Snipe"] call Bis_fnc_setunitInsignia}} forEach allUnits;
{if (typeOf _x in _EOD) then {[_x,"RT_Exp"] call Bis_fnc_setunitInsignia}} forEach allUnits;
{if (typeOf _x in _sl) then {[_x,"RT_sl"] call Bis_fnc_setunitInsignia}} forEach allUnits;
{if (typeOf _x in _tl) then {[_x,"RT_tl"] call Bis_fnc_setunitInsignia}} forEach allUnits;
{if (typeOf _x in _simple) then {[_x,"RT_simple"] call Bis_fnc_setunitInsignia}} forEach allUnits;
{if (typeOf _x in _pilot) then {[_x,"RT_Pilot"] call Bis_fnc_setunitInsignia}} forEach allUnits;


_HUSsimple = [
"B_BLUCHUSW_AFV_Crew_01",
"B_BLUCHUSW_AMR_01",
"B_BLUCHUSW_ATGMA_01",
"B_BLUCHUSW_ATGM_01",
"B_BLUCHUSW_AR_01",
"B_BLUCHUSW_ENG_01",
"B_BLUCHUSW_DM_01",
"B_BLUCHUSW_GL_01",
"B_BLUCHUSW_Helicopter_Crew_01",
"B_BLUCHUSW_Helicopter_Pilot_01",
"B_BLUCHUSW_MAT_01",
"B_BLUCHUSW_Hussar_01",
"B_BLUCHUSW_AAA_01",
"B_BLUCHUSW_AA_01",
"B_BLUCHUSW_Mechanic_01",
"B_BLUCHUSW_Medic_01",
"B_BLUCHUSW_MMGA_01",
"B_BLUCHUSW_MMG_01",
"B_BLUCHUSW_PL_01",
"B_BLUCHUSW_Radio_Operator_01",
"B_BLUCHUSW_EX_01",
"B_BLUCHUSW_SL_01",
"B_BLUCHUSW_UAV_Operator_01"
];


{if (typeOf _x in _HUSsimple) then {[_x,"RT_DevilBird_Olive"] call Bis_fnc_setunitInsignia}} forEach allUnits;


