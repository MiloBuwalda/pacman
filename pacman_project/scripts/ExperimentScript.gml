global.testCounter++;

if(current_time/1000 >= global.nextSecond){

    global.nextSecond++;
    global.lastPrintedSecond++;
    
    //Calculate distance between pacman and each of the ghosts
    var distanceBlinky = sqrt(power(abs(BlinkyObj.x - PackmanObj.x),2) + power(abs(BlinkyObj.y - PackmanObj.y),2));
    var distancePinky = sqrt(power(abs(PinkyObj.x - PackmanObj.x),2) + power(abs(PinkyObj.y - PackmanObj.y),2));
    var distanceInky = sqrt(power(abs(InkyObj.x - PackmanObj.x),2) + power(abs(InkyObj.y - PackmanObj.y),2));
    var distanceClyde = sqrt(power(abs(ClydeObj.x - PackmanObj.x),2) + power(abs(ClydeObj.y - PackmanObj.y),2));

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
    show_debug_message(global.lastPrintedSecond);
}


//show_debug_message(PackmanObj.x);


//var file;
//file = file_text_open_write("C:\level.txt");
//file_text_write_string(file, "ayy lmao");
//file_text_close(file);
