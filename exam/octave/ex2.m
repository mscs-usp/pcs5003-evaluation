P = [
  0.0,   1.0,   0.0,   0.0;
  0.0,   0.1,   0.9,   0.0;
  0.0,   0.01,  0.18,  0.81;
  0.001, 0.027, 0.243, 0.729
  ]

pis = [P' - eye(size(P)); ones(1,length(P))] \ [zeros(length(P),1);1] 


a0 = 0.4
b0 = 0.6
l1 = 10/25
l2 = 15/25
m1 = 1
P = [
  0, b0, a0,  0,  0,  0,  0,  0;
  0,  0,  0, b0, a0,  0,  0,  0;
  0,  0,  0,  0, b0, a0,  0,  0;
  0,  0,  0,  0,  0,  0, l2,  0;
  0,  0,  0,  0,  0,  0, l1, l2;
  0,  0,  0,  0,  0,  0,  0, l2;
  0, m1,  0,  0,  0,  0,  0,  0;
  0,  0, m1,  0,  0,  0,  0,  0;
  ]
  
pis = [P' - eye(size(P)); ones(1,length(P))] \ [zeros(length(P),1);1] 
