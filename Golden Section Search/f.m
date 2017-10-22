function [y, s] = f(z)
syms('x')
%Função ax^8 + bx^7 + cx^6 + d^x5 + ex^4 +f
%Escolhendo os valores das constantes
y = -10*z.^8 - 2*z.^7 + 5*z.^6 -4*z.^5 +8*z.^4 + 6;
s = -10*x^8 - 2*x^7 + 5*x^6 -4*x^5 +8*x^4 + 6;

end