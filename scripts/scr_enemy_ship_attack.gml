///scr_enemy_sjip_attack()

image_blend = c_red;
friction = 0.5;

if(instance_exists(foe) && foe != -1){
    direction = point_direction(x, y, foe.x, foe.y);
    
    if(distance_to_point(foe.x, foe.y) > 96){//sight thresh
        image_blend = c_white;
        state = 'chase';
    }
}
