//KEY HANDLING
//movement keys
if( !moving )
{
	if( keyboard_check(vk_up) || keyboard_check(ord("W")) )
	{
		face_v = false;
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
		face_v = true;
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
		face_h = true;
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
		face_h = false;
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

//ANIMATION
var frame = 0;
if(!face_v)
	frame += 2;
if(!face_h)
	frame++;
	
image_index = 2 * frame;
