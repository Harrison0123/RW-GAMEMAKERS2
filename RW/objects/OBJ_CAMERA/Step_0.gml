/// @description Void de la camara

cx      = camera_get_view_x(view_camera[0]);        //Value of view camera x (position)
cy      = camera_get_view_y(view_camera[0]);        //Value of view camera y (position)

switch(mode){
	
      case cammode.follow_object:	               //Current mode and unique at the moment (camera)
	  
	  if(!instance_exists(following)) break;	   //If is not following the player, set it
	  
	  cx = following.x - (view_w/2);               //Control de X position to the player, normally set as the middle
	  cy = following.y - (view_h/2.5);	           //Control de Y position to the player, normally set as the 2/5 of the Y value
	  
	  break;
}


cx = clamp(cx, min_view_x, max_view_x);            //Keep the horizontal camera inside of the limits of the room
cy = clamp(cy, min_view_y, max_view_y);            //Keep the vertical camera inside of the limits of the room

camera_set_view_pos(view_camera[0], cx, cy);       //Set position of the camera and the current slot, as default camera[0]




