In order to upload these two folders you must pack them into a pbo file again.

Both files are unpbo'd by me and the two bin's are converted to cpp so you are able to edit them.

remember, before uploading onto your server the files must look like this:
exile_server.pbo
exile_server_config.pbo

0.9.19
----------------------------------------------
with the new update you need to set an RCON password at the very end of the config.cpp in the exile_server_config folder.
In addition you need to confirm that you read and understood. See code example below.

class RCON
	{
		serverPassword = "KAPPAchangeMeKAPPA";		// HERE THE PASSWORD
		useAutoLock = 1;
		restartAutoLock = 3;
		restartTimer[] = {3,0};
		useAutoKick = 1;
		kickTime = 2;
		useRestartMessages = 1;
		restartWarrningTime[] = {15,10,5,3};
	};
	IReadAndModifiedThisByMyWishes = 1;				// AND HERE THE 1 INSTEAD OF 0