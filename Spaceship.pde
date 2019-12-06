class Spaceship extends Floater  
{   
    public Spaceship(){
    	corners = 4;
    	int[] xS = {-8, 16, -8, -2};
    	int[] yS = {-8, 0, 8, 0};
    	xCorners = xS;
    	yCorners = yS;
    	myColor = color(255,255,255);
    	myCenterX = 250;
    	myCenterY = 250;
    	myDirectionX = 0;
    	myDirectionY = 0;
    	myPointDirection = -200;
    }
    public double getMyCenterX(){
    	return myCenterX;
    }
    public double getMyCenterY(){
    	return myCenterY;
    }
    public double getMyPointDirection(){
    	return myPointDirection;
    }
    public double getMyDirectionX(){
    	return myDirectionX;
    }
    public double getMyDirectionY(){
    	return myDirectionY;
    }
    public void hyperspace(){
    	myCenterX = (int)(Math.random()*500);
    	myCenterY = (int)(Math.random()*500);
    }
}