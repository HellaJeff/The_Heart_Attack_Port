/// @description Insert description here
// You can write your code in this editor

//initializes heart rate, pulse speed, and tween values for each phase. Called when fading in
//called before phase increments inn game controller


if(global.phase==0){
	heartController.setHeartRatePulseSpeed(global.HEART_RATE_01,global.PULSE_SPEED_01);}	
	
if(global.phase==1){
	heartController.setHeartRatePulseSpeed(global.HEART_RATE_02,global.PULSE_SPEED_02);
	global.tweenp=heartController.pulseSpeed
	global.tweenh=heartController.heartRate
	}	
	

if(global.phase==3){
	heartController.setHeartRatePulseSpeed(global.HEART_RATE_03,global.PULSE_SPEED_03);
	global.tweenpa=heartController.pulseSpeed
	global.tweenha=heartController.heartRate
	global.tweenp=heartController.pulseSpeed
	global.tweenh=heartController.heartRate
	}	

