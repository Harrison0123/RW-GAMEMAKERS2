/// @description Camera that follow player



//CAMERA MODE, FUTURE ADD ONS
enum cammode {
	follow_object,

}




mode       = cammode.follow_object;
following  = OBJ_PLAYER;
view_w     = camera_get_view_width(view_camera[0]);
view_h     = camera_get_view_width(view_camera[0]);


min_view_x = 0;
min_view_y = 0;
max_view_x = room_width - camera_get_view_width(view_camera[0]);
max_view_y = room_height - camera_get_view_height(view_camera[0]);


