﻿package  {
	
	import flash.display.MovieClip;
	import flash.events.TouchEvent;
	import flash.events.MouseEvent;
	
	
	public class GameControls extends MovieClip {
		
		private var _root = MovieClip(root);
		
		public function GameControls() {
			// constructor code
			this.upButton.addEventListener(MouseEvent.MOUSE_MOVE, jump);
			this.rightButton.addEventListener(MouseEvent.MOUSE_MOVE, moveRight);
			this.downButton.addEventListener(MouseEvent.MOUSE_MOVE, moveDown);
			this.leftButton.addEventListener(MouseEvent.MOUSE_MOVE, moveLeft);
			this.dpadShoot.addEventListener(MouseEvent.MOUSE_MOVE, shoot);
		}
		public function jump(e:MouseEvent){
			
			_root.myCharacter.jump(-20);
		}
		public function moveRight(e:MouseEvent){
			
			_root.myCharacter.x = (_root.myCharacter.x + 20);
			_root.myCharacter.facingPosition = "right";
		}
		public function moveDown(e:MouseEvent){
			
			_root.myCharacter.y = (_root.myCharacter.y + 20);
		}
		public function moveLeft(e:MouseEvent){
			
			_root.myCharacter.x = (_root.myCharacter.x - 20);
			_root.myCharacter.facingPosition = "left";
		}
		private function shoot(e:MouseEvent){
			
			_root.myCharacter.shoot();//shoot the bullet from the character
		}
	}
	
}
