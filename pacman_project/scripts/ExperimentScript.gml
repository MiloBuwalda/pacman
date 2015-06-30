global.testCounter++;

if(current_time/1000 >= global.nextSecond){

    global.nextSecond++;
    global.lastPrintedSecond++;
    
    //Calculate distance between pacman and each of the ghosts
    if(instance_exists(BlinkyObj)){
    var distanceBlinky = sqrt(power(abs(BlinkyObj.x - PackmanObj.x),2) + power(abs(BlinkyObj.y - PackmanObj.y),2));
    }else{
    
    var distanceBlinky = 999;
    }
    if(instance_exists(PinkyObj)){
    var distancePinky = sqrt(power(abs(PinkyObj.x - PackmanObj.x),2) + power(abs(PinkyObj.y - PackmanObj.y),2));
    }else{
    var distancePinky = 999;
    }
    if(instance_exists(InkyObj)){
    var distanceInky = sqrt(power(abs(InkyObj.x - PackmanObj.x),2) + power(abs(InkyObj.y - PackmanObj.y),2));
    }else{
    var distanceInky = 999;
    }
    if(instance_exists(ClydeObj)){
    var distanceClyde = sqrt(power(abs(ClydeObj.x - PackmanObj.x),2) + power(abs(ClydeObj.y - PackmanObj.y),2));
    }else{
    var distanceClyde = 999;
    }
    
    //calculate average distance between pacman and all ghosts
    var averageDisAll = (distanceBlinky + distancePinky + distanceInky + distanceClyde) / 4;

    //Find distance to nearest ghost
    var nearestGhostDistance;
    if(distanceBlinky < distancePinky){
        nearestGhostDistance = distanceBlinky;
    }else{
       nearestGhostDistance = distancePinky;
    }
    if(nearestGhostDistance > distanceInky){
        nearestGhostDistance = distanceInky;
    }
    if(nearestGhostDistance > distanceClyde){
        nearestGhostDistance = distanceClyde;
    }
    
    //Update global variables
    global.nearestGhostDistanceGlobal += nearestGhostDistance;
    global.nearestGhostDistanceGlobal += nearestGhostDistance;
    
 //   show_debug_message(string(Level));
   // show_debug_message(global.ailastlevel);
    //show_debug_message(global.lastPrintedSecond);
    Level = 1;
    //PacManSpeed = .5;

    
    var file = file_text_open_append("test2.txt");
    file_text_writeln(file);
    file_text_write_string(file, string(current_time)+"," + string(nearestGhostDistance) +"," + string(averageDisAll));
    file_text_close(file);
    
}

    if(global.deathsInThisLevel == 3){
         global.levelsLost++;
         //lives = 3;
         global.deathsInThisLevel = 0;
    }
    
    if(global.currentLevelCounter == 4){
            //write shit to txtfile
            ExperimentWriteToText();
            game_end();
    }  
   //show_debug_message( string(global.currentLevelCounter) + "lol");
show_debug_message(global.currentLevelCounter);
//lives = 3;

//var file;
//file = file_text_open_write("C:\level.txt");
//file_text_write_string(file, "ayy lmao");
//file_text_close(file);