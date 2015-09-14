/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_display","_8GCombo"];
disableSerialization;
_display = uiNameSpace getVariable ["RscExileXM8", displayNull];
_8GCombo = _display displayCtrl 4072;
lbClear _8GCombo;
_8GCombo lbAdd "Off";
_8GCombo lbAdd "On";
if (player getVariable ["ExileXM8IsOnline", false]) then
{
	_8GCombo lbSetCurSel 1;
}
else 
{
	_8GCombo lbSetCurSel 0;
};
