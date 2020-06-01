//KEY HANDLING
//movement keys
if( !moving )
{
	if( keyboard_check(vk_up) || keyboard_check(ord("W")) )
	{
		delta_y = -1;
		moving = true;
	}
	else if( keyboard_check(vk_down) || keyboard_check(ord("S")) )
	{
		delta_y = 1;
		moving = true;
	}
	else if( keyboard_check(vk_left) || keyboard_check(ord("A")) )
	{
		delta_x = -1;
		moving = true;
	}
	else if( keyboard_check(vk_right) || keyboard_check(ord("D")) )
	{
		delta_x = 1;
		moving = true;
	}
}

//MOVEMENT
if( moving )
{
	
	
	x += delta_x * spd;
	y += delta_y * spd;
	move_timer += abs((delta_x * spd) + (delta_y * spd));
	
	if( move_timer >= 16 )
	{
		delta_x = 0;
		delta_y = 0;
		move_timer = 0;
		moving = false;
	}
}
