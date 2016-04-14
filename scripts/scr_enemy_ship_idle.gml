///scr_enemy_ship_idle()

//set some friction
friction = 0.5;

if(foe != -1 && instance_exists(foe)){
    if(distance_to_point(foe.x, foe.y) <= 256){//sight
        state = scr_enemy_ship_chase;
    }
}
