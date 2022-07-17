/// Figures out the players jump type. Normal, Long Jump, or Backflip?
function JumpType(){
	var final_vsp = vspJump;
	if (input_check("down")) // NOT normal jump
	{
		if (input_check("right") - input_check("left") == 0) && (abs(hsp) < 2.2) // Backflip
		{
			final_vsp = -10;
		}
		else // Long Jump
		{
			hsp *= 1.1;
			hsp_frac *= 1.1;
			hspWalk *= 1.1;
			alarm[1] = 16;
			final_vsp = vspJump / 1.5;
		}
	}
	vsp = final_vsp;
	vsp_frac = 0;
	coyote = 0;
}