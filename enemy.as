package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	
	public class enemy extends MovieClip {
		public var gravityStrength:Number;
		
		public function enemy() {
			// constructor code
			this.addEventListener(Event.ENTER_FRAME, enemyLoop);
		}
		private function enemyLoop(e:Event){
			this.createGravity(gravityStrength);
		}
		
		public function createGravity(amount:Number){
			this.y = (this.y + amount);
		}
	}
	
}
