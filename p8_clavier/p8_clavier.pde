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
    PImage image = loadImage("valencia.jpg");
    for (int i = 0; i < nombreRectangles; i++) {
        int x = int(random(image.width));
        int y = int(random(image.height));
        color c = image.get(x, y);
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

void keyPressed() {
    if (key == 'r') {
        seed = int(random(0, 100)); // L'appui sur la touche r sélectionne une nouvelle valeur de la graine
    }
}