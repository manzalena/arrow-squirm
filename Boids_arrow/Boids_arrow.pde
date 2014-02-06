/**
 * Flocking 
 * by Daniel Shiffman.  
 *
 * Modifications from github.com/manzalena/arrow-squirm
 * 
 * An implementation of Craig Reynold's Boids program to simulate
 * the flocking behavior of birds. Each boid steers itself based on 
 * rules of avoidance, alignment, and coherence.
 * 
 * 
 */

Flock flock;

void setup() {
  size(1240, 880);
  flock = new Flock();
  // Add an initial set of boids into the system
  for (int i = 0; i < 650; i++) {
    flock.addBoid(new Boid(width/2,height/2));
  }
}

void draw() {
  background(255);
  flock.run();
}

// Add a new boid into the System
void mousePressed() {
flock.addBoid(new Boid(mouseX,mouseY));

}

// Saves a TIFF file named "burst.tif"
void keyPressed('s'){
save("burst.tif") 

}
