/// @description SETTING STATES FOR ENEMY

#region  //This is the options available, which means and ensure enemy will not track other animation
enum brawler_state{

     idle,
     chase

}
#endregion

#region  //Common inits
state = brawler_state.idle;
vsp   = 0;
hsp   = 0;
#endregion
