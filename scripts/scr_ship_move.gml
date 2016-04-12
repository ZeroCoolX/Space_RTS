///scr_ship_move

//set the friction to 0
friction = 0;

//Move towards the target if it exists
if(instance_exists(target)){
    motion_add(point_direction(x, y, target.x, target.y), acc);//move the ship
    
    //Delete the target once reached and idle
    if(position_meeting(x, y, target)){
        with(target){
            instance_destroy();
        }
        state = 'idle';
    }
}

//Don't over accelerate past max spd
if(speed > spd){
    speed = spd;
}
