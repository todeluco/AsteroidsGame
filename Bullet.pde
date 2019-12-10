class Bullet extends Spaceship{
	public Bullet(Spaceship bob){
		/*double myCenterX = Spaceship.getMyCenterX();
		myCenterY = Spaceship.getMyCenterY();
		myPointDirection = Spaceship.getMyPointDirection();
		double dRadians = myPointDirection*(Math.PI/180);
		myDirectionX = 5*Math.cos(dRadians) + Spaceship.getMyDirectionX();
		myDirectionY = 5*Math.sin(dRadians) + Spaceship.getMyDirectionY();*/
		myCenterX = bob.myCenterX;
		myCenterY = bob.myCenterY;
		myPointDirection = bob.myPointDirection;
		double dRadians = myPointDirection*(Math.PI/180);
		myDirectionX = 5*Math.cos(dRadians) + bob.myDirectionX;
		myDirectionY = 5*Math.sin(dRadians) + bob.myDirectionY;
	}
	public void show(){
		fill(255,0,0);
		ellipse(Math.round(bob.myCenterX),Math.round(bob.myCenterY),5,5);
	}
	public void move(){
		super.move();
	}
}