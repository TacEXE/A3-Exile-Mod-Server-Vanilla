/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_display","_listBox","_index","_partyButton"];
disableSerialization;
_display = uiNameSpace getVariable ["RscExileXM8", displayNull];
_listBox = _display displayCtrl 4111;
lbClear _listBox;
if ((player getVariable ["ExileXM8IsOnline", false]) isEqualTo true) then
{
	{
		if ((_x getVariable ["ExileXM8IsOnline", false]) isEqualTo true) then
		{
			_index = _listBox lbAdd (name _x);
			_listBox lbSetData [_index, netId _x];
			if (_x isEqualTo player) then
			{
				_listBox lbSetColor [_index, [0/255, 178/255, 205/255, 1]];
			}
			else 
			{
				if !(alive _x) then
				{
					_listBox lbSetColor [_index, [225/255, 65/255, 65/255, 1]];
				};
			};
		};
	}
	forEach allPlayers;
};
_partyButton = _display displayCtrl 4112;
_partyButton ctrlEnable false; 
