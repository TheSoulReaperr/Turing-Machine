TextBox input;
TextBox output;
Symbol symbols[];
String Input;

void setup() {
  fullScreen();
  input = new TextBox(120, 70, 800, 40);
  output = new  TextBox(120, 120, 800, 40);
}

void draw() {
  background(55, 55, 65);
  devMode();
  drawTexts();
  input.display();
  output.display();
  Input = input.Text;
  if (input.TextLength > 0) {
    //for(int i=0; 
  }
}
