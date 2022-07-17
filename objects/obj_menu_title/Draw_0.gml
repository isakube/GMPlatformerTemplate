/// @description Menu text (basic as fuck)
// You can write your code in this editor

draw_set_font(fnt_Pusab);
draw_set_alpha(0.5);
draw_set_color(c_black);

draw_text(16 + TEXT_DROP_SHADOW_X, 16 + TEXT_DROP_SHADOW_Y, "Platformer Template");
draw_text(16 + TEXT_DROP_SHADOW_X, 80 + TEXT_DROP_SHADOW_Y, "Press Enter To Start");

draw_set_alpha(1);
draw_set_color(c_white);

draw_text(16, 16, "Platformer Template");
draw_text(16, 80, "Press Enter To Start");


