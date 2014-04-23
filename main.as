package {

	import flash.display.MovieClip;
	import flash.events.KeyboardEvent;
	import flash.display.MovieClip;
	import flash.events.Event;

	public class main extends MovieClip {
		public var myCharacter: character = new character();
		private var _root = MovieClip(root);
		

		public function main() {
			// constructor code
			myCharacter.gravityStrength = 20;//give
			
			include "level1.as";//start with the tile setup of level1

			myCharacter.x = 20;
			stage.addChild(myCharacter);
			
			//add keyboard controls
			stage.addEventListener(KeyboardEvent.KEY_DOWN, keyPressed);
			
			//add game loop
			stage.addEventListener(Event.ENTER_FRAME, gameLoop);

		}

		private function keyPressed(event: KeyboardEvent): void {
			
			//trace("User is pressing key:", event.keyCode);
			
			if (event.keyCode == 39) { //Move Right
				
				myCharacter.x = (myCharacter.x + 20);
				myCharacter.facingPosition = "right";

			} else if (event.keyCode == 37) { //Move Left

				myCharacter.x = (myCharacter.x - 20);
				myCharacter.facingPosition = "left";

			} else if (event.keyCode == 38) { //Move Up
				
				myCharacter.jump(-20);

			} else if (event.keyCode == 40) { //Move Down
				
				myCharacter.y = (myCharacter.y + 20);
				
			}else if(event.keyCode == 66){
				myCharacter.shoot();//shoot the bullet from the character
			}
		} //end function
		
		
		private function gameLoop(e:Event){
			trace("normal");
			//check if charcter hit the bounds
			if(myCharacter.hitTestObject(_root.bound_top) || myCharacter.hitTestObject(_root.bound_right) || myCharacter.hitTestObject(_root.bound_bottom) || myCharacter.hitTestObject(_root.bound_left)){
				trace('you hit the object');
			}
		}

	} //end class
} // end package