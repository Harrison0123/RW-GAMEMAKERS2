/// @description Camera that follow player

//CAMERA MODE, FUTURE ADD ONS
enum cammode {
	
	         follow_object,

}

mode       = cammode.follow_object;                                //Current mode default as follow object   
following  = OBJ_PLAYER;                                           //Who are going to follow the camera
view_w     = camera_get_view_width(view_camera[0]);                //Full size of horizontal view camera horizontal
view_h     = camera_get_view_width(view_camera[0]);                //Full size of horizontal view camera horizontal

min_view_x = 0;                                                    //Min view of horizontal noramlly set as 0
min_view_y = 0;                                                    //Min view of vertical noramlly set as 0
max_view_x = room_width  - camera_get_view_width(view_camera[0]);  //Max view of horizontal perspective 
max_view_y = room_height - camera_get_view_height(view_camera[0]); //Max view of vertical perspective 


