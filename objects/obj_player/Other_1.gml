/// @description Reset level (fell in pit)
// You can write your code in this editor

if (y > room_height) { if (global.midTransition) room_goto(room); else TransitionStart(room, seq_fade_in, seq_fade_out); }