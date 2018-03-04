settings.outformat="pdf";

//unitsize(1.5cm);
size(6cm);
int n1=3;
int n2=3;
real s=sqrt(3)/2;
real c=0.5;
real t=s/c;
real x0=-0.5; //initial point
real y0=-0.5*sqrt(3)/3;

path p=scale(1/t)*polygon(3);
for(int j=0; j<n2; ++j){
    for(int i=0; i<n1; ++i){
        real y=j*s;
        draw(shift(i-j/2, y)*p);
    }
}
draw((x0-n2*c, y0+n2*s)--(x0+n1-n2*c, y0+n2*s));
draw((x0, y0)--(x0-n2*c, y0+n2*s));

real stretch=0.5;
draw((x0, y0)--(x0+n1/2, y0), arrow=Arrow());
draw((x0, y0)--(x0-(n2/2)*c, y0+(n2/2)*s), arrow=Arrow());
draw((x0-stretch, y0)--(x0+n1+stretch, y0), dashed+red);
draw((x0-stretch*s, y0-stretch*c)--(x0+(n1+stretch)*s, y0+(n1+stretch)*c), dashed+red);

label("$O$", (x0, y0), S);
label("$T_{1}$", (x0+n1/2, y0), S);
label("$T_{2}$", (x0-(n2/2)*c, y0+(n2/2)*s), W);
label("$\mu$", (x0+n1+stretch, y0), N);
label("$\sigma$", (x0+(n1+stretch)*s, y0+(n1+stretch)*c), NW);
