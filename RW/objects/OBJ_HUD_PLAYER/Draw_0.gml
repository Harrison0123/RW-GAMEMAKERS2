#region  //Initializer

var cam_x = camera_get_view_x(view_camera[0]),
    cam_y = camera_get_view_y(view_camera[0]),
    //cam_w = camera_get_view_width(view_camera[0]);
    //cam_h = camera_get_view_height(view_camera[0]);	
	heal_x = cam_x,
	heal_y = cam_y,


	
#endregion

#region //HUD Portrait and Blackbar
//draw event

draw_sprite(SPR_HUD_BACKGROUND, 0, cam_x + 75, cam_y + 45);                                                                  
draw_sprite_stretched(SPR_HEALTH_BAR, 0 , heal_x + 80, heal_y + 24, min((global.hp / global.hp_max) * heal_width, heal_width), heal_height); 
draw_sprite(SPR_HUD_FOREGROUND, 0, cam_x + 75, cam_y + 45);
draw_sprite(SPR_HUD_PORTRAIT, 0, cam_x + 75, cam_y + 45);
draw_sprite(SPR_HUD_SLOT, 0, cam_x + 75, cam_y + 45);

#endregion


