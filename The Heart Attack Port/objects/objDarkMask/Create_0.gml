#macro DARK_MASK_FADE_IN_DURATION (2 * room_speed) //Number, default 2x frame rate (2 seconds)
#macro DARK_MASK_FADE_OUT_DURATION (2 * room_speed) //Number, default 2x frame rate (2 seconds)
#macro DARK_MASK_MAX_ALPHA 0.8

shouldFadeIn = false; //
fadeInDuration = 0.0;
fadeOutDuration = 0.0;
maxAlpha = 0.0;
fin=false;
fout=false;

function construct(xx=0,yy=0,shouldFadeIn=true, fadeInDuration = 2, fadeOutDuration = 2, maxAlpha = 0.8, pixelated = false){
self.shouldFadeIn=shouldFadeIn;
	if (!pixelated)
		object_set_sprite(self,spr_rect); 
	else
		object_set_sprite(self,spr_block_mask_black);
	
	image_yscale=yy/sprite_height
	image_xscale=xx/sprite_width
	
	depth = -100;
//	graphic.scrollX = 0;
//	graphic.scrollY = 0;		
			
	self.shouldFadeIn = shouldFadeIn;
	self.maxAlpha = maxAlpha;
	if (shouldFadeIn)
		image_alpha = 0;
	else 
		image_alpha = maxAlpha;
				
	self.fadeInDuration = fadeInDuration;
	self.fadeOutDuration = fadeOutDuration;

}

function fadeIn(duration){
		fadeInDuration=duration;
		fin=true;
		fout=false;
}
		
function fadeOut(duration){
		fadeOutDuration=duration;
		fin=false;
		fout=true;}		
		
function destroy(){
		instance_destroy();
		}		
		