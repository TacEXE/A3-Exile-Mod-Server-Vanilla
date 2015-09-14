/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_object","_hasACan","_magazines","_amount","_fuelDetails","_fuelAmount"];
_object = _this select 0;
_hasACan = [];
_magazines = magazinesAmmo player;
{
	if((_x select 0) isEqualTo "Exile_Item_FuelCanisterEmpty")then
	{
		_amount = 20;
		_hasACan = ["Exile_Item_FuelCanisterEmpty",_amount,1];
	};
	if((_x select 0) isEqualTo "Exile_Item_FuelCanisterFull")then
	{
		if((_x select 1) < 20)then
		{
			_amount = 20 - (_x select 1);
			_hasACan = ["Exile_Item_FuelCanisterFull",_amount,_x select 1];
		};
	};
	if((count _hasACan) isEqualTo 3)exitWith{};
}
forEach _magazines;
if((count _hasACan) isEqualTo 3)then
{
	_fuelDetails = _object call ExileClient_util_fuel_getRealFuel;
	_fuelAmount = _fuelDetails select 0;
	if(_fuelAmount isEqualTo 0)exitWith
	{
		["VehicleDrainingFailedFuel"] call BIS_fnc_showNotification;
	};
	if((_hasACan select 1) > _fuelAmount)then
	{
		[
			player,
			[_hasACan select 0,_hasACan select 2],
			["Exile_Item_FuelCanisterFull",(20 -(_hasACan select 1)) + _fuelAmount]
		] call ExileClient_util_inventory_replaceMagazine;
		_amount = _fuelAmount;
	}
	else
	{
		[
			player,
			[_hasACan select 0,_hasACan select 2],
			["Exile_Item_FuelCanisterFull",(20 -(_hasACan select 1)) + _amount]
		] call ExileClient_util_inventory_replaceMagazine;
	};	 
	call ExileClient_object_player_save;
	if(local _object)then
	{
		[_object,-_amount] call ExileClient_util_fuel_setFuel;
	}
	else
	{
		["setFuelRequest",[netId _object,-_amount]] call ExileClient_system_network_send;
	};
	["VehicleDrained", [format ["Vehicle drained for: %1L",_amount]]] call BIS_fnc_showNotification;
}
else
{
	["VehicleDrainingFailed"] call BIS_fnc_showNotification;
};
true