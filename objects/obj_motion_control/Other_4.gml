#macro tile_size 16

var _w = ceil(room_width / tile_size);
var _h = ceil(room_height / tile_size);

global.mp_grid = mp_grid_create(0, 0, _w, _h, tile_size, tile_size);

mp_grid_add_instances(global.mp_grid, obj_wall, false);





