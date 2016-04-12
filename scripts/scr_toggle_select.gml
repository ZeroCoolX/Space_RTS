///scr_toggle_select(press_x, press_y, release_x, release_y)


    //user click mouse selection box!
//press args
var px = argument0;
var py = argument1;
//release args
var rx = argument2;
var ry = argument3;

//Selection cases
var tlbr = (x>px && x<rx && y>py && y<ry);//top left bottom right
var bltr = (x>px && x<rx && y<py && y>ry);//bottom left top right
var brtl = (x<px && x>rx && y<py && y>ry);//bottom right top left
var trbl = (x<px && x>rx && y>py && y<ry);//top right bottom left

if(tlbr || bltr || brtl || trbl){//unit is within selection
    selected = true;
}else{
    selected = false;
}



