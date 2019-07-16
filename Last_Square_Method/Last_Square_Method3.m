%[Stan_vel,Stan_tor] = Transform(Axis1_Act_Velocity,Axis1_Act_Torque,length(Axis1_Act_Velocity));
% b0 = 1/(1.66*10^-4);
% Z3_modi = Z3-b0*uiq;
% Omiga_Seta = [Z3_modi,Stan_vel];
% Stan_vel_cut = CutOut(Stan_vel,115,488,602,973);
% stan_tor_cut = CutOut(Stan_tor,115,488,602,973);
% Z13_cut = CutOut(Z13,115,488,602,973);
Stan_tor = Axis1_Act_Torque*1.66*10^-4;
Omiga_Seta = [c3',c2'];
J_B = Omiga_Seta\Stan_tor;
figure(4);

plot(Stan_tor-Omiga_Seta*J_B,'r');
hold on
title('Identification results');
plot(Stan_tor,'b');
plot(Omiga_Seta*J_B,'g');
hold off