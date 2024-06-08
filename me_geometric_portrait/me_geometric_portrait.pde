import processing.pdf.*;
PImage img;

void setup() {
    size(572, 858);
    img = loadImage("my_portrait_treated.jpg");
    background(255);
    noStroke();
    frameRate(60);
    // beginRecord(PDF, "test.pdf");
}


void draw() {
    int pre_x = 0;
    for (int x = 1; x < width; x += 20) {
        for (int y = 1; y < height; y += 10) {
            color c;
            float r = 10;
            if ((x >= 120 && x <= 470) && (y >= 90))
            {
                c = img.get(x - 10, y);
                fill(c);
                ellipse(x - 10, y, r, r);
            }
            else {
                y += 10;
            }
            c = img.get(x, y);
            fill(c);
            ellipse(x, y, r, r);
        }
    }
    noLoop();
}

void keyPressed() 
    {
    if (keyCode == ' ') {
        // textSize(18);
        // textAlign(CENTER);
        // fill(0,0,0);
        // text("TAKANO RAIKA", width / 2, 400);
        // endRecord();
    }
}