Spaceship bob = new Spaceship();
ArrayList <Bullet> bullets = new ArrayList <Bullet>();
Star[] spaceSky = new Star[200];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
float bx,by,rx,ry;

public void setup() 
{
  size(500,500);
  for(int i = 0; i < spaceSky.length; i++){
  	spaceSky[i] = new Star();
  }
  for(int i = 0; i <= 8; i++){
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
	for(int i = bullets.size(); i>0; i--){
		for(int x = rocks.size(); i>0; i--){
			bx = (float)(bullets.get(i-1).getMyCenterX());
			by = (float)(bullets.get(i-1).getMyCenterY());
			rx = (float)(rocks.get(x-1).getMyCenterXRock());
			ry = (float)(rocks.get(x-1).getMyCenterYRock());

			if(dist(bx,by,rx,ry) < 30){
				bullets.remove(i);
				rocks.remove(x);
				break;
			}
		}
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