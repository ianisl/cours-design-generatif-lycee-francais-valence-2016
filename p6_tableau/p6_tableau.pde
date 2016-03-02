color couleurFond = color(163, 167, 174);
int debutX = 100;
int debutY = 100;
int largeur = 600;
int hauteurMax = 600;
int nombreRectangles = 10;

int graine;
color[] couleursRectangles; // On déclare on tableau sans l'initialiser

void setup() {
    size(800, 800);
    graine = int(random(0, 100));
    couleursRectangles = new color[nombreRectangles]; // On initialise un tableau vide de nombreRectangles éléments
    for (int i = 0; i < nombreRectangles; i++) {
        int r = 237;
        int g = 0;
        int b = int(random(10, 255));
        couleursRectangles[i] = color(r, g, b); // On remplit le tableau avec des couleurs aléatoiresi
    }
}

void draw() {
    randomSeed(graine);
    background(couleurFond);
    noStroke();
    int l = largeur / nombreRectangles;
    for (int i = 0; i < nombreRectangles; i++) {
        fill(couleursRectangles[i]); // On change la couleur de remplissage pour chaque rectangle
        int x = debutX + i * l;
        rect(x, debutY, l, random(0, hauteurMax));
    }
}