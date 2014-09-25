void setup()
{
	noLoop();
	size (1024,4000);
	}
void draw()
{
	int sum=0;
	for (int a=0;a<2501;a+=8)
	{
		for (int b=0;b<951;b+=8)
		{
			Die dice = new Die(a,b);
			dice.roll();
			dice.show();
			sum=sum+dice.num;
		}
	}
	textSize(150);
	fill(0, 102, 153, 51);
	textAlign(CENTER,CENTER);
	text(sum+" total", 500, 475);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int a, b, num;

	Die(int x, int y) //constructor
	{
		a=x;
		b=y;
		//variable initializations here
	}
	void roll()
	{
		num=(int)((Math.random()*6)+1);
	
		//your code here
	}
	void show()
	{
		fill(255);
		rect(a,b,8,8);
		if(num==1)
		{
			point (a+4, b+4);
		}
		else if(num==2)
		{
			point (a+2, b+4);
			point (a+6, b+4);
		}
		else if(num==3)
		{
			point(a+2, b+2);
			point(a+4, b+4);
			point(a+6,b+6);
		}
		else if(num==4)
		{
			point(a+2, b+2);
			point(a+2, b+6);
			point(a+6, b+6);
			point(a+6, b+2);
		}
		else if(num==5)
		{
			point(a+2,b+2);
			point(a+6,b+2);
			point(a+4,b+4);
			point(a+2,b+6);
			point(a+6,b+6);
		}
		else if(num==6)
		{
			point(a+2,b+2);
			point(a+2,b+4);
			point(a+2,b+6);
			point(a+6,b+2);
			point(a+6,b+4);
			point(a+6,b+6);
		}
		
	
	

	}
}
