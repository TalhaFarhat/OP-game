/// @description Insert description here
// You can write your code in this editor
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
down_key = keyboard_check(vk_down);
up_key = keyboard_check(vk_up);

x_spd = (right_key - left_key) * move_spd ;
y_spd = (down_key - up_key ) * move_spd;


//set sprite 
mask_index = sprite[DOWN]
if y_spd == 0 {
	if x_spd >0{face = RIGHT};
	if x_spd <0{face = LEFT};
}

if x_spd > 0 and face == LEFT {face =RIGHT};
if x_spd < 0 and face == RIGHT {face =LEFT};


if x_spd == 0{
	if y_spd >0 {face = DOWN};
	if y_spd <0{face = UP};
}
if y_spd > 0 and face == UP {face = DOWN};
if y_spd < 0 and face == DOWN {face = UP};


// collisions
if place_meeting(x+x_spd, y, obj_wall) == true
	{
	x_spd = 0;
	}
	
if place_meeting(x, y+ y_spd, obj_wall) == true
	{
	y_spd = 0;
	}

x+= x_spd;
y+= y_spd;




sprite_index = sprite[face]