/// @description Insert description here
// You can write your code in this editor
drawline=0
if (room==Room2 and global.stage<4){
if(global.activeside == -1){
ybeat=room_height/2 + room_height/4
xbeat=room_width-room_width-20}

else if(room==Room2){
	ybeat=room_height/4	
	xbeat=room_width + 20
}	
var inst = instance_create_layer(xbeat,ybeat,"Instances_2",obj_heartbeat);
if(inst.side==global.aside){
	inst.tweenp=global.apulse
	inst.tweenh=global.abeat
	inst.speed=global.apulse
	alarm[0]=global.abeat
}
else{
	inst.speed=global.vpulse
	inst.tweenp=global.vpulse
	inst.tweenh=global.vbeat
	alarm[0]=global.vbeat}
	
	


alarm[1]=10}