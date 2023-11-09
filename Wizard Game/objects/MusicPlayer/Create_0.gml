if(room == MainScreen){
	audio_stop_all();
}
if(room == Tutorial /*or room == Game or room == Level2*/){
	audio_play_sound(fire,100,true);
}
if(room == Level3){
	audio_stop_all();
	audio_play_sound(earth,100,true);
}
if(room == Level4){
	audio_stop_all();
	audio_play_sound(water,100,true);
}
if(room == Level5){
	audio_stop_all();
	audio_play_sound(water,100,true);
}