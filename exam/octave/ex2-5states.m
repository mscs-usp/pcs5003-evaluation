a = 0.4
b = 0.6
l1 = 10
l2 = 15
m1 = 20
Q = [
-l1-l2,      l1,     l2,      0,      0;
  m1*a,     -m1,      0,   m1*b,      0;
  m1*b,       0,    -m1,      0,   m1*a;
     0,      l2,      0,    -l2,      0;
     0,       0,     l1,      0,    -l1
  ]

I = eye(size(Q))
v = ones(1, length(Q))
pis = [Q' - I; v] \ [zeros(length(Q), 1); 1]

























a0 = 0.4
b0 = 0.6
l1 = 10
l2 = 15
m1 = 20
Q = [
 -l1-l2,      0,      0,     l2,     l1;
      0,    -l2,      0,      0,     l2;
      0,      0,    -l1,     l1,      0;
  m1*b0,      0,  m1*a0,    -m1,      0;
  m1*a0,  m1*b0,      0,      0,    -m1
  ]
  
I = eye(size(Q))
v = ones(1, length(Q))
pis = [Q' - I; v] \ [zeros(length(Q), 1); 1]

  
I = eye(size(Q))
v = ones(1, length(Q))
pis = [Q' - I; v] \ [zeros(length(Q), 1); 1]


pis = [Q' - eye(size(Q)); ones(1, length(Q))] \ [zeros(length(Q), 1); 1] 



pis = Q \ [zeros(length(Q), 1); 1] 



    
