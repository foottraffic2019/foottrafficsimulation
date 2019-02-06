PImage map;

int posX = 10;
int posY = 10

int pedestrianNo = 100;

Pedestrian ped1;
Pedestrian ped2;

int estebanleftX = 20;
int estebanleftY = 200;
int estebanleftR2Y = estebanleftY + 100;

int estebanrightX = 950;
int estebanrightY = 200;
int estebanrightR2Y = estebanrightY + 100; 

int estebantopX = 340;
int estebantopY = 20;
int estebantopR2X = estebantopY + 300;

Pedestrian[] pedestrians = new Pedestrian[pedestrianNo];

boolean running = true;

boolean openEL2ER = false;
boolean openEL2ET = false;

boolean openER2EL= false;
boolean openER2ET = false;

/* from esteban left */
Pedestrian[] pedestriansEL2ER = new Pedestrian[pedestrianNo];
Pedestrian[] pedestriansEL2ET = new Pedestrian[pedestrianNo];

/* from esteban right */
Pedestrian[] pedestriansER2EL = new Pedestrian[pedestrianNo];
Pedestrian[] pedestriansER2ET = new Pedestrian[pedestrianNo];

Button button1;
Button button2;
Button button3;
Button button4;

void setup() {
    size(1270, 1000);
	stroke(200);
	println("Crowd simulation | current pedestrian count: " + pedestrianNo);

	/* drawing roads */
	prepDestinations();

	startAnimation(1);

	// Load map background
	map = loadImage("esteban.png");
	map.resize(1270, 700);
	image(map, 0, 0);

	// Control buttons
	button1 = new Button("1",20,30);
	button2 = new Button("2",20,55);
	button3 = new Button("3",20,80);
	button4 = new Button("4",20,105);
}

void prepDestinations() {
	/* draw destinations */
	rect (estebanleftX, estebanleftY, 300, 100); 
	rect (estebanleftX, estebanleftR2Y, 300, 100);
	fill (0,0,255);

	rect (estebanrightX, estebanrightY, 300, 100); 
	rect (estebanrightX, estebanrightR2Y, 300, 100);
	fill (0,0,255);

	rect (estebantopX, estebantopY, 300, 100); 
	rect (estebantopR2X, estebantopY, 300, 100);
	fill (0,0,255);
}

void startAnimation(int AnimType) {
	for (int x=0; x<pedestrians.length; x++) {
		/* from esteban left */
		pedestriansEL2ER[x] = new Pedestrian(estebanleftX,estebanleftR2Y, 1);
		pedestriansEL2ET[x] = new Pedestrian(estebanleftX, estebanrleftR2Y,1);

		/* from esteban right */
		pedestriansER2EL[x] = new Pedestrian(estebanrightX,estebanrightY, 1);
		pedestriansER2ET[x] = new Pedestrian(estebanrightX, estebanrightR2Y,1);
	}
}

void draw() {
	background(255);
	fill(0, 20, 300);

	image(map, 0, 0);

	prepDestinations();

	button1.redraw();
	button2.redraw();
	button3.redraw();
	button4.redraw();

	if (running) {
		for (int x=0; x<pedestrians.length; x++) {
			
		}
	}
}


