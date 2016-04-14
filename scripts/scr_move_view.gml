///scr_move_view()
var view = 0;
//get input controls
var right = keyboard_check(vk_right) || keyboard_check(ord('D'));
var left = keyboard_check(vk_left) || keyboard_check(ord('A'));
var up = keyboard_check(vk_up) || keyboard_check(ord('W'));
var down = keyboard_check(vk_down) || keyboard_check(ord('S'));

var amount = view_wview[view]/80;

//Move view according to keybaord input
if(right){
    view_xview[view] +=amount;
}
if(left){
    view_xview[view] -=amount;
}
if(up){
    view_yview[view] -=amount;
}
if(down){
    view_yview[view] +=amount;
}

if(mouse_wheel_up()){
    scr_view_zoom(-0.1, view)//zoom in
}
if(mouse_wheel_down()){
    scr_view_zoom(0.1, view)//zoom out
}
