///scr_enemy_ship_chase()

//Set friction to 0
friction = 0;

//Move towards the foe if it exists
if(instance_exists(foe)){
    //Attack the foe when we reach it
    if(distance_to_point(foe.x, foe.y) <= 64){
        state = 'attack';
    }else{
        motion_add(point_direction(x, y, foe.x, foe.y), acc);
    }
    
}

//don't go over acc
if(speed > spd){
    speed = spd;
}

