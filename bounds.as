package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	
	public class bounds extends MovieClip {
		private var _root = MovieClip(root);
		public var bulletHit:Boolean;
		//
		public function bounds() {
			// constructor code
			//trace("There is something on the stage");
			this.addEventListener(Event.ENTER_FRAME, loop);
		}
		private function loop(e:Event){
			//trace(MovieClip(root).enemyObjectHolder);
		}
	}
	
}
