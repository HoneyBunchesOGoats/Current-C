//KEY HANDLING
//movement keys
if( !moving )
{
	if( keyboard_check(vk_up) || keyboard_check(ord("W")) )
	{
		if( place_meeting( x, y - 16, obj_wall ) )
		{
			colliding = true;
		}
		else
		{
			global.current_c--;
		}
		delta_y = -1;
		moving = true;
	}
	else if( keyboard_check(vk_down) || keyboard_check(ord("S")) )
	{
		if( place_meeting( x, y + 16, obj_wall ) )
		{
			colliding = true;
		}
		else
		{
			global.current_c--;
		}
		delta_y = 1;
		moving = true;
	}
	else if( keyboard_check(vk_left) || keyboard_check(ord("A")) )
	{
		if( place_meeting( x - 16, y, obj_wall ) )
		{
			colliding = true;
		}
		else
		{
			global.current_c--;
		}
		delta_x = -1;
		moving = true;
	}
	else if( keyboard_check(vk_right) || keyboard_check(ord("D")) )
	{
		if( place_meeting( x + 16, y, obj_wall ) )
		{
			colliding = true;
		}
		else
		{
			global.current_c--;
		}
		delta_x = 1;
		moving = true;
	}
}

//MOVEMENT
if( moving )
{
	show_debug_message( global.current_c );
	if( !colliding )
	{
		x += delta_x * spd;
		y += delta_y * spd;
	}
	
	move_timer += abs((delta_x * spd) + (delta_y * spd));
	
	if( move_timer >= 16 )
	{
		delta_x = 0;
		delta_y = 0;
		move_timer = 0;
		moving = false;
		colliding = false;
	}
}
