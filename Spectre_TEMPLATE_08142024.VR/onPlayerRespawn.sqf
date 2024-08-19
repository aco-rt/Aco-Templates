params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];

if (time > 10) then {
_newUnit setPosASL (getPosASL respawnWestArrow_01);
}; //There is a check to make sure the player has been in-game for a few seconds before it allows a respawn teleport to the cyan arrow.  This avoids a lethal pile-up at mission start where all the players get teleported to the same space.  Instead, they will appear in the spot they were placed in the editor.  If you want players who join in progress to appear at the arrow rather than where they're placed in the editor, use "serverTime" instead of "time".

waitUntil {sleep 5; (alive _newUnit)};