/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y + vsp, Obj_stand)) {
    while (!place_meeting(x, y + sign(vsp), Obj_stand)) {
        y += sign(vsp);
    }
    vsp = 0;
    isJumping = false;
}