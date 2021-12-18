/// @description Draw the dark room

  
  var _cw = camera_get_view_width(view_camera[0]);
  var _ch = camera_get_view_height(view_camera[0]);
  
  
  if(surface_exists(lighting_surface) == false){
  lighting_surface = surface_create(_cw, _ch);  
  }

  surface_set_target(lighting_surface); 
  draw_clear_alpha(c_black, 0.75);
  camera_apply(view_camera[0]);
  
  if(instance_exists(OBJ_PLAYER.aura_id)){
  with(OBJ_PLAYER.aura_id){
  
  var wobble_ammount_x = image_xscale + random_range(-wobble, wobble)
  var wobble_ammount_y = image_yscale + random_range(-wobble, wobble)
  
  gpu_set_blendmode(bm_subtract)
  draw_sprite_ext(sprite_index, image_index, x, y, wobble_ammount_x, wobble_ammount_y, 0, c_white, 1);
 
  gpu_set_blendmode(bm_add);
  draw_sprite_ext(sprite_index, image_index, x, y, wobble_ammount_x, wobble_ammount_y, 0, color, intensity);
  gpu_set_blendmode(bm_normal);
   }
  }
  
  
  
  surface_reset_target();
  
  draw_surface(lighting_surface, camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]));


