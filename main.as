package {

	import flash.display.MovieClip;
	import flash.events.KeyboardEvent;
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.display.StageScaleMode;
	import flash.utils.Timer;

	public class main extends MovieClip {
		public var myCharacter: character = new character();
		public var healthBars:characterBars = new characterBars();
		private var _root = MovieClip(root);
		public var displayEnemies:enemySpray;
		public var numEnemies:Number = 1;
		
		//enemy variables
		private var spawnStarter:Number = 1;
		private var spawnThreshold:Number = 30;
		private var enemyObjectHolder:enemy;
		
		public function main() {
			// constructor code
			
			include "level1.as";//start with the tile setup of level1

			this.putCharacterOnStage(20,0);
			
			//add keyboard controls
			stage.addEventListener(KeyboardEvent.KEY_DOWN, keyPressed);
			
			//add game loop
			stage.addEventListener(Event.ENTER_FRAME, gameLoop);
			
			//stretch the screen to fit on the device
			stage.scaleMode = StageScaleMode.EXACT_FIT;
		
			//displayEnemies = new enemySpray(myEnemy);
			
		}
		
		private function createEnemies(numEn:Number, g:Number){
			
			for(var i:Number = 1; i<=numEn; i++){
				var myEnemy:enemy = new enemy();
				
				myEnemy.x = Math.random() * (960 - 1)+ 1;
				myEnemy.y = Math.random() *(0 -200)+ 0;
				//add enemy to stage to test on 
				myEnemy.gravityStrength = g;
				stage.addChild(myEnemy);
				enemyObjectHolder = myEnemy;
				
			}
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
			spawnStarter++;
			
			//check if charcter hit the bounds
			if(myCharacter.hitTestObject(_root.bound_top) || myCharacter.hitTestObject(_root.bound_right) || myCharacter.hitTestObject(_root.bound_bottom) || myCharacter.hitTestObject(_root.bound_left)){
				//trace('you hit the object');
			}
			
			//increment the enemy spawn threshold
			if(spawnStarter == spawnThreshold){
				this.createEnemies(this.numEnemies, 5);
				spawnStarter = 0;
			}
			
			if(myCharacter._bullet != null){
				trace(myCharacter._bullet.name);
				trace(enemyObjectHolder.name);
				if(myCharacter._bullet.hitTestObject(enemyObjectHolder)){
					trace('delete!');
				}
			}
		
			//trace(enemyObjectHolder.name);
				
		}
		public function putCharacterOnStage(xPos:Number, yPos:Number){
			var healthBars:characterBars = new characterBars
			
			myCharacter.gravityStrength = 20;//give
			myCharacter.x = xPos;
			myCharacter.y = yPos;
			myCharacter.name = "myCharacter";
			
			this.healthBars.x = myCharacter.x;
			this.healthBars.y = myCharacter.y;
			
			stage.addChild(myCharacter);
			stage.addChild(healthBars);
		}

	} //end class
} // end package