package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	
	public class character extends MovieClip {
		public var gravityStrength:Number;
		private var defaultHeldGravity:Number;
		private var jumping:Boolean = false;
		private var jumpThreshold:Number = 0;
		public var maxJump:Number = 3;
		public var facingPosition:String = "right";//character faces right by default
		public var _bullet:bullet;
		
		public function character() {
			// constructor code
			this.addEventListener(Event.ENTER_FRAME, this.characterFrames);
		}
		
		private function characterFrames(e:Event){
			
			if(jumping){
				if(jumpThreshold != maxJump){
					this.gravityStrength--;
					this.createGravity(gravityStrength);
					jumpThreshold++;
					
				}else if(jumpThreshold == maxJump){
					this.gravityStrength = this.defaultHeldGravity;
					jumping = false;//stop jumping
					jumpThreshold = 0;
				}
				
			}else{
				this.createGravity(gravityStrength);
			}
			
		}
		
		public function createGravity(amount:Number){
			this.y = (this.y + amount);
		}
		
		public function jump(gravity:Number){
			//put the old gravity value in the held variable
			this.defaultHeldGravity = this.gravityStrength;
			jumping = true;
			this.gravityStrength = gravity;
		}
		
		public function shoot(){
			_bullet = new bullet(this.facingPosition);
			_bullet.x = this.x;
			_bullet.y = this.y;
			//
			stage.addChild(this._bullet);
		}
	}
	
}
