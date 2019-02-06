PImage m = loadImage("Fireball.png");
float y = 100;
float x = 100;
float speedx = 10;
float speedy = 5;
float gravity = 5;
float r = 255;
float g = 255;
float b = 255;
float my = mouseY;
float mx = mouseX;
var s = 0;
void setup() {
	background (r/2, b/2, g/2);
	fullScreen();
	fill(255)
	rect(0, 0, 100, 50)
	
}

void draw() {
	x = x+speedx;
	y = y+speedy;
	if(x < 0){
	speedx = speedx*-1;
		r = random( 0, 255, 100, 150, 200, 250, 255);
		g = random( 0, 255, 100, 150, 200, 250, 255);
		b = random( 0, 255, 100, 150, 200, 250, 255);
		s = s+1;
	}
	if(x > width){
	speedx = speedx*-1;
				r = random( 0, 255, 100, 150, 200, 250, 255);
		g = random( 0, 255, 100, 150, 200, 250, 255);
		b = random( 0, 255, 100, 150, 200, 250, 255);
		s = s+1;
	}
		if(y < 50){
	speedy = speedy*-0.95;
					r = random( 0, 255, 100, 150, 200, 250, 255);
		g = random( 0, 255, 100, 150, 200, 250, 255);
		b = random( 0, 255, 100, 150, 200, 250, 255);
			s=0
			gravity = 2
	}
	
	if(y > height){
	speedy = speedy*-1;
				r = random( 0, 255, 100, 150, 200, 250, 255);
		g = random( 0, 255, 100, 150, 200, 250, 255);
		b = random( 0, 255, 100, 150, 200, 250, 255);
		s=0
		gravity = -2.3
	}

	speedx = speedx + 0.0;
	y = y+gravity;
	gravity = gravity + 0.06
	speedx = speedx + 0.01
	textSize(512);
	fill(b, r, g)
text(s, width/2 - 128, height/2 + 128); 
		noCursor();
	fill(0, 50);
	rect(0, 0, width, height);
	noStroke();
	fill(255);
	image(m, mouseX - 15, mouseY - 15, 30, 30);
	fill (r, g, b);
	ellipse(x, y, 10, 10);


	 if (keyCode == UP) {
gravity = gravity  - 1; 
	 } else {
gravity = gravity + 0.5;
	 }
	
	
}