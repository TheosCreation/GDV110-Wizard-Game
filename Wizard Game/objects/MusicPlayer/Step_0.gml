if(keyboard_check_pressed(vk_left)){
volume-=0.1;
audio_master_gain(volume);
}
if(keyboard_check_pressed(vk_right)){
volume+=0.1;
audio_master_gain(volume);
}