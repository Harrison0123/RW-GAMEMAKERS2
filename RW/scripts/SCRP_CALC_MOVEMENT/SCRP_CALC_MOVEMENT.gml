//En este script se encuentra la lógica de los cálculos del movimiento, aquí puedes encontrar desde el momentium hasta saltos
 function SCRP_CALC_MOVEMENT(){
	 
	 #region  //Acceso a controles
	 
     SCRP_TAKINGCONTROLS();
	 
     #endregion
	 
	 #region  //Cálculo de movimiento 
	 
     if(isHurt == false and global.melee == false){	 
		 
     var move = Key_rightreal - Key_leftreal; //Se decide donde está mirando

     switch(move){
        case 1:
        global.val = 1;     
        break;
        case -1:
        global.val = 0;             
        break;
     }
	  
	 if(( global.ranged_down == true or global.melee == true) and place_meeting(x, y + 1, OBJ_COLLIDER_FATHER)){
	 hsp = 0;
	 }else{
     hsp   = move * walksp
	 }
   
   }
   
    #endregion
	 
	 #region  //Actualizan la vsp
	    vsp      = vsp + grv;
	 #endregion
	 
	 #region  //Si presiona saltar este código asigna el salto
	 
	 if( (place_meeting(x, y + 1, OBJ_COLLIDER_FATHER)) || (place_meeting(x, y + 1, OBJ_COLLIDER_FATHER)) ) and (Key_jumpreal) and (!key_downreal) and (isHurt == false) and (global.ranged_down == false) {
          vsp      = -6;
      }
	  
     #endregion
	 
	 #region  //Evitar moverse agachado
	 if(   ( ((place_meeting(x, y + 1, OBJ_COLLIDER_FATHER))  and (key_downreal and (Key_leftreal || Key_rightreal))))   ){
           hsp = 0;
     }
	 #endregion
	 
	 #region  //En caso de decir correr
	 
	  if( ( (Key_run and (Key_rightreal or Key_leftreal)) and (global.ranged == false or global.ranged_down == false) ))   {
           walksp = 3;
		   
     }else{
		 
	       walksp = 1.5;
	 }
	 
	 #endregion
	  
	 #region  //Attack on ground
	 
	 if(   ( ((place_meeting(x, y + 1, OBJ_COLLIDER_FATHER))  and (key_attack_distance) and (!(key_downreal)) and (global.ranged_down == false) )))   {
           global.ranged = true;		   
     }
	 
	 #endregion
	 
	 #region  //Attack on air
	 
	 if(   ( (!(place_meeting(x, y + 1, OBJ_COLLIDER_FATHER))  and (key_attack_distance) and (!(key_downreal)) and  (global.ranged_down == false) )))   {
           global.ranged = true;		  
     }
	 
	 #endregion
		 
     #region  //Attack on ground down
	 
	 if(   ( ((place_meeting(x, y + 1, OBJ_COLLIDER_FATHER))  and (key_attack_distance) and (key_downreal) and (global.ranged == false) )))   {
          
		   global.ranged_down = true;		   
     }
	 
	 #endregion
	
	 #region  //Melee attack
	 
	 if( (Key_attack_melee) and (!(key_downreal and Key_jumpreal)) and (global.ranged == false and global.ranged_down == false) and  place_meeting(x, y + 1, OBJ_COLLIDER_FATHER)   ){
	 
	 if( (Key_leftreal or Key_rightreal) ){
		 global.melee_moving = true;
	 }
	     global.melee = true;
	 	 
	 }
	 
	 #endregion
	 
	  if( sprite_index == SPR_PLAYER_ATTACK_0 and round(image_index) > 1  and global.melee == true and global.melee_moving == true){
		 
		 switch(global.val){
		 
		 case 0:
		 hsp = -1.5;
		 break;
		 
		 case 1:
		 hsp = 1.5;
		 break;
		 		 
		 }
	 }
	 
	 
	 
}