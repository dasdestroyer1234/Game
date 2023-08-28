/// @description Insert description here
// You can write your code in this editor
if (directione ==0){
x+=15}
if (directione ==180){
	x-=15
}
image_angle= global.player_direction
if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
	
}