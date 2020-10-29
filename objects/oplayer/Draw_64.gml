/// @description Insert description here
// You can write your code in this editor
draw_sprite(shealthbarbg,0,healthbar_x,healthbar_y);
draw_sprite_stretched(shealthbar,0,healthbar_x,healthbar_y,(global.php/php_max) * healthbar_w, healthbar_height);
draw_sprite(shealthbarborder,0,healthbar_x,healthbar_y);


draw_sprite(sthunderbarbg,0,thunderbar_x,thunderbar_y);
draw_sprite_stretched(sthunderbar,0,thunderbar_x,thunderbar_y - 290,thunderbar_w,(thunder/thunder_max) * thunderbar_height);
draw_sprite(sthunderbarborder,0,thunderbar_x,thunderbar_y);