N_Max = 13;
N_time = 20;
[T_integral,v_integral,Delta_v] = Integration_Torque_Velocity_and_Delta_v(Axis1_Act_Torque,Axis1_Act_Velocity,0.00025,N_Max,N_time);
[B,J] = Last_Square_Method_Function(T_integral,v_integral,Delta_v,N_Max);

plot(T_integral-J*Delta_v-B*v_integral);
hold on;
plot(T_integral);