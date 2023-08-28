global.pontos =(Obj_test.y-4848.50)*-1;
// Step Event do obj_test
var move_x = 0;

// Verificar as teclas pressionadas para definir o movimento
spee = 2;
if (keyboard_check(vk_right))  {
    move_x = 1;
	image_speed = 2;
	image_xscale=1;
	global.player_direction = 0
} else if (keyboard_check(vk_left)) {
    move_x = -1;
	image_xscale=-1;
	image_speed = 2;
	sprite_index = spr_test;
	global.player_direction = 180
}else{
	image_speed=0;
}

// Pulo
if (keyboard_check_pressed(vk_space) && !isJumping) {
	spee =5;
    vsp = jumpSpeed;
    isJumping = true;
}
if (isJumping){
		sprite_index = Spr_jump;
}else{
	sprite_index = spr_test;
}
if (keyboard_check(vk_up))  {
	if (!instance_exists(Obj_Dagger)){
	instance_create_layer(x, y,"Instances", Obj_Dagger);
}}
// Aplicar gravidade
vsp += gravit;

// Verificar colisões antes de mover horizontalmente
if (!place_meeting(x + move_x * spee, y, Obj_brick)) && (!place_meeting(x + move_x * spee, y, Obj_stand)){
    x += move_x * spee;
}

// Verificar colisões antes de mover verticalmente
if (!place_meeting(x, y + vsp, Obj_brick) && !place_meeting(x, y + vsp, Obj_stand)) {
    y += vsp;
    isJumping = true; // Permitir que o jogador continue pulando até que haja uma colisão
} else {
    vsp = 0;
    isJumping = false;
}
if(global.vida == 0){
	instance_destroy();
}