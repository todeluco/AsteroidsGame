class Asteroid extends Floater{
	int rotSpeed = (int)(Math.random()*4) - 2;
	public Asteroid(){
		corners = 6;
		int[] xS = {-11,7,13,6,-11,-12,};
		int[] yS = {-8,-10,0,10,4,0};
		xCorners = xS;
		yCorners = yS;
		myColor = color(190);
		myCenterX = myCenterY = (int)(Math.random()*500);
		myDirectionX = (int)(Math.random()*4) - 2;
		myDirectionY = (int)(Math.random()*4) - 2;
		myPointDirection = -200;
	}
	public void move(){
		turn(rotSpeed);
		super.move();
	}
	public double getMyCenterXRock(){
		return myCenterX;
	}
	public double getMyCenterYRock(){
		return myCenterY;
	}
}