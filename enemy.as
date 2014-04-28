package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	
	public class enemy extends MovieClip {
		public var gravityStrength:Number;
		public var explode:Boolean;
		
		public function enemy() {
			// constructor code
			this.addEventListener(Event.ENTER_FRAME, enemyLoop);
		}
		private function enemyLoop(e:Event){
			this.createGravity(gravityStrength);
			
			//check if at the end of bounds
			if(this.y>= 640){
				this.explode = true;
				trace('This is where it should explode');
				this.die();
			}
		}
		
		public function createGravity(amount:Number){
			this.y = (this.y + amount);
		}
		private function die(){
			this.removeEventListener(Event.ENTER_FRAME, enemyLoop);
			stage.removeChild(this);
		}
	}
	
}
