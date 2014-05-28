a = 0.2
s = 0.6
P = [
  (1-a)*(1-a),	(1-a)*a,	a*(1-a),	a*a;
  (1-a)*s,	(1-a)*(1-s),	a*s,		a*(1-s);
  s*(1-a),	s*a,		(1-s)*(1-a),	(1-s)*a;
  0,		s*(1-s),	(1-s)*s,	(1-s)*(1-s)+s*s;
  ]

pis = [P' - eye(size(P)); ones(1, length(P))] \ [zeros(length(P), 1); 1]




---


pi_0 = 0.51064
pi_1 = 0.19149
pi_2 = 0.19149
pi_3 = 0.10638

pi_1*(1-a)*(1-s)*a/2 + pi_2*(1-s)*(1-a)*a/2 + pi_3*(1-s)*(1-s)*a + pi_3*(1-s)*(1-s)*a*a

pi_1*a + pi_2*a + 2*pi_3*a + pi_3*a*a