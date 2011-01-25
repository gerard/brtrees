input mplib/macros;
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex

u:=1cm;
beginfig(1)
    pair A, B, C, D;
    A:=(3u,2u); B:=(u,u); C:=(5u,u); D:=(0,0);
    draw A--B;
    draw A--C;
    draw B--D;
    dotlabel.top(btex $a$ etex, A);
    dotlabel.ulft(btex $b$ etex, B);
    dotlabel.urt(btex $c$ etex, C);
    dotlabel.bot(btex $d$ etex, D);
endfig;

beginfig(5)
    pair A, B, C, D;
    A:=(3u,2u); B:=(5u,u); C:=(1u,u); D:=(6u,0);
    draw A--B;
    draw A--C;
    draw B--D;
    dotlabel.top(btex $a$ etex, A);
    dotlabel.ulft(btex $b$ etex, B);
    dotlabel.urt(btex $c$ etex, C);
    dotlabel.bot(btex $d$ etex, D);
endfig;

beginfig(6)
    circleit.a(btex 3 etex);
    circleit.b(btex 2 etex);
    circleit.c(btex 4 etex);
    a.c = (3u,2u);
    b.c = (u,u);
    c.c = (5u,u);
    drawboxed(a,b,c);

    draw a.c .. b.c cutbefore bpath.a cutafter bpath.b;
    draw a.c .. c.c cutbefore bpath.a cutafter bpath.c;
endfig;

beginfig(2)
    circleit.a(btex 3 etex);
    circleit.b(btex 2 etex);
    circleit.c(btex 6 etex);
    circleit.d(btex 9 etex);
    a.c = (3u,2u);
    b.c = (u,u);
    c.c = (5u,u);
    d.d = (0.0);
    drawboxed(a,b,c,d);

    draw a.c .. b.c cutbefore bpath.a cutafter bpath.b;
    draw a.c .. c.c cutbefore bpath.a cutafter bpath.c;
    draw b.c .. d.c cutbefore bpath.b cutafter bpath.d;
endfig;

beginfig(3)
    pair DL, DR, BR, CL, CR;
    circleit.a(btex 3 etex);
    circleit.b(btex 2 etex);
    circleit.c(btex 6 etex);
    circleit.d(btex 9 etex);
    a.c = (3u,2u);
    b.c = (u,u);
    c.c = (5u,u);
    d.c = (0,0);
    DL := (-0.5u, -u);
    DR := (0.5u, -u);
    BR := (2u, 0);
    CL := (4u, 0);
    CR := (6u, 0);
    drawboxed(a,b,c,d);

    draw a.c .. b.c cutbefore bpath.a cutafter bpath.b;
    draw a.c .. c.c cutbefore bpath.a cutafter bpath.c;
    draw b.c .. d.c cutbefore bpath.b cutafter bpath.d;
    draw d.c .. DL cutbefore bpath.d;
    draw d.c .. DR cutbefore bpath.d;
    draw b.c .. BR cutbefore bpath.b;
    draw c.c .. CL cutbefore bpath.c;
    draw c.c .. CR cutbefore bpath.c;
    draw DL withpen pencircle scaled 4bp;
    draw DR withpen pencircle scaled 4bp;
    draw BR withpen pencircle scaled 4bp;
    draw CL withpen pencircle scaled 4bp;
    draw CR withpen pencircle scaled 4bp;
endfig;

beginfig(4)
    circleit.a(btex 1 etex);
    a.c = (0,0);
    drawboxed(a);
endfig;
end
