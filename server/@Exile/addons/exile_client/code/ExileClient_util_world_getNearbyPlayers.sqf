/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_position","_radius","_players"];
_position = _this select 0;
_radius = _this select 1;
_players = [];
{
	if ((_x distance2D _position) < _radius) then
	{
		_players pushBack _x;
	};
}
forEach allPlayers;
_players