/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_position","_result","_maxRange","_objects","_distance","_radius"];
_position = _this;
_result = false;
_maxRange = getArray(missionConfigFile >> "CfgTerritories" >> "prices");
_maxRange = (_maxRange select ((count _maxRange) -1)) select 1;
_objects = _position nearObjects ["Exile_Construction_Flag_Static", _maxRange * 2];
if !(_objects isEqualTo []) then
{
	{
		_distance = (getPosATL _x) distance _position;
		_radius = _x getVariable ["ExileTerritorySize", 0];
		if (_distance <= _radius) exitWith 
		{
			_result = true;
		};
	}	
	forEach _objects;
};
_result