///scr_ship_init(hp, weapon)

target = -1;//-1 means nothing targeted
foe = -1;
selected = false;
if(argument[2] == 1){
    state = scr_ship_idle;
}else{
    state = scr_enemy_ship_idle;
}
spd = 4;
acc = 0.5;
hp = argument[0];
weapon = argument[1];


