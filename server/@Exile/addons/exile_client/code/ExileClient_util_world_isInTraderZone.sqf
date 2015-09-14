/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_position","_result","_trigger","_distance","_radius"];
_position = _this;
_result = false;
_trigger = _position nearestObject "EmptyDetector";
if !(_trigger isEqualTo objNull) then
{
	_distance = (getPosATL _trigger) distance _position;
	_radius = (triggerArea _trigger) select 0; 
	if (_distance <= _radius) exitWith 
	{
		_result = true;
	};
};
_result