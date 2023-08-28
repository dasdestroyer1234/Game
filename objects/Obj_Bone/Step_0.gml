/// @description Insert description here
// You can write your code in this editor
// Movimenta o projétil na direção definida
if (!instance_exists(Obj_test)){
	instance_destroy()
}
if (ismoving==false){
motion_add(global.directine, spd);
ismoving=true
}
// Destroi o projétil quando sai da tela
if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
	ismoving=false
}
