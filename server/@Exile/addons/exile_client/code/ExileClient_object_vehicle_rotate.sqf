/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_vehicle","_roatation"];
_vehicle = _this select 0;
_roatation= _this select 1;
if(local _vehicle)then
{
	_vehicle setDir ((getDir _vehicle) + (_roatation));
}
else
{
	["rotateVehicleRequest",[netId _vehicle,_roatation]] call ExileClient_system_network_send;
};
true