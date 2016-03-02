color couleurRectangle = color(237, 0, 62);
color couleurFond = color(163, 167, 174);
int debutX = 100;
int debutY = 100;
int largeur = 600;
int hauteurMax = 150;

void setup() {
    size(800, 800);
}

void draw() {
    background(couleurFond);
    noStroke();
    fill(couleurRectangle);
    rect(debutX, debutY, largeur, random(0, hauteurMax));
}