real sh = .3;

pair t(real x, real y) {
  return (x-y/2., y*sqrt(3.)/2.);
}

void drawSpin(pair p, int s) {
  if (s>0)
    draw((p-(0, sh))--(p+(0, sh)), arrow=EndArrow);
  else
    draw((p+(0, sh))--(p-(0, sh)), arrow=EndArrow);
}

void drawAKLT(pair p) {
  draw(p--(p+(1.5, .6)), red+6);
}

size(4cm, 4cm);

for (int i=0; i<3; ++i) {
  draw(t(0, i)--t(2, i));
  draw(t(i, 0)--t(i, 2));
}
draw(t(0, 0)--t(2, 2));
draw(t(1, 0)--t(2, 1));
draw(t(0, 1)--t(1, 2));

drawSpin(t(0, 0), 1); drawSpin(t(1, 0), -1); drawSpin(t(2, 0), 1);
drawSpin(t(0, 1), -1); drawSpin(t(1, 1), -1); drawSpin(t(2, 1), 1);
drawSpin(t(0, 2), 1); drawSpin(t(1, 2), -1); drawSpin(t(2, 2), 1);

shipout("weak3d_2d");

//currentpicture = new picture;
size(4cm, 4cm);

for (int i=0; i<3; ++i) {
  draw(t(0, i)--t(2, i));
  draw(t(i, 0)--t(i, 2));
}
draw(t(0, 0)--t(2, 2));
draw(t(1, 0)--t(2, 1));
draw(t(0, 1)--t(1, 2));

for (int i=0; i<3; ++i)
  for (int j=0; j<3; ++j)
    dot(t(i, j), red+6);

shipout("weak3d_2ddots");

currentpicture = new picture;
size(4cm, 0);

real l = 1;
real dx = .1;
int naklt = 5;

for (int i=1; i<naklt; ++i)
  draw(((i-1)*l+dx, 0)--(i*l-dx, 0), red+6);

for (int i=0; i<naklt; ++i) {
  drawSpin((i*l-dx, 0), 1);
  drawSpin((i*l+dx, 0), -1);
  draw(circle((i*l, 0), .2));
}

shipout("weak3d_aklt");

currentpicture = new picture;
size(4cm, 0);

real l = 1;
real dx = .1;
int naklt = 5;

draw((0, 0)--((naklt-1)*l, 0), red+6);

drawSpin((-dx, 0), 1);
drawSpin(((naklt-1)*l+dx, 0), -1);

shipout("weak3d_aklt2");

currentpicture = new picture;
size(8cm, 4cm);

for (int i=0; i<3; ++i)
  for (int j=0; j<3; ++j)
    drawAKLT(t(i, j));

for (int i=0; i<3; ++i) {
  draw(t(0, i)--t(2, i), white+2);
  draw(t(i, 0)--t(i, 2), white+2);
}
draw(t(0, 0)--t(2, 2), white+2);
draw(t(1, 0)--t(2, 1), white+2);
draw(t(0, 1)--t(1, 2), white+2);

for (int i=0; i<3; ++i) {
  draw(t(0, i)--t(2, i), dashed);
  draw(t(i, 0)--t(i, 2), dashed);
}
draw(t(0, 0)--t(2, 2), dashed);
draw(t(1, 0)--t(2, 1), dashed);
draw(t(0, 1)--t(1, 2), dashed);

drawSpin(t(0, 0), 1); drawSpin(t(1, 0), -1); drawSpin(t(2, 0), 1);
drawSpin(t(0, 1), -1); drawSpin(t(1, 1), -1); drawSpin(t(2, 1), 1);
drawSpin(t(0, 2), 1); drawSpin(t(1, 2), -1); drawSpin(t(2, 2), 1);

shipout("weak3d_3d");
