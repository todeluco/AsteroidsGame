Spaceship bob = new Spaceship();
Star[] spaceSky = new Star[200];
public void setup() 
{
  size(500,500);
  for(int i = 0; i < spaceSky.length; i++){
  	spaceSky[i] = new Star();
  }
}
public void draw() 
{
	background(0);
	for(int i = 0; i < spaceSky.length; i++){
		spaceSky[i].show();
	}
	bob.show();
	bob.move();
}
public void keyPressed(){
	if(key == 'w'){
		bob.move();
		bob.accelerate(0.1);
	}
	if(key == 'h'){
		bob.hyperspace();
	}
	if(key == 'a'){
		bob.turn(-10);
	}
	if(key == 'd'){
		bob.turn(10);
	}
}
