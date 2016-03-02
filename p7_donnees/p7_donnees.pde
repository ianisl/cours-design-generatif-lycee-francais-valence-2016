color couleurFond = color(163, 167, 174);
int debutX = 100;
int debutY = 100;
int largeur = 600;
int hauteurMax = 600;
int nombreRectangles = 10;

int seed;
color[] couleursRectangles;

void setup() {
    size(800, 800);
    seed = int(random(0, 100));
    couleursRectangles = new color[nombreRectangles];
    PImage image = loadImage("valencia.jpg"); // Chargement d'une image dans le dossier 'data'
    for (int i = 0; i < nombreRectangles; i++) {
        int x = int(random(image.width)); // Choix d'une position aléatoire dans l'image
        int y = int(random(image.height));
        color c = image.get(x, y); // Récupération de la couleur de l'image à la positon x, y
        couleursRectangles[i] = c;
    }
}

void draw() {
    randomSeed(seed);
    background(couleurFond);
    noStroke();
    int l = largeur / nombreRectangles;
    for (int i = 0; i < nombreRectangles; i++) {
        fill(couleursRectangles[i]);
        int x = debutX + i * l;
        rect(x, debutY, l, random(0, hauteurMax));
    }
}