/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_listBox","_index","_playerNetID","_display","_partyButton"];
disableSerialization;
_listBox = _this select 0;
_index = _this select 1;
_playerNetID = _listBox lbData _index;
_display = uiNameSpace getVariable ["RscExileXM8", displayNull];
_partyButton = _display displayCtrl 4112;
if (ExileClientPartyID isEqualTo -1) then
{
	_partyButton ctrlEnable false;
}
else 
{
	if (_playerNetID isEqualTo (netId player)) then
	{
		_partyButton ctrlEnable false;
	}
	else 
	{
		_partyButton ctrlEnable true;
	};
};