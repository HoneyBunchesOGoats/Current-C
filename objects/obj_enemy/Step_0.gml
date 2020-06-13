if( move_timer >= 16 )
{
		move_timer = 0;
		path_speed = 0;
}
move_timer += path_speed;
