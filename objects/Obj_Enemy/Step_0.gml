/// @description Insert description here
// You can write your code in this editor
// Verifica se o jogador está pr
random_set_seed(current_time)
rand = random_range(-20,20)
if (place_meeting(x + 20,y, Obj_stand)) && isMovingRight == true {
	x+=enemySpeed
	global.directine =180
	image_xscale=-1
		if (!place_meeting(x + 20,y, Obj_stand)) && isMovingRight == true {
isMovingRight=false
image_xscale=1
	}
	if(place_meeting(x + 20,y, Obj_brick)){
		isMovingRight=false
		image_xscale=-1
	}
	//image_xscale=-1
}
else if (place_meeting(x - 20,y, Obj_stand)) && isMovingRight == false {
	x-=enemySpeed
	global.directine = 0
	image_xscale=1
	if (!place_meeting(x - 20,y, Obj_stand)) && isMovingRight == false {
	isMovingRight=true
	image_xscale=-1
	}
	if(place_meeting(x - 20,y, Obj_brick)){
		isMovingRight=true
		image_xscale=1
	}
	//image_xscale=-1
}
if (instance_exists(Obj_test)){
 var playerDistance = point_distance(x, y + rand, Obj_test.x, Obj_test.y);
   if (playerDistance < 240) {
	enemySpeed=0;
		sprite_index=Spr_Enemy
   if (shootTimer <= 0) {
    // Dispara um projétil em direção ao jogador
    instance_create_layer(x, y+rand,"Instances", Obj_Bone);

	shootTimer = shootDelay;
   }
}

// Atualiza o temporizador
if (shootTimer > 0) {
    shootTimer -= 1;
}
if (playerDistance > 240){
sprite_index=Spr_boneWalking
enemySpeed=1;
}
}
//else if(){
	//x-=enemySpeed
		//if(place_meeting(x + enemySpeed,y, Obj_brick)){
		//isMovingRight=true
	//}
//}


