if(room == MainScreen){
	audio_stop_all();
}
if(room == Tutorial){
	audio_stop_all();
	audio_play_sound(Fire,100,true);
}
if(room == Level3){
	audio_stop_all();
	audio_play_sound(Earth,100,true);
}
if(room == Level5){
	audio_stop_all();
	audio_play_sound(Water,100,true);
}
if(room == Level7){
	audio_stop_all();
	audio_play_sound(Wind,100,true);
}