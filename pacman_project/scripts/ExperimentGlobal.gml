//This script is first clled in DemoPackmanObj_Create_1 - Create

var file = file_text_open_write("test2.txt");
file_text_write_string(file, "time,"+"nearest_distance,"+"all_distance,"+"distanceBlinky,"+"distancePinky,"+"distanceInky,"+"distanceClyde");
file_text_close(file);

//Updated in ExperimentScript
//Called in PlayfieldObj - End Step
globalvar testCounter;
testCounter = 0;

globalvar testGameDuration;
testGameDuration = 0;

globalvar lastPrintedSecond;
lastPrintedSecond = 0;

globalvar nextSecond;
nextSecond = 1;

globalvar nearestGhostDistanceGlobal;
nearestGhostDistanceGlobal = 0;

globalvar averageDisAllGlobal;
averageDisAllGlobal = 0;

globalvar mayUpdateNextLevel;
mayUpdateNextLevel = 0;

globalvar currentLevelCounter;
currentLevelCounter = 1;

globalvar timeStartLevel;
timeStartLevel = 0;

//Updated in AnimatedDeathObj - End Animation
globalvar numberOfDeaths;
numberOfDeaths = 0;

globalvar deathsInThisLevel;
deathsInThisLevel = 0;

globalvar deathsInLevel_1;
deathsInLevel_1 = 0;

globalvar deathsInLevel_2;
deathsInLevel_2 = 0;

globalvar deathsInLevel_3;
deathsInLevel_3 = 0;

globalvar levelsLost;
levelsLost = 0;

globalvar time_death_1;
time_death_1 = 0;

globalvar time_death_2;
time_death_2 = 0;

globalvar time_death_3;
time_death_3 = 0;

globalvar time_death_4;
time_death_4 = 0;

globalvar time_death_5;
time_death_5 = 0;

globalvar time_death_6;
time_death_6 = 0;

globalvar time_death_7;
time_death_7 = 0;

globalvar time_death_8;
time_death_8 = 0;

globalvar time_death_9;
time_death_9 = 0;

globalvar BlinkyInHouse;
BlinkyInHouse = 0;

globalvar PinkyInHouse;
PinkyInHouse = 0;

globalvar InkyInHouse;
InkyInHouse = 0;

globalvar ClydeInHouse;
ClydeInHouse = 0;

globalvar score_level_1;
score_level_1 = 0;

globalvar score_level_2;
score_level_2 = 0;

globalvar score_level_3;
score_level_3 = 0;

lives = 4;
