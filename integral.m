function [a] = integral(n)
fpod1 = @(z)(1/2-z).*sin(n*pi*z/2);
fpod2 = @(z)(z-1/2).*sin(n*pi*z/2);
a=8*(quad(fpod1,0.25,0.5)+quad(fpod2,0.5,0.75));
end

