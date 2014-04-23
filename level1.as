var myTile1: skyTile = new skyTile(20);
var myTile2: skyTile = new skyTile(20);
var myTile3: skyTile = new skyTile(20);
var myTile4: skyTile = new skyTile(20);
var myTile5: skyTile = new skyTile(20);


myTile1.didCharacterContact(myCharacter, myCharacter.gravityStrength);
myTile2.didCharacterContact(myCharacter, myCharacter.gravityStrength);
myTile3.didCharacterContact(myCharacter, myCharacter.gravityStrength);
myTile4.didCharacterContact(myCharacter, myCharacter.gravityStrength);
myTile5.didCharacterContact(myCharacter, myCharacter.gravityStrength);


//align the placement of the first tile first set
myTile1.x = 67.30;
myTile1.y = 86;
myTile1.width = 211;

myTile2.x = 210.85;
myTile2.y = 179;
myTile2.width = 266.00;

myTile3.x = 534.85;
myTile3.y = 199;
myTile3.width = 266

myTile4.x = 641.90;
myTile4.y = 126;
myTile4.width = 80;

myTile5.x = 750.65;
myTile5.y = 69;
myTile5.width = 136.10;

stage.addChild(myTile1);
stage.addChild(myTile2);
stage.addChild(myTile3);
stage.addChild(myTile4);
stage.addChild(myTile5);