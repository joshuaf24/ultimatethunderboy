/// @description Insert description here
// You can write your code in this editor
draw_sprite(shealthbarbg,0,healthbar_x,healthbar_y);
draw_sprite_stretched(shealthbar,0,healthbar_x,healthbar_y,(global.ehp/hp_max) * healthbar_w, healthbar_height);
draw_sprite(shealthbarborder,0,healthbar_x,healthbar_y);
