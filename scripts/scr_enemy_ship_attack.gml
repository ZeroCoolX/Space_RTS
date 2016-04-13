///scr_enemy_sjip_attack()

if(foe != -1 && point_distance(x, y, foe.x, foe.y) < 128){
    image_angle = point_direction(x, y, foe.x, foe.y);//face the enemy
    if(alarm[0] == -1 && weapon != -1){
        var lazer = instance_create(x, y, weapon);
        lazer.direction = image_angle;
        lazer.image_angle = image_angle;
        alarm[0] = 10;//wait
    }
}

friction = 0.5;

if(instance_exists(foe) && foe != -1){
    direction = point_direction(x, y, foe.x, foe.y);
    
    if(distance_to_point(foe.x, foe.y) > 96){//sight thresh
        image_blend = c_white;
        state = 'chase';
    }
}
