/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_position","_isNearby","_radius","_triggers"];
_position = _this;
_isNearby = false;
_radius = getArray(missionConfigFile >> "CfgTerritories" >> "prices");
_radius = (_radius select ((count _radius) -1)) select 1;
_triggers = _position nearObjects ["Exile_Construction_Flag_Static", _radius * 2];
if !(_triggers isEqualTo []) then
{
	_isNearby = true;
};
_isNearby