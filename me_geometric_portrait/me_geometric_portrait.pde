import processing.pdf.*;
PImage img;

void setup() {
    size(572, 858);
    img = loadImage("my_portrait_treated.jpg");
    background(255);
    frameRate(60);
    beginRecord(PDF, "GD5_2011340050takanoraika.pdf");
}


void draw() {
    int pre_x = 0;
    for (int x = 1; x < width; x += 10) {
        for (int y = 1; y < height; y += 5) {
            color c;
            float r;
            // 黄金比率長方形
            if ((x >= 126 && x <= 461) && (y >= 89 && y <= 649))
            {
                //被写体
                noStroke();
                r = x == 461 ? 8 : random(4,8);
                c = img.get(x - 5, y);
                fill(c);
                rect(x - 5, y, r, 8);
                r = x == 461 ? 8 : random(4,8);
                c = img.get(x, y);
                fill(c);
                rect(x, y, r, 8);
            }
            else {
                //背景
                r = random( -2500, 80);
                y += 5;
                if (r > 50)
                {
                    c = img.get(x, y);
                    if (random(0, 100) > 25)
                    {
                        noStroke();
                        fill(c, random(30, 80));
                    }
                    else
                    {
                        stroke(c, random(30, 80));
                        noFill();
                    }
                    
                    ellipse(x + random( -5, 5), y + random( -5, 5), r, r);
                }
            }
        }
    }
    rectMode(CENTER);
    fill(64,64,64);
    rect(295, 700, 230, 60);
    PFont font;
    font = createFont("Arial", 18);
    textFont(font);
    textAlign(CENTER, CENTER);
    fill(255);
    text("Takano Raika", 295, 700);
    endRecord();
    noLoop();
}