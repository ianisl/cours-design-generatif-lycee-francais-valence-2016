color couleurRectangle = color(237, 0, 62);
color couleurFond = color(163, 167, 174);
int debutX = 100;
int debutY = 100;
int largeur = 600;
int hauteurMax = 300;
int nombreRectangles = 10;

void setup() {
    size(800, 800);
}

void draw() {
    background(couleurFond);
    noStroke();
    fill(couleurRectangle);
    float l = largeur / float(nombreRectangles); // Largeur d'un rectangle
    for (int i = 0; i < nombreRectangles; i++) {
        int x = debutX + i * l; // Calcul de la position de départ pour chaque rectangle
        rect(x, debutY, l, random(0, hauteurMax)); // Chaque rectangle aura une hauteur différente
    }
}