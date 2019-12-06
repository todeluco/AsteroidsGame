class Bullet extends Spaceship{
	public Bullet(){
		myCenterX = getMyCenterX();
		myCenterY = getMyCenterY();
		myPointDirection = getMyPointDirection();
		double dRadians = myPointDirection*(Math.PI/180);
		myDirectionX = 5*Math.cos(dRadians) + getMyDirectionX();
		myDirectionY = 5*Math.sin(dRadians) + getMyDirectionY();
	}
	public void show(){
		fill(255,0,0);
		ellipse(50,50,5,5);
	}
}