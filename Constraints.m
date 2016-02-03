function [h] = Constraints(q)
a=[100 250]*10^-3;
b=[0 450]*10^-3;
L=[0 530 0 100 100]*10^-3;
h = [-L(4)*cos(q(4))-a(1)+q(1)+q(3)*cos(q(2));
     -L(4)*sin(q(4))-a(2)+q(3)*sin(q(2));
     -L(5)*cos(q(5))+q(1)+L(2)*cos(q(2));
     -L(5)*sin(q(5))-b(2)+L(2)*sin(q(2))];
end

