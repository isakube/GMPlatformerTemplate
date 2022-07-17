/// @description Customizable Vars

//=======================================\\
// Don't fiddle with these

hspMove = 0;
hasMomentum = false;

hsp = 0;
vsp = 0;
hsp_frac = 0;
vsp_frac = 0;
coyote = 0;

onground = false;
onwall = 0;

//=======================================\\
// Configure these to whatever you want

// In pixels, how fast you accelerate to {hspWalk}.
hsp_acc = .7;

// In pixels, how fast you decelerate.
hsp_fric_ground = 0.5; // On ground
hsp_fric_air = 0.15; // In air

// In pixels per frame, the max speed of the player.
hspWalk = 4;

// In pixels per frame, the force at which the player
// gets propelled away from the wall when wall jumping.
hsp_wjump = 4;


// In initial pixels per second, the jump height of the player.
vspJump = -7;

// In pixels per frame, the terminal velocity of the player.
termVsp = 10; // Normally
termVsp_wall = 4; // Wall sliding

// In initial pixels per second, the jump height of the player's wall jump.
vsp_wjump = -7;

// In pixels added to velocity per frame, the gravity force on the player.
grv = 0.67;
grv_wall = .3;

// In frames, the window for coyote jumping.
full_coyote = 6;