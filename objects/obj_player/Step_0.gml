/// @description All the behavior ever

var dir = input_check("right") - input_check("left");

// Calc hori move
if (!hasMomentum) hsp += dir * hsp_acc;
var hsp_fric_final = hsp_fric_ground; if (!onground) hsp_fric_final = hsp_fric_air;
if (dir == 0)
{
	
	hsp = Approach(hsp,0,hsp_fric_final);
}

hsp = clamp(hsp, -hspWalk, hspWalk);

// Wall jumpy
if (onwall!=0) && (!onground) && (input_check_pressed("jump"))
{
	hsp = -onwall * hsp_wjump;
	vsp = vsp_wjump;
	
	hsp_frac = 0;
	vsp_frac = 0;
	
	hasMomentum = true;
	alarm[0] = 8;
}

// Calc vert move
var terminal_final = termVsp;
var grv_final = grv;
if (!input_check("down")) if (onwall != 0) && (vsp > 0) {terminal_final = termVsp_wall; grv_final = grv_wall;}

vsp += grv_final;
vsp = clamp(vsp,-terminal_final,terminal_final);

// Jumping
if (coyote -- > 0) && (input_check_pressed("jump"))
{
	JumpType();
}

// dumpy
hsp += hsp_frac;
vsp += vsp_frac;
hsp_frac = frac(hsp);
vsp_frac = frac(vsp);
hsp -= hsp_frac;
vsp -= vsp_frac;

// Hori
if (place_meeting(x+hsp,y,obj_wall))
{
	while (abs(hsp) > 0.1)
	{
		hsp *= 0.5;
		if (!place_meeting(x+hsp,y,obj_wall)) x += hsp;
	}
	hsp = 0;
}
x += hsp;

// Vert
if (place_meeting(x,y+vsp,obj_wall))
{
	while (abs(vsp) > 0.1)
	{
		vsp *= 0.5;
		if (!place_meeting(x,y+vsp,obj_wall)) y += vsp;
	}
	vsp = 0;
}
y += vsp;

onground = place_meeting(x,y+4,obj_wall);
onwall = place_meeting(x+2, y, obj_wall) - place_meeting(x-2, y, obj_wall);
if (onground) coyote = full_coyote;