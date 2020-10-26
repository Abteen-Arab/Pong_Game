// Abteen Arab
// "Date"
// Block: 1-1B 
// "Project Name"

//Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

/*

 Key Features; 
 - The pong project offers 3 player colours options in addition to 3 court options which can be found in options.
 - There are 3 game modes;
     - The Robot mode pits two robots head to head which is oddly entertaining.
     - The 1 player mode pits 1 player against an AI operated right paddle.
     - The 2 player mode pits two people against each other.  
 - Each game mode has 3 correlating difficulty modes;
     - The Easy uses the same AI code used within the class all while being slow and easy to defeat.
     - The Default uses similar mechanics as easy all while moving faster
     - The Ludicrous difficulty uses new mechanics that match the VY of the ball with the Y of the paddle all while making it 20% slower.
 - The scoring system has a pretty cool win by two system that uses the absolute power function.
 
 */

//controls different screens (modes)
int mode; 
int introc, Optionc, Instc, gamec, pausec, goc;
final int Intro =0, Option = 1, Inst=2, Game=3, Pause=4, GameOver=5, Score = 6; //these are used to give purpose ot modes, final locks the varaible

//Point Variables
int pointl, pointr;

//Actual Movement Variables
float leftx, lefty, leftd, rightx, righty, rightd, ballx, bally, balld;
float vx, vy;

//Movement Decider Variable 
boolean wkey, ykey, upkey, downkey;
boolean bup, bdown;

//Backgrounds + colors
PImage bckgrndb, bckgrndl, bckgrndr, Logo, tble;
color Red, Green, Blue, Bluer, Brown, Yellow, Orange;

//Logo
PFont Logo_Font;

//Different Selectors
int courtselector, playerselector, gameselector, hardselector;

Minim minim;
AudioPlayer hit, score, theme, clap;

void setup() { // =============================================================
  size(800, 600);
  frameRate(60);
  mode = Intro;
  textAlign(CENTER, CENTER);

  //Movement Setup
  leftx = 0;
  lefty = height/2;
  leftd = height/8;

  rightx = width;
  righty = height/2;
  rightd = height/8;

  ballx = width/2;
  bally = height/2;
  balld = rightd/2;

  //AI Setup
  if (gameselector == 3) {
    vx = 6; 
    vy=  3;
  } else {
    vx = 6; 
    vy=  1;
  }
//Background Image Setup
bckgrndb = loadImage("background.jpg");
bckgrndb.resize(800, 600);
bckgrndl = loadImage("BackgroundB.jpg");
bckgrndl.resize(800, 600);
bckgrndr = loadImage("backgroundY.jpg");
bckgrndr.resize(800, 600);

Logo = loadImage("Flogo.png");
Logo.resize(100, 600);
tble = loadImage("Table.jpg");
tble.resize(800, 600);

//Color Setup
Red    = #F04D4D;
Green  = #099000;
Blue   = #03B1FF;
Brown  = #935B00;
Yellow = #DBD631;
Orange = #FFA600;
Bluer  = #0562FF;
//Font
Logo_Font = createFont("Futuristic Armour.otf", 13);

//Music Setup
minim = new Minim(this);
hit = minim.loadFile("Pong effects-1.mp3");
score = minim.loadFile("coin.wav");
theme = minim.loadFile("theme.mp3");
clap = minim.loadFile("clapping.wav");

//Option
courtselector = 2;
playerselector = 2;
gameselector = 1;
hardselector = 1;

//Bot
bdown = false;
bup = false;
}

void draw() { // =============================================================
  //Organizational Framework For The Code; chooses between one of many functions
  if (mode == Intro) {
    intro();
  } else if (mode == Inst) { // else is if the prevous if is not true
    Inst();
  } else if (mode == Option) { // else is if the prevous if is not true
    Option();
  } else if (mode == Game) { // else is if the prevous if is not true
    game();
  } else if (mode == Score) { // else is if the prevous if is not true
    Score();
  } else if (mode == Pause) { // else is if the prevous if is not true
    pause();
  } else if (mode == GameOver) { // else is if the prevous if is not true
    go();
  } else { // else is if the prevous if is not true
    println("Error: Mode = " + mode);
  }
  //Music Player
  if (mode == Inst || mode == Intro || mode == Option) {
    theme.play();
  } else {
    theme.pause();
    theme.rewind();
  }

} // =========================================================================

void tactileR(int x, int x1, int y, int y1) { //==============================
  if (mouseX > x && mouseX < x1 && mouseY > y && mouseY < y1) {
    stroke (255);
    strokeWeight(3);
  } else {
    stroke (0);
    strokeWeight(1);
  }
} // =========================================================================
