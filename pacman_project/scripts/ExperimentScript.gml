global.testCounter++;

if(current_time/1000 >= global.nextSecond){

    global.nextSecond++;
    global.lastPrintedSecond++;
    var ghostInPlayfield = 4;
    //Calculate distance between pacman and each of the ghosts
    if(instance_exists(BlinkyObj)){
        var distanceBlinky = sqrt(power(abs(BlinkyObj.x - PackmanObj.x),2) + power(abs(BlinkyObj.y - PackmanObj.y),2));
        if(BlinkyInHouse.InGhostHouse = 1){
            var distanceBlinky = 999;
            ghostInPlayfield--;
        }
    }else{
        var distanceBlinky = 999;
        ghostInPlayfield--;
    }
    if(instance_exists(PinkyObj)){
        var distancePinky = sqrt(power(abs(PinkyObj.x - PackmanObj.x),2) + power(abs(PinkyObj.y - PackmanObj.y),2));
            if(PinkyInHouse.InGhostHouse = 1){
                var distancePinky = 999;
                ghostInPlayfield--;
            }
    }else{
        var distancePinky = 999;
        ghostInPlayfield--;
    }
    if(instance_exists(InkyObj)){
        var distanceInky = sqrt(power(abs(InkyObj.x - PackmanObj.x),2) + power(abs(InkyObj.y - PackmanObj.y),2));
        if(InkyInHouse.InGhostHouse = 1){
            var distanceInky = 999;
            ghostInPlayfield--;
        }
    }else{
        var distanceInky = 999;
        ghostInPlayfield--;
    }
    if(instance_exists(ClydeObj)){
        var distanceClyde = sqrt(power(abs(ClydeObj.x - PackmanObj.x),2) + power(abs(ClydeObj.y - PackmanObj.y),2));
        if(ClydeInHouse.InGhostHouse = 1){
            var distanceClyde = 999;
            ghostInPlayfield--;
        }
    }else{
        var distanceClyde = 999;
        ghostInPlayfield--;
    }
   // show_debug_message("BlinkyObj: " + string(BlinkyObj.x) + "," + string(BlinkyObj.y));
   // show_debug_message("PinkyObj: " + string(PinkyObj.x) + "," + string(PinkyObj.y));
   // show_debug_message("InkyObj: " + string(InkyObj.x) + "," + string(InkyObj.y));
   // show_debug_message("ClydeObj: " + string(ClydeObj.x) + "," + string(ClydeObj.y));
    
    

    //Find distance to nearest ghost
    var nearestGhostDistance = 0;
    
    if(distanceBlinky < distancePinky ){
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
    
    if(nearestGhostDistance == 999){
        nearestGhostDistance = 0;
    }
    
    if(distanceBlinky == 999){
        distanceBlinky = 0
    }
        if(distancePinky == 999){
        distancePinky = 0
    }
        if(distanceInky == 999){
        distanceInky = 0
    }
        if(distanceClyde == 999){
        distanceClyde = 0
    }
    
        //calculate average distance between pacman and all ghosts
    if(ghostInPlayfield != 0){
        var averageDisAll = (distanceBlinky + distancePinky + distanceInky + distanceClyde) / ghostInPlayfield;
    }else{
        var averageDisAll = 0;
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
    file_text_write_string(file, string(current_time)+"," + string(nearestGhostDistance) +"," + string(averageDisAll)+"," + string(distanceBlinky)+"," + string(distancePinky)+"," + string(distanceInky)+"," + string(distanceClyde));
    file_text_close(file);
    
}

    if(global.deathsInThisLevel == 3){
         global.levelsLost++;
         //lives = 3;
         global.deathsInThisLevel = 0;
    }
    
        if(global.currentLevelCounter == 1){
            global.score_level_1 = score;
        }  
        
                if(global.currentLevelCounter == 2){
            global.score_level_2 = score;
        }  
        
                if(global.currentLevelCounter == 3){
            global.score_level_3 = score;
        }  
    
    if(global.currentLevelCounter == 4){
            //write shit to txtfile
            ExperimentWriteToText();
            game_end();
    }  
    
    //Update time after each death to reset the time_of_death counter
    if(ReadyTextObj.visible){
    global.timeStartLevel = current_time;
    //show_debug_message("starttime updated YEEAAH!" + string(current_time));
    }
    
   //show_debug_message( string(global.currentLevelCounter) + "lol");
//show_debug_message(global.currentLevelCounter);
//lives = 3;

//var file;
//file = file_text_open_write("C:\level.txt");
//file_text_write_string(file, "ayy lmao");
//file_text_close(file);
