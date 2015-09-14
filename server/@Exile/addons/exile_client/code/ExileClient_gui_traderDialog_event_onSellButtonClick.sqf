/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_dialog","_inventoryListBox","_selectedInventoryListBoxIndex","_itemClassName","_quantity","_inventoryDropdown","_selectedInventoryDropdownIndex","_currentContainerType","_containerNetID"];
if !(uiNameSpace getVariable ["RscExileTraderDialogIsInitialized", false]) exitWith {};
_dialog = uiNameSpace getVariable ["RscExileTraderDialog", displayNull];
_inventoryListBox = _dialog displayCtrl 4005;
_selectedInventoryListBoxIndex = lbCurSel _inventoryListBox;
if !(_selectedInventoryListBoxIndex isEqualTo -1) then
{
	_itemClassName = _inventoryListBox lbData _selectedInventoryListBoxIndex;
	_quantity = 1; 
	if !(_itemClassName isEqualTo "") then
	{
		_inventoryDropdown = _dialog displayCtrl 4004;
		_selectedInventoryDropdownIndex = lbCurSel _inventoryDropdown;
		_currentContainerType = _inventoryDropdown lbValue _selectedInventoryDropdownIndex;
		_containerNetID = "";
		if (_currentContainerType isEqualTo 5) then
		{
			_containerNetID = _inventoryDropdown lbData _selectedInventoryDropdownIndex;
		};
		["sellItemRequest", [_itemClassName, _quantity, _currentContainerType, _containerNetID]] call ExileClient_system_network_send;
	};
};
true