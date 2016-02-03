function [ Jdqd ] = compute_Jdqd( q, qd )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
L2 = 1;
L4 = 1;
L5 = 1;

Jdqd = zeros(5,4);
Jdqd(2,1) = -qd(3)*sin(q(2)) - q(3)*cos(q(2))*qd(2);
Jdqd(2,2) = -qd(3)*cos(q(2)) - q(3)*sin(q(2))*qd(2);
Jdqd(2,3) = -L2*qd(2)*cos(q(2));
Jdqd(2,4) = -L2*qd(2)*sin(q(2));
Jdqd(3,1) = -qd(2)*sin(q(2));
Jdqd(3,2) = qd(2)*cos(q(2));
Jdqd(4,1) = L4*qd(4)*cos(q(4));
Jdqd(4,2) = L4*qd(4)*sin(q(4));
Jdqd(5,3) = L5*qd(5)*cos(q(5));
Jdqd(5,4) = L5*qd(5)*sin(q(5));

Jdqd = Jdqd*qd;
end

