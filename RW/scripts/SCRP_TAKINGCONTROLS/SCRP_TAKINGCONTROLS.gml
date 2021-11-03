
function SCRP_TAKINGCONTROLS(){
	
#region //Toma de controles otorgados     KEYBOARD/GAMEPADS

Key_leftreal          = keyboard_check((ord("A")))            or   gamepad_button_check(global.gamepad_actual, gp_padl); 
Key_rightreal         = keyboard_check((ord("D")))            or   gamepad_button_check(global.gamepad_actual, gp_padr);
key_downreal          = keyboard_check(ord("S"))              or   gamepad_button_check(global.gamepad_actual, gp_padd);


Key_jumpreal          = keyboard_check_pressed((ord("L")))    or   gamepad_button_check_pressed(global.gamepad_actual, gp_face1);
Key_attack_melee      = keyboard_check_pressed(ord("K"))      or   gamepad_button_check_pressed(global.gamepad_actual, gp_face3);
key_attack_distance   = keyboard_check_pressed(ord("M"))
Key_run               = keyboard_check(ord("J")) ;

#endregion



}