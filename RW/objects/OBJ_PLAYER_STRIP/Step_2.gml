/// @description Follow Player
x = OBJ_PLAYER.x;
y = OBJ_PLAYER.y;

if(OBJ_PLAYER.PlayerStatus == SCRP_ATTACK_DISTANCE_MOVING or OBJ_PLAYER.PlayerStatus == SCRP_ATTACK_DISTANCE_MOVING_RUNNING ){
	
 with(OBJ_PLAYER_STRIP){
	
       //Trigger one time per frame this basic attack making the player availabe
  switch(global.val){
	  
	  case 1:
	    //image_index  = 0;
	    image_speed  = 1;
		image_xscale = 1;
        sprite_index = SPR_PLAYER_RANGED_TORSO;
  break;
      case 0:
	    //image_index  = 0;
	    image_speed  = 1;
		image_xscale = -1;		        
        sprite_index = SPR_PLAYER_RANGED_TORSO;
  break;
    
   }   
  }  
 }