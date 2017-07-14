/*
Interactive Storytelling through Touchable Van Gogh (Prototype #1) 
Ming Tu, DIET, Harvard Art Museums
March 2016

3D printed painitng + touch frame + interpretive multimedia materials
1. Move your finger on the 3D printed painting to see/listen the multimedia content
2. Touch and slide the black area between the bottom of the 
painting and touch frame to interact with the overlapped visible and X-ray photographs
3. Press the sapce bar to toggle the mapping (console mode)
*/


PImage myImg_painting; 
PImage myImg_painting_x_ray; 
PImage myImg_grayScale_mapping;
color c;
int a;

int modMousePosX;
int modMousePosY;

int textPosX;
int textPosY;

int tint_visible = 0;
int tint_x_ray = 0;

boolean show_color = true; 

PFont myFont_1;
 
 
 
 
void setup()
{
  //size(1280, 720);
  //size(displayWidth, displayHeight, OPENGL);
  //frame.setLocation(0, 0);
  size(displayWidth, displayHeight);
  frameRate(60);
  myImg_painting = loadImage("height_1920.jpg");
  myImg_painting_x_ray = loadImage("height_1920_x_ray.jpg"); 
  myImg_grayScale_mapping = loadImage("myImg_grayScale_mapping.jpg"); 
  myFont_1 = createFont("SansSerif", 36);    //"Arial Italic"
  textFont(myFont_1); 
  textSize(40);
  textLeading(80); 
  textPosX = width/2;
  textPosY= height/3;
  noFill();
  noStroke();
  //noCursor();
}
 
 
 
 
void draw()
{
  tint(255, 255);
  image(myImg_grayScale_mapping, 0, 0, width, height);  
  //set(0, 0, myImg_grayScale_mapping); 
  console_panel();
  if(show_color)  draw_color(); 
  creditlines();
  
   
  if(mousePressed) 
  {
    modMousePosX = int(map(mouseX, 0, width, 0, 1280));
    modMousePosY = int(map(mouseY, 0, height, 0, 720));
    c = myImg_grayScale_mapping.get(modMousePosX, modMousePosY); 
    a = int(red(c));
  }
  
  
  
  if (a == 255)
  {
    text("White daisies", textPosX, textPosY);
  }
  else if (a <= 248 && a >= 242)
  {  
    text("Yellow spring sunflowers", textPosX, textPosY);
    story_motif();
  }
  else if (a <= 238 && a >= 232)
  {
    text("Orange anemones", textPosX, textPosY);
  }
  else if (a <= 228 && a >= 222)
  {
    text("Red Liliaceae/Ranunculaceae", textPosX, textPosY);
  }
  else if (a <= 218 && a >= 212)
  {
    text("Purple flowers", textPosX, textPosY);
  }
  else if (a <= 208 && a >= 202)
  {
    text("Blue lilacs", textPosX, textPosY);
  }
  else if (a <= 198 && a >= 192)
  {
    text("Pink flowers", textPosX, textPosY);
  }
  else if (a <= 188 && a >= 182)
  {
    text("Leaves", textPosX, textPosY);
  }
  else if (a <= 63 && a >= 57)
  {  
    text("Vase: neck", textPosX, textPosY);
    story_vase();
  }
  else if (a <= 53 && a >= 47)
  {  
    text("Vase: body", textPosX, textPosY);
    story_vase();
  }
  else if (a <= 43 && a >= 37)
  {  
    text("Vase: base", textPosX, textPosY);
    story_vase();
  }
  else if (a <= 33 && a >= 27)
  {
    text("Yellow-green table", textPosX, textPosY);
    story_sale();
  }
  else if (a <= 13 && a >= 7)
  {
    text("Blue pointillistic background", textPosX, textPosY);
    story_background();
  }
  else if (a <= 3 && a >= 0)  
  {
    text("Nothing", textPosX, textPosY);
  }
  else  text("I don't know...", textPosX, textPosY);
  
  
  if(a == 100)
  {  
    fill(0);
    rect(textPosX, textPosY-100, width-textPosX, 200);
    fill(255);
    text("X-Radiograph transparency = " + int(map(tint_x_ray, 0, 255, 0, 100)) + "%", textPosX, textPosY);
    story_x_ray();
    tint_visible = 255;
    tint_x_ray = int(map(mouseY, 0, height, 0, 255));
  } else {
    tint_visible = 0;
    tint_x_ray = 0;
  }
    
  
  frame.setTitle(int(frameRate) + " fps");
}


void keyPressed() 
{
  if (key == ' ')  show_color = ! show_color ? true : false;
}
  
  
void draw_color()
{
  background(0);
  tint(255, tint_visible);
  image(myImg_painting, 0, 0, 1182*height/1920, height);
  tint(255, tint_x_ray);
  image(myImg_painting_x_ray, 0, 0, 1182*height/1920, height);
  fill(255);    
}


void init() 
{
  frame.removeNotify();
  frame.setUndecorated(true);
  frame.addNotify();
  super.init(); 
}

