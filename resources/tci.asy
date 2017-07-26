size(5cm);
pair A = (0, 0), B = (1, 0), C = (1, 1), D = (0, 1);
pair z = (.4, .3);
pair A1 = A+z, B1 = B+z, C1 = C+z, D1 = D+z;

pair E = .5(A+B), F = .5(C+D);
pair E1 = E+z, F1 = F+z;

//fill(A--B--C--D--cycle, lightgrey);
fill(E--F--F1--E1--cycle, grey);

draw(A--B--C--D--cycle);
draw(D--D1--C1--B1--B);
draw(A--A1--B1, dashed); draw(C--C1); draw(A1--D1, dashed);

draw(E--F--F1); draw(F1--E1--E, dashed);

void drawDiracCone(pair r0) {
  real r = .15;
  draw((r0 + (r, .5r))--(r0 - (r, .5r)), p=defaultpen+1);
  draw((r0 + (-r, .5r))--(r0 - (-r, .5r)), defaultpen+1);
  //draw(shift(r0+(0, .5r))*yscale(.3)*circle((0, 0), r));
}

drawDiracCone((.5, .2));
drawDiracCone((.5, .4));
drawDiracCone((.5, .6));
drawDiracCone((.5, .8));
