////////////////////////////////////////////////////////////////////
//DeRap: Produced from mikero's Dos Tools Dll version 5.20
//Produced on Mon Sep 14 01:54:27 2015 : Created on Mon Sep 14 01:54:27 2015
//http://dev-heaven.net/projects/list_files/mikero-pbodll
////////////////////////////////////////////////////////////////////

#define _ARMA_

//Class C:\Users\TacEXE\Desktop\@ExileServer-0.9.20b\Arma 3 Server\@ExileServer\addons\exile_server\config.bin{
class CfgPatches
{
	class exile_server
	{
		requiredVersion = 0.1;
		requiredAddons[] = {"exile_client","exile_server_config"};
		units[] = {};
		weapons[] = {};
		magazines[] = {};
		ammo[] = {};
	};
};
class CfgFunctions
{
	class ExileServer
	{
		class Bootstrap
		{
			file = "exile_server\bootstrap";
			class preInit
			{
				preInit = 1;
			};
			class postInit
			{
				postInit = 1;
			};
		};
		class FiniteStateMachine
		{
			file = "exile_server\fsm";
			class main
			{
				ext = ".fsm";
			};
		};
	};
};
//};
