function j=test1(k)
global kp ki kd
s=tf('s');
G=1/(s^2+2*s+4);
kp=k(1);
ki=k(2);
kd=k(3);
C=kp+(ki/s)+(kd*s);
T=feedback(C*G,1);
t=0:0.01:30;
[y,t]=step(T,t);
r=ones(size(t));
e=r-y;
j=trapz(t,abs(e));%yout(end);
end