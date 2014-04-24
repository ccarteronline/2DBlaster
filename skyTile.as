package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	
	public class skyTile extends MovieClip {
		private var characterToBeHit:MovieClip;
		public var bulletObject:MovieClip;
		private var gravityStrength:Number;
		public var characterTileThreshold:Number;
		
		public function skyTile(p1:Number) {
			characterTileThreshold = p1;
		}
		
		public function characterIsOnTile(){
			//console.log("what is the value of the object? ", Movieclip(root).myCharacter);
			//if(this.hitTestObject()){}
		}
		
		public function didCharacterContact(obj:MovieClip, gravity:Number){
			//pass the character to be able to be hit on the tile
			characterToBeHit = obj;
			this.addEventListener(Event.ENTER_FRAME, skyTileFrames);
			gravityStrength = gravity;
		}
		private function skyTileFrames(e:Event){
			//spit back out the character that is hitting the tile then change up the area
			if(this.hitTestObject(characterToBeHit)){
				//characterToBeHit.y-=gravityStrength;
				characterToBeHit.y = (this.y -characterTileThreshold);
			}
		}
	}
	
}
