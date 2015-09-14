/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_message","_mode"];
_message = _this select 0;
_mode = _this select 1;
if(_mode)then
{
	["Success", [_message]] call BIS_fnc_showNotification;
}
else
{
	["Whoops", [_message]] call BIS_fnc_showNotification;
};
call ExileClient_gui_interactionMenu_unhook;
true