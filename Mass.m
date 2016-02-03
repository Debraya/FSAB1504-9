function [M] = Mass(q)
m=[16 4.5 1.5 1 2];
I=[0.014 0.11 0.001 10 0.0015];
L=[0 530 0 100 100]*10^-3;
M=[m(1)+m(2)+m(3) -L(2)*m(2)*sin(q(2))-m(3)*q(3)*sin(q(2)) m(3)*cos(q(2)) 0 0;
   -L(2)*m(2)*sin(q(2))-m(3)*q(3)*sin(q(2)) (L(2)^2)/4*m(2)+I(2)+m(3)*q(3)^2+I(3) 0 0 0;
   m(3)*cos(q(2)) 0 m(3) 0 0;
   0 0 0 (L(4)^2)/4*m(4)+I(4) 0;
   0 0 0 0 (L(5))^2/4*m(5)+I(5)];

end

