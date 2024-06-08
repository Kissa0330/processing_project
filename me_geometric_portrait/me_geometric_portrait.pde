import processing.pdf.*;
PImage img;

void setup() {
    size(572, 858);
    img = loadImage("my_portrait_treated.jpg");
    background(255);
    frameRate(60);
    // beginRecord(PDF, "test.pdf");
}


void draw() {
    int x;
    int y;
    for (x = 1; x < width; x += 10) {
        for (y = 1; y < height; y += 10) {
            color c = img.get(x, y);
            float r = 10;
            stroke(c,255);
            fill(c);
            ellipse(x, y, r, r);
            if (!(x >= 120 && x <= 470) || (y < 90))
            {
                y += 10;
            }
        }
        if (!(x >= 120 && x <= 470) && (y < 90))
        {
            x += 10;
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