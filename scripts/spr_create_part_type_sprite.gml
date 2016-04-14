///spr_create_part_type_sprite(sprite, blend, min_life, max_life, min_scale, max_scale,scaling)
//sprite, how their drawn when overlapping, min max step life (steps), scaling <= 1 (1 = sprite default size), grow rate (per step) 0.1...etc
var sprite = argument0;
var blend = argument1;
var min_life = argument2;
var max_life = argument3;
var min_scale = argument4;
var max_scale = argument5;
var scaling = argument6;

var type = part_type_create();
part_type_alpha2(type, 0.75, 0);//animate between two 1, 0 it will dissipate from visible to not
part_type_sprite(type, sprite, false, true, false);//type, sprite, animate, stretch with scaling, random subimage of the sprite
part_type_blend(type, blend);
part_type_size(type, min_scale, max_scale, scaling, 0);//x, x, x, x, wiggle lol
part_type_life(type, min_life, max_life);
part_type_orientation(type, 0, 360, 0, 0, 0);//angle of rotation between 0 and 360 randomly. x, min angle, max angle, increase, wigle, relative to the direction its heading (0=f, 1=t)

return type;
