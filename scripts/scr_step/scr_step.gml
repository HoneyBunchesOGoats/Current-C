for( step_index = 0; step_index < ds_list_size( global.steppables_list ); step_index++ )
{
	with( ds_list_find_value( global.steppables_list, step_index) )
	{
		event_user(0);
	}
}