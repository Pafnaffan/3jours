global.grid = mp_grid_create(0, 0, room_width / 16, room_height / 16, 16, 16);

mp_grid_add_instances(global.grid,obj_very_solid,false);
mp_grid_add_instances(global.grid,obj_desk,false);
mp_grid_add_instances(global.grid,obj_block,false);
mp_grid_add_instances(global.grid,obj_table_v,false);
mp_grid_add_instances(global.grid,obj_table_h,false);
mp_grid_add_instances(global.grid,obj_table2_v,false);
mp_grid_add_instances(global.grid,obj_table2_h,false);