Spaceship bob = new Spaceship();
ArrayList <Bullet> bullets = new ArrayList <Bullet>();
Star[] spaceSky = new Star[200];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
public void setup() 
{
  size(500,500);
  for(int i = 0; i < spaceSky.length; i++){
  	spaceSky[i] = new Star();
  }
  for(int i = 0; i <= 5; i++){
  	rocks.add(new Asteroid());
  }
}
public void draw() 
{
	background(0);
	for(int i = 0; i < spaceSky.length; i++){
		spaceSky[i].show();
	}
	for(int i = 0; i < rocks.size(); i++){
		rocks.get(i).show();
		rocks.get(i).move();
	}
	for(int i = 0; i < bullets.size(); i++){
		bullets.get(i).show();
		bullets.get(i).move();
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
	if(key == 'g'){
		bullets.add(new Bullet(bob));
	}
}