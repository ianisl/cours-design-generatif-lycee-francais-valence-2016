color couleurRectangle = color(237, 0, 62);
int debutX = 100;
int debutY = 100;
int largeur = 600;
int hauteurMax = 150;

void setup() {
    size(800, 800);
}

void draw() {
    noStroke();
    fill(couleurRectangle);
    rect(debutX, debutY, largeur, random(0, hauteurMax)); // Dessin d'un rectangle avec une hauteur aléatoire
}