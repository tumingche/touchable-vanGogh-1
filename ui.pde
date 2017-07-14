

void story_vase()
{
  textSize(20);  
  textLeading(36);
  text(text_vase, textPosX, textPosY + 40, width/3, height/2);
  textSize(40);  
  textLeading(80);
}
void story_x_ray()
{
  textSize(20);  
  textLeading(36);
  text(text_x_ray, textPosX, textPosY + 40, width/3, height/2);
  textSize(40);  
  textLeading(80);
}
void story_motif()
{
  textSize(20);  
  textLeading(36);
  text(text_motif, textPosX, textPosY + 40, width/3, height/2);
  textSize(40);  
  textLeading(80);
}
void story_background()
{
  textSize(20);  
  textLeading(36);
  text(text_background, textPosX, textPosY + 40, width/3, height/2);
  textSize(40);  
  textLeading(80);
}
void story_sale()
{
  textSize(20);  
  textLeading(36);
  text(text_sale, textPosX, textPosY + 40, width/3, height/2);
  textSize(40);  
  textLeading(80);
}
void creditlines()
{
  textSize(12);  
  textLeading(21);
  text(text_creditlines, textPosX, height-100, 220, 100);
  textSize(40);  
  textLeading(80);
}
void console_panel()
{
  fill(255, 0, 0);
  textSize(20);  
  textLeading(36);
  text(a + " | " + tint_x_ray + " | " + int(frameRate) + " fps", textPosX, textPosY-60);
  textSize(40);  
  textLeading(80);
  println(a + ", " + c + ", " + tint_x_ray);
}
