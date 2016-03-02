color couleurRectangle = color(237, 0, 62);
color couleurFond = color(163, 167, 174);
int debutX = 100;
int debutY = 100;
int largeur = 600;
int hauteurMax = 600;
int nombreRectangles = 10;

int graine; // On déclare une variable sans l'initialiser

void setup() {
    size(800, 800);
    graine = int(random(0, 100)); // On initialise aléatoirement la variable graine
}

void draw() {
    randomSeed(graine); // On 'fixe le hasard' à l'aide de la graine
    background(couleurFond);
    noStroke();
    fill(couleurRectangle);
    int l = largeur / nombreRectangles;
    for (int i = 0; i < nombreRectangles; i++) {
        int x = debutX + i * l;
        rect(x, debutY, l, random(0, hauteurMax));
    }
}