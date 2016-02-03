function [Jac] = Jacobian(q)
%q est un vecteur dont la 4eme entree est la coordonnee generalisee
%independante
L=[0 530 0 100 100]*10^-3;
J=[1 -q(3)*sin(q(2)) cos(q(2)) L(4)*sin(q(4))  0;
   0 q(3)*cos(q(2))  sin(q(2)) -L(4)*cos(q(4)) 0:
   1 -L(2)*sin(q(2)) 0         0               L(5)*sin(q(5));
   0 L(2)*cos(q(2))  0         0               -L(5)*cos(q(5))];
end