/// @description  Draw everything related with HUD

#region  //Initializer

var cam_x = camera_get_view_x(view_camera[0]),                             //Get pos of the cam in X position
    cam_y = camera_get_view_y(view_camera[0]),                             //Get pos of the cam in Y position
    //cam_w = camera_get_view_width(view_camera[0]);                       //Get size of the camera but not currently used
    //cam_h = camera_get_view_height(view_camera[0]);	                   //Get height of the camera but not currently used
	heal_x = cam_x,                                                        //Set the SPR_HEALTH_BAR AT cam_x position
	heal_y = cam_y,                                                        //Set the SPR_HEALTH_BAR AT cam_y position
	
#endregion

#region //HUD Portrait and Blackbar


draw_sprite(SPR_HUD_BACKGROUND, 0, cam_x + 75, cam_y + 45);                //Draw the SPR_HUD_BACKGROUND at specific position

draw_sprite_stretched(SPR_HEALTH_BAR, 0 ,                                  //
heal_x + 80, heal_y + 24, min((global.hp / global.hp_max) * heal_width,    //Draw the SPR_HEALTH_BAR and control health depending on the current heal
heal_width), heal_height);                                                 //

draw_sprite(SPR_HUD_FOREGROUND, 0, cam_x + 75, cam_y + 45);                //Draw the SPR_HUD_FOREGROUND at specific position
draw_sprite(SPR_HUD_PORTRAIT, 0, cam_x + 75, cam_y + 45);                  //Draw the SPR_HUD_FPORTRAIT at specific position
draw_sprite(SPR_HUD_SLOT, 0, cam_x + 75, cam_y + 45);                      //Draw the SPR_HUD_SLOT at specific position
 
#endregion


