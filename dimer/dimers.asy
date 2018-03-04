real sh = .3;

pair t(real x, real y) {
  return (x+y/2., y*sqrt(3.)/2.);
}

void drawLattice(int lx, int ly) {
  for (int i=0; i<ly; ++i)
    draw( t(i==0 ? 0 : -1, i) -- t(i==ly-1 ? lx-2 : lx-1, i) );
  for (int i=-1; i<lx; ++i)
    draw( t(i, i==-1 ? 1 : 0) -- t(i, i==lx-1 ? ly-2 : ly-1) );
  for (int i=0; i<lx+ly-1; ++i) {
    pair p1 = i < lx-1 ? t(i, 0) : t(lx-1, i-lx+1);
    pair p2 = i < ly-1 ? t(-1, i+1) : t(i-ly+1, ly-1);
    draw(p1--p2);
  }
}

void drawDimer(pair p1, pair p2) {
  draw(p1--p2, p=blue+6);
}

void drawDimerSpins(pair p1, pair p2) {
  drawDimer(p1, p2);
  draw((p1-(0, sh))--(p1+(0, sh)), arrow=EndArrow);
  draw((p2+(0, sh))--(p2-(0, sh)), arrow=EndArrow);
}

void drawDimerUP(pair p1, pair p2) {
  drawDimer(p1, p2);
  draw((p1-(0, sh))--(p1+(0, sh)), arrow=EndArrow);
  draw((p2-(0, sh))--(p2+(0, sh)), arrow=EndArrow);
}

void drawUP(pair p0) {
  dot(p0, blue+9);
  draw((p0-(0, sh))--(p0+(0, sh)), arrow=EndArrow);
}

void drawDOWN(pair p0) {
  dot(p0, blue+9);
  draw((p0+(0, sh))--(p0-(0, sh)), arrow=EndArrow);
}

size(8cm);

drawDimerSpins(t(0, 0), t(1, 0));
drawDimerSpins(t(-1, 2), t(-1, 1));
drawDimerSpins(t(0, 1), t(0, 2));
drawDimerSpins(t(-1, 3), t(0, 3));
drawDimerSpins(t(1, 3), t(2, 3));
drawDimerSpins(t(2, 1), t(1, 1));
drawDimerSpins(t(1, 2), t(2, 2));
drawDimerSpins(t(2, 0), t(3, 0));
drawDimerSpins(t(4, 0), t(4, 1));
drawDimerSpins(t(5, 1), t(5, 0));
drawDimerSpins(t(3, 2), t(3, 1));
drawDimerSpins(t(3, 3), t(4, 2));
drawDimerSpins(t(5, 2), t(4, 3));

drawLattice(6, 4);
shipout("dimer_spin");

currentpicture = new picture;
size(8cm);

draw((0, -sh)--(0, 0), p=white);
draw(t(0, 3)--(t(0, 3)+(0, sh)), p=white);
drawDimer(t(0, 0), t(1, 0));
drawDimer(t(-1, 2), t(-1, 1));
drawDimer(t(0, 1), t(0, 2));
drawDimer(t(-1, 3), t(0, 3));
drawDimer(t(1, 3), t(2, 3));
drawDimer(t(2, 1), t(1, 1));
drawDimer(t(1, 2), t(2, 2));
drawDimer(t(2, 0), t(3, 0));
drawDimer(t(4, 0), t(4, 1));
drawDimer(t(5, 1), t(5, 0));
drawDimer(t(3, 2), t(3, 1));
drawDimer(t(3, 3), t(4, 2));
drawDimer(t(5, 2), t(4, 3));

drawLattice(6, 4);
shipout("dimer0");

currentpicture = new picture;
size(8cm);

draw((0, -sh)--(0, 0), p=white);
draw(t(0, 3)--(t(0, 3)+(0, sh)), p=white);
drawDimer(t(0, 0), t(1, 0));
drawDimer(t(-1, 2), t(-1, 1));
drawDimer(t(0, 1), t(0, 2));
drawDimer(t(-1, 3), t(0, 3));
drawDimer(t(1, 3), t(2, 3));
drawDimerUP(t(2, 1), t(1, 1));
drawDimer(t(1, 2), t(2, 2));
drawDimer(t(2, 0), t(3, 0));
drawDimer(t(4, 0), t(4, 1));
drawDimer(t(5, 1), t(5, 0));
drawDimer(t(3, 2), t(3, 1));
drawDimer(t(3, 3), t(4, 2));
drawDimer(t(5, 2), t(4, 3));

drawLattice(6, 4);
shipout("dimer1");

currentpicture = new picture;
size(8cm);

draw((0, -sh)--(0, 0), p=white);
draw(t(0, 3)--(t(0, 3)+(0, sh)), p=white);
drawDimer(t(0, 0), t(1, 0));
drawDimer(t(-1, 2), t(-1, 1));
drawDimer(t(0, 1), t(0, 2));
drawDimer(t(-1, 3), t(0, 3));
drawDimer(t(1, 3), t(2, 3));
drawDimer(t(2, 0), t(3, 0));
drawUP(t(1, 1));
drawDimer(t(1, 2), t(2, 1));
drawUP(t(2, 2));
drawDimer(t(4, 0), t(4, 1));
drawDimer(t(5, 1), t(5, 0));
drawDimer(t(3, 2), t(3, 1));
drawDimer(t(3, 3), t(4, 2));
drawDimer(t(5, 2), t(4, 3));

drawLattice(6, 4);
shipout("dimer2");

currentpicture = new picture;
size(8cm);

draw((0, -sh)--(0, 0), p=white);
draw(t(0, 3)--(t(0, 3)+(0, sh)), p=white);
drawDimer(t(0, 0), t(1, 0));
drawDimer(t(-1, 2), t(-1, 1));
drawDimer(t(0, 1), t(0, 2));
drawDimer(t(-1, 3), t(0, 3));
drawDimer(t(1, 3), t(2, 3));
drawDimer(t(2, 0), t(3, 0));
drawUP(t(1, 1));
drawDimer(t(1, 2), t(2, 1));
drawDimer(t(2, 2), t(3, 1));
drawUP(t(3, 2));
drawDimer(t(4, 0), t(4, 1));
drawDimer(t(5, 1), t(5, 0));
drawDimer(t(3, 3), t(4, 2));
drawDimer(t(5, 2), t(4, 3));

drawLattice(6, 4);
shipout("dimer3");

currentpicture = new picture;
size(8cm);

draw((0, -sh)--(0, 0), p=white);
draw(t(0, 3)--(t(0, 3)+(0, sh)), p=white);
drawDimer(t(0, 0), t(1, 0));
drawDimer(t(-1, 2), t(-1, 1));
drawDimer(t(0, 1), t(0, 2));
drawDimer(t(-1, 3), t(0, 3));
drawDimer(t(1, 3), t(2, 3));
drawDimer(t(2, 0), t(3, 0));
drawUP(t(1, 1));
drawDimer(t(1, 2), t(2, 1));
drawDimer(t(2, 2), t(3, 1));
drawDimer(t(3, 3), t(3, 2));
drawUP(t(4, 2));
drawDimer(t(4, 0), t(4, 1));
drawDimer(t(5, 1), t(5, 0));
drawDimer(t(5, 2), t(4, 3));

drawLattice(6, 4);
shipout("dimer4");

currentpicture = new picture;
size(8cm);

draw((0, -sh)--(0, 0), p=white);
draw(t(0, 3)--(t(0, 3)+(0, sh)), p=white);
drawDimer(t(0, 0), t(1, 0));
drawDimer(t(-1, 2), t(-1, 1));
drawDimer(t(0, 1), t(0, 2));
drawDimer(t(-1, 3), t(0, 3));
drawDimer(t(1, 3), t(2, 3));
drawDimer(t(2, 0), t(3, 0));
drawUP(t(1, 1));
label("$e$", t(1, 1), 2W+S);
drawDimer(t(1, 2), t(2, 1));
drawDimer(t(2, 2), t(3, 1));
drawDimer(t(3, 3), t(3, 2));
drawDimer(t(5, 2), t(4, 2));
drawUP(t(4, 3));
label("$e$", t(4, 3), 2W+S);
drawDimer(t(4, 0), t(4, 1));
drawDimer(t(5, 1), t(5, 0));

drawLattice(6, 4);
shipout("dimer5");

currentpicture = new picture;
size(8cm);

draw((0, -sh)--(0, 0), p=white);
draw(t(0, 3)--(t(0, 3)+(0, sh)), p=white);
drawDimer(t(0, 0), t(1, 0));
drawDimer(t(-1, 2), t(-1, 1));
drawDimer(t(0, 1), t(0, 2));
drawDimer(t(-1, 3), t(0, 3));
drawDimer(t(1, 3), t(2, 3));
drawDimer(t(2, 1), t(1, 1));
drawDimer(t(1, 2), t(2, 2));
drawDimer(t(2, 0), t(3, 0));
drawDimer(t(4, 0), t(4, 1));
drawDimer(t(5, 1), t(5, 0));
drawDimer(t(3, 2), t(3, 1));
drawDimer(t(3, 3), t(4, 2));
drawDimer(t(5, 2), t(4, 3));

draw(shift(t(2/3., 2/3.))*scale(.15)*cross(4));
label("$m$", t(2/3., 2/3.), W);
draw(t(2/3., 2/3.)--t(1+1/3., 1/3.)--t(1+2/3., 2/3.)
     --t(1+1/3., 1+1/3.)--t(1+2/3., 1+2/3.)
     --t(1+1/3., 2+1/3.)--t(1+2/3., 2+2/3.)
     --t(2+1/3., 2+1/3.)--t(2+2/3., 2+2/3.)
     --t(3+1/3., 2+1/3.), dashed);
draw(shift(t(3+1/3., 2+1/3.))*scale(.15)*cross(4));
label("$m$", t(3+1/3., 2+1/3.), S);
drawLattice(6, 4);
shipout("dimerv");

currentpicture = new picture;
size(8cm);

draw((0, -sh)--(0, 0), p=white);
draw(t(0, 3)--(t(0, 3)+(0, sh)), p=white);
drawDimer(t(0, 0), t(1, 0));
drawDimer(t(-1, 2), t(-1, 1));
drawDimer(t(0, 1), t(0, 2));
drawDimer(t(-1, 3), t(0, 3));
drawDimer(t(1, 3), t(2, 3));
drawDimer(t(2, 1), t(1, 1));
drawDimer(t(1, 2), t(2, 2));
drawDimer(t(2, 0), t(3, 0));
drawDimer(t(4, 0), t(4, 1));
drawDimer(t(5, 1), t(5, 0));
drawDimer(t(3, 2), t(3, 1));
drawDimer(t(3, 3), t(4, 2));
drawDimer(t(5, 2), t(4, 3));

draw(t(2/3., 2/3.)--t(1+1/3., 1/3.)--t(1+2/3., 2/3.)
     --t(1+1/3., 1+1/3.)--t(2/3., 1+2/3.)
     --t(1/3., 1+1/3.)--cycle, dashed);
label("$m$", t(2/3., 2/3.), SW);
drawLattice(6, 4);
shipout("dimervl");

currentpicture = new picture;
size(8cm);

draw((0, -sh)--(0, 0), p=white);
draw(t(0, 3)--(t(0, 3)+(0, sh)), p=white);
drawDimer(t(0, 0), t(1, 0));
drawDimer(t(-1, 2), t(-1, 1));
drawDimer(t(0, 1), t(0, 2));
drawDimer(t(-1, 3), t(0, 3));
drawDimer(t(1, 3), t(2, 3));
drawDimer(t(2, 1), t(1, 1));
drawDimer(t(1, 2), t(2, 2));
drawDimer(t(2, 0), t(3, 0));
drawDimer(t(4, 0), t(4, 1));
drawDimer(t(5, 1), t(5, 0));
drawDimer(t(3, 2), t(3, 1));
drawDimer(t(3, 3), t(4, 2));
drawDimer(t(5, 2), t(4, 3));

draw(t(2/3., 2/3.)--t(1+1/3., 1/3.)--t(1+2/3., 2/3.)
     --t(2+1/3., 1/3.)--t(2+2/3., 2/3.)
     --t(3+1/3., 1/3.)--t(3+2/3., 2/3.)
     --t(3+1/3., 1+1/3.)--t(2+2/3., 1+2/3.)
     --t(2+1/3., 2+1/3.)--t(1+2/3., 2+2/3.)
     --t(1+1/3., 2+1/3.)--t(2/3., 2+2/3.)--t(1/3., 2+1/3.)
     --t(2/3., 1+2/3.)--t(1/3., 1+1/3.)--cycle, dashed);
drawLattice(6, 4);
shipout("dimerloop");

currentpicture = new picture;
size(8cm);

draw((0, -sh)--(0, 0), p=white);
draw(t(0, 3)--(t(0, 3)+(0, sh)), p=white);
drawDimer(t(0, 0), t(1, 0));
drawDimer(t(-1, 2), t(-1, 1));
drawDimer(t(0, 1), t(0, 2));
drawDimer(t(-1, 3), t(0, 3));
drawDimer(t(1, 3), t(2, 3));
drawDimer(t(2, 0), t(3, 0));
drawUP(t(1, 1));
label("$e$", t(1, 1), 2W+S);
drawDimer(t(1, 2), t(2, 1));
drawDimer(t(2, 2), t(3, 1));
drawDimer(t(3, 3), t(3, 2));
drawDimer(t(5, 2), t(4, 2));
drawUP(t(4, 3));
label("$e$", t(4, 3), 2W+S);
drawDimer(t(4, 0), t(4, 1));
drawDimer(t(5, 1), t(5, 0));

draw(t(2/3., 2/3.)--t(1+1/3., 1/3.)--t(1+2/3., 2/3.)
     --t(1+1/3., 1+1/3.)--t(2/3., 1+2/3.)
     --t(1/3., 1+1/3.)--cycle, dashed);
label("$m$", t(2/3., 2/3.), SW);
drawLattice(6, 4);
shipout("dimervl2");

currentpicture = new picture;
size(8cm);

draw((0, -sh)--(0, 0), p=white);
draw(t(0, 3)--(t(0, 3)+(0, sh)), p=white);
drawDimer(t(0, 0), t(1, 0));
drawDimer(t(-1, 2), t(-1, 1));
drawDimer(t(0, 1), t(0, 2));
drawDimer(t(-1, 3), t(0, 3));
drawDimer(t(1, 3), t(2, 3));
drawDimer(t(2, 1), t(1, 1));
drawDimer(t(1, 2), t(2, 2));
drawDimer(t(2, 0), t(3, 0));
drawDimer(t(4, 0), t(4, 1));
drawDimer(t(5, 1), t(5, 0));
drawDimer(t(3, 2), t(3, 1));
drawDimer(t(3, 3), t(4, 2));
drawDimer(t(5, 2), t(4, 3));

draw(t(2/3., 2/3.)--t(1+2/3., 2/3.), dashed, arrow=EndArrow);
label("$T_1$", t(1+2/3., 2/3.), S);
draw(t(1+2/3., 2/3.)--t(1+2/3., 1+2/3.), dashed);
draw(t(2/3., 2/3.)--t(2/3., 1+2/3.), dashed, arrow=EndArrow);
label("$T_2$", t(2/3., 1+2/3.), N);
draw(t(2/3., 1+2/3.)--t(1+2/3., 1+2/3.), dashed);

label("$m$", t(2/3., 2/3.), SW);
drawLattice(6, 4);
shipout("dimer_sf");

currentpicture = new picture;
size(8cm);

draw((0, -sh)--(0, 0), p=white);
draw(t(0, 3)--(t(0, 3)+(0, sh)), p=white);
drawDimer(t(0, 0), t(1, 0));
drawDimer(t(-1, 2), t(-1, 1));
drawDimer(t(0, 1), t(0, 2));
drawDimer(t(-1, 3), t(0, 3));
drawDimer(t(1, 3), t(2, 3));
drawDimer(t(2, 0), t(3, 0));
drawUP(t(1, 1));
label("$e$", t(1, 1), 2W+S);
drawDimer(t(1, 2), t(2, 1));
drawDimer(t(2, 2), t(3, 1));
drawDimer(t(3, 3), t(3, 2));
drawDimer(t(5, 2), t(4, 2));
drawUP(t(4, 3));
label("$e$", t(4, 3), 2W+S);
drawDimer(t(4, 0), t(4, 1));
drawDimer(t(5, 1), t(5, 0));

draw(shift(t(2/3., 2/3.))*scale(.15)*cross(4));
label("$m$", t(2/3., 2/3.), W);
draw(t(2/3., 2/3.)--t(1+1/3., 1/3.)--t(1+2/3., 2/3.)
     --t(1+1/3., 1+1/3.)--t(1+2/3., 1+2/3.)
     --t(1+1/3., 2+1/3.)--t(1+2/3., 2+2/3.)
     --t(2+1/3., 2+1/3.)--t(2+2/3., 2+2/3.)
     --t(3+1/3., 2+1/3.), dashed);
draw(shift(t(3+1/3., 2+1/3.))*scale(.15)*cross(4));
label("$m$", t(3+1/3., 2+1/3.), S);
drawLattice(6, 4);
shipout("dimer_ev");

currentpicture = new picture;
size(8cm);

drawLattice(6, 2);

shipout("dimer_small_spins");

currentpicture = new picture;
size(8cm);

draw((0, -sh)--(0, 0), p=white);
draw(t(0, 3)--(t(0, 3)+(0, sh)), p=white);
drawDimer(t(0, 0), t(1, 0));
drawDimer(t(-1, 2), t(-1, 1));
drawDimer(t(0, 1), t(0, 2));
drawDimer(t(-1, 3), t(0, 3));
drawDimer(t(1, 3), t(2, 3));
drawDimer(t(2, 1), t(1, 1));
drawDimer(t(1, 2), t(2, 2));
drawDimer(t(2, 0), t(3, 0));
drawDimer(t(4, 0), t(4, 1));
drawDimer(t(5, 1), t(5, 0));
drawDimer(t(3, 2), t(3, 1));
drawDimer(t(3, 3), t(4, 2));
drawDimer(t(5, 2), t(4, 3));

draw(t(1.5, -.2)--t(1.5, 3.2), dashed);
drawLattice(6, 4);
shipout("dimer_cut");

currentpicture = new picture;
size(8cm);

draw((0, -sh)--(0, 0), p=white);
draw(t(0, 3)--(t(0, 3)+(0, sh)), p=white);
drawDimer(t(0, 0), t(1, 0));
drawDimer(t(-1, 2), t(-1, 1));
drawDimer(t(0, 1), t(0, 2));
drawDimer(t(-1, 3), t(0, 3));
drawDimer(t(1, 3), t(2, 3));
drawDimer(t(1, 2), t(1, 1));
drawDimer(t(2, 1), t(2, 2));
drawDimer(t(2, 0), t(3, 0));
drawDimer(t(4, 0), t(4, 1));
drawDimer(t(5, 1), t(5, 0));
drawDimer(t(3, 2), t(3, 1));
drawDimer(t(3, 3), t(4, 2));
drawDimer(t(5, 2), t(4, 3));

draw(t(1.5, -.2)--t(1.5, 3.2), dashed);
drawLattice(6, 4);
shipout("dimer_cut2");

currentpicture = new picture;
size(8cm);

draw((0, -sh)--(0, 0), p=white);
draw(t(0, 3)--(t(0, 3)+(0, sh)), p=white);
drawDimer(t(0, 0), t(1, 0));
drawDimer(t(-1, 2), t(-1, 1));
drawDimer(t(0, 1), t(0, 2));
drawDimer(t(-1, 3), t(0, 3));
drawDimer(t(1, 3), t(2, 3));
drawDimer(t(2, 0), t(1, 1));
drawDimer(t(1, 2), t(2, 2));
drawDimer(t(2, 1), t(3, 0));
drawDimer(t(4, 0), t(4, 1));
drawDimer(t(5, 1), t(5, 0));
drawDimer(t(3, 2), t(3, 1));
drawDimer(t(3, 3), t(4, 2));
drawDimer(t(5, 2), t(4, 3));

draw(t(1.5, -.2)--t(1.5, 3.2), dashed);
drawLattice(6, 4);
shipout("dimer_cut3");
