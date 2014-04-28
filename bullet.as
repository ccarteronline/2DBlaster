package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.display.Stage;
	
	public class bullet extends MovieClip {
		private var _root = MovieClip(root);
		public var bulletSpeed:Number = 10;
		public var bulletPosition:String = "right";
		public var _el:Stage;
		
		public function bullet(bPosition:String) {
			// constructor code
			this.addEventListener(Event.ENTER_FRAME, moveBullet);
			//trace(bulletPosition);
			this.bulletPosition = bPosition;
		}
		private function moveBullet(event:Event){
			
			if(this.bulletPosition == "right"){
				this.x+=bulletSpeed;
				
			}else if(this.bulletPosition == "left"){
				this.x-=bulletSpeed;
			}
			
			this.cleanUpBullets();//remove the bullets if they hit the bounds
			
		}
		private function cleanUpBullets(){
			if(this.x>960 || this.x<-5){
				//trace("remove this");
				this.removeEventListener(Event.ENTER_FRAME, moveBullet);
				stage.removeChild(this);
			}
		}
	}
	
}
