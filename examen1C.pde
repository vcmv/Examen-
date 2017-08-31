import processing.pdf.*;
PImage img;
int sizex=425;
int sizey=755;
float x;
float y;
float o;
float a;
float b;




void setup() {
  size (425, 755);//nombre
  beginRecord(PDF, "examen1c.pdf");

  img = loadImage("frost.jpg");
  background(255);

  tint(255, 80);
  //image (img, 0, 0, sizex, sizey);

  //for ( int i=0; i<80; i ++) {
  //  image(img, i*10, i, sizex, sizey); //poner imagen en la posoción x,y
  //}

  x=0;
  y=0;
}

void draw() {

  frameRate(30);
  //float newx = constrain( x + random(-60, 60), 0, width);//movimiento aleatorio
  //float newy = constrain( y + random(-60, 60), 0, height);

  int lar = int(random(img.width));//para el color ojos
  int an= int(random(img.height));
  int loc = an+lar*img.width;

  loadPixels();
  float r = red(img.pixels[loc]);
  float g = green(img.pixels[loc]);
  float b = blue(img.pixels[loc]);




  translate(mouseX, mouseY);


  if (mousePressed==true) {//movimiento pupilas
    o=o+1;//var ojos
    if ( o > 12 )
    {
      o=o*-1;
    }

    //ojo derecho

    fill(r, g, b, 210);
    stroke(r, g, b, 210);

    strokeWeight(1);
    strokeCap(ROUND);

    beginShape();//OJO IZQ
    vertex(39, 20);
    vertex(46, 17);
    vertex(52, 18);
    vertex(56, 22);
    vertex(59, 29);
    vertex(50, 31);
    vertex(45, 30);
    vertex(41, 26);
    endShape();

    fill(50);
    noStroke();
    ellipse(49, 24, 1+o, 12);//pupila ojo iz

    //ojo derecho
    fill(r, g, b, 210);
    stroke(r, g, b, 210);  


    beginShape();
    vertex(80, 29);
    vertex(81, 21);
    vertex(86, 16);
    vertex(93, 15);
    vertex(101, 18);
    vertex(99, 25);
    vertex(95, 29);
    vertex(89, 30);
    endShape();

    fill(50);
    noStroke();
    ellipse(90, 22, 1+o, 12);//pupila ojo der
    //


    //nariz

    fill(137,110,134, 120);
    beginShape();
    vertex(60, 41);
    vertex(62, 38);
    vertex(74, 38);
    vertex(77, 41);
    vertex(68, 50);
    endShape();


    //bigotes
    if (mousePressed==true) {//movimiento pupilas
      a=a+1;//var ojos
      if ( a > 12 )
      {
        a=a*-1;
      }

      stroke(100,180);
      strokeWeight(2);
      line(7, 49+a, 50, 43);
      line(9, 60+a, 48, 46);
      line(17, 63+a, 50, 46);
      line(31, 76+a, 53, 50);
      line(32, 85+a, 51, 55);
      line(43, 79+a, 53, 55);

      line(82, 43, 129, 45+a);
      line(87, 45, 134, 49+a);
      line(87, 49, 131, 70+a);
      line(84, 52, 101, 83+a);
      line(82, 52, 93, 76+a);
    }
  }

  //
  //x=newx;
  //y=newy;
}



void keyPressed() {
  if (key == 't') {
    endRecord();
    exit();
  }
}