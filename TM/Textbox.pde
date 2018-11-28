class TextBox
{
  PFont Font = createFont("ArialNarrow",10);
  boolean selected = false;
  String Text = "";
  float x = 0;
  float y = 0;
  float w = 0;
  float h = 0;
  int TextLength = 0;
  int sSize = 1;
  int tSize = 25;
  color tc = color(255,255,255);
  color sc = color(255,255,255);
  color c = color(20,20,25);


//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  TextBox(float a, float b, float c, float d) {
    x = a;  y = b;  w = c;  h = d;
  }
  
//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  boolean mouseOver() {
    if(mouseX > x && mouseX <x+w && mouseY > y && mouseY <y+h)  return true;
    else  return false;
  }
 
//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  boolean keyPressed(char KEY, int KEYCODE) {
    if (selected) {
      if (KEYCODE == (int)BACKSPACE)          BACKSPACE(); 
      else if (KEYCODE == 32)                 addText(' '); 
      else if (KEYCODE == 27)                 return true;
      else  {
        addText(KEY);
      }
    }
    return false;
  }
    
//-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

 void BACKSPACE() {
    if (TextLength - 1 >= 0) {
      Text = Text.substring(0, TextLength - 1);
      TextLength--;
    }
  }

//-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

  void addText(char text) {
    if (textWidth(Text + text) < w-30) {
      Text += text;
      TextLength++;
    }
  }
  
//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  void display() {
    if(selected) {
      sSize = 3;
      c = color(0,0,0);
    } else {
      sSize = 1;
      c = color(20,20,25);
    }
    if(mouseOver() && !selected) c = color(35,35,40);
    else c = color(20,20,25);
    fill(c);
    stroke(sc);
    strokeWeight(sSize);
    rect(x, y, w, h,2,2,2,2);
    fill(tc);
    textFont(Font);
    textSize(tSize);
    textAlign(CORNER, CENTER);
    text(Text,x+10,y+h/2-3);
  }
}

//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
