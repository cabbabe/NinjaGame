var i = 0, array_length = array_length_1d(menu_pages);
repeat(array_length){
	ds_grid_destroy(menu_pages[i]);
	i++;
}