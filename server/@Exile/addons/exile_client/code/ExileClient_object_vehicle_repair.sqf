/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_vehicle","_availableHitpoints","_fixable","_equippedMagazines"];
_vehicle = _this select 0;
if (vehicle player isEqualTo _vehicle) exitWith 
{
	["RepairFailedWarning", ["Are you serious?"]] call BIS_fnc_showNotification;
};
_availableHitpoints = _vehicle call ExileClient_util_vehicle_getHitPoints;
{
	if((_vehicle getHitPointDamage _x) > 0)exitWith
	{
		_fixable = "potato";
	};
}
forEach _availableHitpoints;
if (isNil "_fixable") exitWith 
{
	["RepairFailedWarning", ["This vehicle already looks fine."]] call BIS_fnc_showNotification;
}; 
if (!local _vehicle) then
{
	["RepairFailedWarning", ["Please get in as driver/pilot first."]] call BIS_fnc_showNotification;
}
else 
{
	_equippedMagazines = magazines player;
	if ("Exile_Item_DuctTape" in _equippedMagazines) then
	{
		_vehicle setDamage 0;
		player removeMagazine "Exile_Item_DuctTape";
	}
	else 
	{
		["RepairFailedWarning", ["You need duct tape to do that!"]] call BIS_fnc_showNotification;
	};
};
true