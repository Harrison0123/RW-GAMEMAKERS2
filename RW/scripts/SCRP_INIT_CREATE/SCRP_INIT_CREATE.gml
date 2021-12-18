function SCRP_INIT_CREATE(){
	
instance_create_depth(x, y, 1, OBJ_HUD_PLAYER);  //Will create a HUD of Player
instance_create_depth(x, y, 1, OBJ_CAMERA);      //Will create a camera that follow the player
instance_create_depth(x, y, 1, OBJ_PLAYER_STRIP);//Will create a STRIP that follow the player
aura_id = instance_create_depth(x, y, -1000, OBJ_LIGHT_AURA);
   with(aura_id){
	color        = $00FFFFFF;
	intensity    = 0;
	wobble       = 0.3;
	image_xscale = 3;
	image_yscale = 3;
  }
//instance_create_depth(x, y, 1, obj_weapon_attack);//Will create the weapon
//scrp_get_pad();                                   //Determinate which gamepad is using

}