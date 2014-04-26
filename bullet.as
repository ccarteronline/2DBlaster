package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	
	public class bullet extends MovieClip {
		private var _root = MovieClip(root);
		public var bulletSpeed:Number = 10;
		public var bulletPosition:String = "right";
		
		public function bullet(bPosition:String) {
			// constructor code
			this.addEventListener(Event.ENTER_FRAME, moveBullet);
			//trace(bulletPosition);
			this.bulletPosition = bPosition;
		}
		private function moveBullet(event:Event){
			//trace(this.bulletPosition);
			if(this.bulletPosition == "right"){
				this.x+=bulletSpeed;
				
			}else if(this.bulletPosition == "left"){
				this.x-=bulletSpeed;
			}
			
			if(_root.myTile1.bulletHit == true){
				trace('exists!');
			}
						
			
		}
	}
	
}
