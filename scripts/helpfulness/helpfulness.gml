// Moves "a" towards "b" by "amount" and returns the result
// Nice bcause it will not overshoot "b", and works in both directions
// Examples:
//      speed = Approach(speed, max_speed, acceleration);
//      hp = Approach(hp, 0, damage_amount);
//      hp = Approach(hp, max_hp, heal_amount);
//      x = Approach(x, target_x, move_speed);
//      y = Approach(y, target_y, move_speed);

function Approach(a, b, amount)
{
	if (a < b)
	{
		a += amount;
		if (a > b)
		    return b;
	}
	else
	{
		a -= amount;
	    if (a < b)
			return b;
	}
	return a;
}


// Moves "a" towards "b" by "amount" and returns the result
// Returns a value that will wave back and forth between [from-to] over [duration] seconds
// Examples
//      image_angle = SineWave(-45,45,1,0)  -> rock back and forth 90 degrees in a second
//      x = SineWave(-10,10,0.25,0)         -> move left and right quickly
//
// Or here is a fun one! Make an object be all squishy!! ^u^
//      image_xscale = SineWave(0.5, 2.0, 1.0, 0.0)
//      image_yscale = SineWave(2.0, 0.5, 1.0, 0.0)
//

function SineWave(low, high, time, offset)
{
	var a4 = (high - low) * 0.5;
	return low + a4 + sin((((current_time * 0.001) + time * offset) / time) * (pi*2)) * a4;
}

// too lazy to copy documentation
// shaun spalding viewer i guess
function Wrap(value,min,max)
{
	if (value mod 1 == 0)
	{
		while (value > max || value < min)
		{
		    if (value > max)
		        value += min - max - 1;
		    else if (value < min)
				value += max - min + 1;
		}
		return(value);
	}
	else
	{
		var vOld = value + 1;
		while (value != vOld)
		{
		    vOld = value;
		    if (value < min)
		        value = max - (min - value);
			else if (value > max)
				value = min + (value - max);
		}
		return(value);
	}
}

function JumpInDirection(length,dir)
{
	x += lengthdir_x(length,dir);
	y += lengthdir_y(length,dir);
}

// holy shit lmao
function Chance(chance)
{
	return chance>random(1);
}