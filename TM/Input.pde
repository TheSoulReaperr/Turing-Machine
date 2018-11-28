
void mousePressed() {
  if(input.mouseOver()) input.selected = true;
  else input.selected = false;
}

void keyPressed() {
  input.keyPressed(key,keyCode);
}
