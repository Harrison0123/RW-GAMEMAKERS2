/// @description Control


var type   = async_load[? "event_type"];
var _index = async_load[? "pad_index"];




#region
SCRP_DETECT_CONTROL(_index);
#endregion

#region //Control Status
   switch(type){
	   
   case "gamepad discovered":
   show_debug_message("Controller Connected: " + string(global.control_name));
   break;
   
   case "gamepad lost":
   show_debug_message("Controller Disconnected: " + string(global.control_name));
   break;
}
#endregion

