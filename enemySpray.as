package  {
	import flash.display.Sprite;
	import flash.display.MovieClip;
	
	public class enemySpray extends MovieClip{
		public var numEnemies:Number = 10;
		public var container:Sprite = new Sprite();
		private var heldMovieClip:MovieClip;
		
		public function enemySpray(theEnemy:MovieClip) {
			// constructor code
			this.loopThroughNumEnemies(numEnemies);
			theEnemy = heldMovieClip;
		}
		private function loopThroughNumEnemies(numE:Number){
			for(var i:Number = 1; i<= numE; i++){
				//create enemy
				heldMovieClip.x = 30;
				heldMovieClip.y = 30;
				stage.addChild(heldMovieClip);
			}
				
		}

	}
	
}