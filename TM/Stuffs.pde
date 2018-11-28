
void drawTexts() {
  fill(255);
  textSize(27);
  textAlign(CENTER,CENTER);
  text("Turing Machine",120,30);
  textSize(24);
  text("Input :",75,85);
  text("Output : ",70,135);
}

void devMode() {
  fill(255);
  textSize(12);
  textAlign(CENTER,CENTER);
  text(mouseX+"  "+mouseY,width/2,40);
}
