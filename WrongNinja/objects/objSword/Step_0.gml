/// @description Affect jumping/falling Good Ninja

//if good ninja is in the air
//if(!place_meeting(objGoodNinja.x, objGoodNinja.y+1, objGround)){
	
	//if sword is lower than Good Ninja
	if( self.y > objGoodNinja.y ){
		//sword is within half of Good Ninja's sprite's height
		if( self.y < (objGoodNinja.y + objGoodNinja.sprite_height/2) ){
			
		}
		//sword is at half of Good Ninja's sprite's height
		else if( self.y == (objGoodNinja.y + objGoodNinja.sprite_height/2) ){
			vspeed = objGoodNinja.vspeed;
		}
		//sword is outside half of Good Ninja's sprite's height
		else if( self.y > (objGoodNinja.y + objGoodNinja.sprite_height/2) ){
			y = objGoodNinja.y + objGoodNinja.sprite_height/2;
		}
		
	}
	//if sword is higher than Good Ninja
	else if( self.y < objGoodNinja.y ){
		//if Good Ninja is still in the air
		if(!place_meeting(objGoodNinja.x, objGoodNinja.y+1, objGround)){
			//sword is within half of Good Ninja's sprite's height
			if( self.y > (objGoodNinja.y - objGoodNinja.sprite_height/2) ){
				
			}
			//sword is at half of Good Ninja's sprite's height
			else if( self.y == (objGoodNinja.y - objGoodNinja.sprite_height/2) ){
				vspeed = objGoodNinja.vspeed;
			}
			//sword is outside half of Good Ninja's sprite's height
			else if( self.y < (objGoodNinja.y - objGoodNinja.sprite_height/2) ){
				y = objGoodNinja.y - objGoodNinja.sprite_height/2;
			}
		}
		else{
			script_execute(scrGravity, 1);
		}
	}
	//if sword is at the same height as Good Ninja	
	else if( self.y == objGoodNinja.y ){
		
	}

//}


