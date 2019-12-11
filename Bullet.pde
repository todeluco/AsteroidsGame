class Bullet extends Floater{
	public Bullet(Spaceship bob){
		myCenterX = bob.myCenterX;
		myCenterY = bob.myCenterY;
		myPointDirection = bob.myPointDirection;
		double dRadians = myPointDirection*(Math.PI/180);
		myDirectionX = 5*Math.cos(dRadians) + bob.myDirectionX;
		myDirectionY = 5*Math.sin(dRadians) + bob.myDirectionY;
	}
	public void show(){
		fill(255,0,0);
		ellipse(Math.round(myCenterX),Math.round(myCenterY),5,5);
	}
}