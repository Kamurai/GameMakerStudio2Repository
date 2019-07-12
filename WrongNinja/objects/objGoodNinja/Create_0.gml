/// @description Create Sword
if(instance_number(objSword) < 1){
	if( x < (room_width/2) ){
		instance_create_layer((-1 * sprite_width), sprite_height, "Instances", objSword);
	}else{
		instance_create_layer((1 * sprite_width), sprite_height, "Instances", objSword);
	}
}