function SCRP_DECISION(){

   if( (hsp == 0) and (vsp == 0) and (!( key_attack_distance || key_downreal || Key_jumpreal)) and  (isHurt == false) and (global.ranged == false and global.ranged_down == false and global.melee == false) and ((place_meeting(x, y + 1, OBJ_COLLIDER_FATHER))  ) ){
   PlayerStatus = SCRP_IDLES;
   }
  
   if( (hsp != 0) and (vsp == 0) and (Key_leftreal || Key_rightreal) and ( !(key_downreal) ) and (isHurt == false) and (global.ranged == false and global.ranged_down == false and global.melee == false) and ((place_meeting(x, y + 1, OBJ_COLLIDER_FATHER)) )){
   PlayerStatus = SCRP_WALK;
   }
   
   if( ((floor(vsp)) < 0) and  (isHurt == false) and (global.ranged == false and global.ranged_down == false and global.melee == false) and (!((place_meeting(x, y + 1, OBJ_COLLIDER_FATHER))  )) ){ 
   PlayerStatus = SCRP_JUMP;
   }
   
   if( ((floor(vsp)) > 0) and  (isHurt == false) and (global.ranged == false and global.ranged_down == false and global.melee == false) and (!((place_meeting(x, y + 1, OBJ_COLLIDER_FATHER))  )) ){ 
   PlayerStatus = SCRP_FALL;
   }

   if( (hsp == 0) and (vsp == 0) and  (!( key_attack_distance and  Key_jumpreal)) and (key_downreal) and (isHurt == false) and (global.ranged == false and global.ranged_down == false and global.melee == false) and ((place_meeting(x, y + 1, OBJ_COLLIDER_FATHER))  )  ){
   PlayerStatus = SCRP_CROUCH;   
   }
   
   if( (hsp == 0) and (vsp == 0) and  (!( Key_jumpreal)) and (key_downreal) and (key_attack_distance)  and (isHurt == false) and (global.ranged == false and global.ranged_down == true and global.melee == false) and ((place_meeting(x, y + 1, OBJ_COLLIDER_FATHER))  )  ){
   PlayerStatus = SCRP_ATTACK_DISTANCE_DOWN;   
   }
   
   if( (hsp != 0)  and (global.ranged == false and global.ranged_down == false and global.melee == false) and (Key_run) and (Key_leftreal or Key_rightreal) and (isHurt == false)  and ((place_meeting(x, y + 1, OBJ_COLLIDER_FATHER))  )  ){
   PlayerStatus = SCRP_RUN;  
   }
   
   if(  (!( key_downreal)) and (key_attack_distance) and (isHurt == false) and (global.ranged == true and global.ranged_down == false and global.melee == false)    ){
   PlayerStatus = SCRP_ATTACK_DISTANCE;
   }
  
   if(  (!( key_downreal)) and (Key_leftreal or Key_rightreal) and (key_attack_distance) and (isHurt == false) and (global.ranged == true and global.ranged_down == false and global.melee == false)    ){
   PlayerStatus = SCRP_ATTACK_DISTANCE_MOVING;
   }
  
   if(  (!( key_downreal)) and (Key_leftreal or Key_rightreal) and (key_attack_distance) and (Key_run) and (isHurt == false) and (global.ranged == true and global.ranged_down == false and global.melee == false)    ){
   PlayerStatus = SCRP_ATTACK_DISTANCE_MOVING_RUNNING;
   }
  
   if( (sprite_index != SPR_PLAYER_ATTACK_0 and sprite_index != SPR_PLAYER_ATTACK_1) and (global.ranged == false and global.ranged_down == false and global.melee == true) and (Key_attack_melee) and (!(Key_jumpreal and key_downreal)) and (place_meeting(x, y + 1, OBJ_COLLIDER_FATHER)) ){
   PlayerStatus = SCRP_MELEE_ATTACK;
   }
   
   if( round(image_index) == 5 and (sprite_index == SPR_PLAYER_ATTACK_0) and (sprite_index != SPR_PLAYER_ATTACK_1) and (global.ranged == false and global.ranged_down == false and global.melee == true) and (Key_attack_melee) and (!(Key_jumpreal and key_downreal)) and (place_meeting(x, y + 1, OBJ_COLLIDER_FATHER)) ){
   PlayerStatus = SCRP_MELEE_ATTACK1;
   }
   
   if( round(image_index) == 5 and (sprite_index == SPR_PLAYER_ATTACK_1) and (sprite_index != SPR_PLAYER_ATTACK_2) and (global.ranged == false and global.ranged_down == false and global.melee == true) and (Key_attack_melee) and (!(Key_jumpreal and key_downreal)) and (place_meeting(x, y + 1, OBJ_COLLIDER_FATHER)) ){
   PlayerStatus = SCRP_MELEE_ATTACK2;
   }

}
