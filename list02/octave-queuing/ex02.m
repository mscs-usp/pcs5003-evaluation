# ---

pkg load queueing

# Transition probability matrix
P = [0   0.5 0.5 0;
     0   0   0   1;
     0   0   0   1;
     1   0   0   0];

# Average service times
S = [0.5 0.6 0.8 1];

# External delay
Z = 1;

# Maximum population to consider
N = 3;

# All centers are single-server
m = [2 1 1 0]

# Compute number of visits from P
V = qncsvisits(P);

[U R Q X] = qncsmvald(N, S, V, Z)

[U, R, Q, X, G] = qncsconv (N, S, V, m)


[U, R, Q, X] = qncsmvaap (N, S, V, m, Z)

[U, R, Q, X, G] = qncsmva(N, S, V, m, Z)
#[U, R, Q, X, p0, pK] = qsmmmk(lambda, mu, m, K)
#[U, R, Q, X, p0, pK] = qsmmmk(lambda, S, m, K)


X_bsb_lower = X_bsb_upper = X_ab_lower = X_ab_upper = X_mva = zeros(1,N);
for n=1:N
  [X_bsb_lower(n) X_bsb_upper(n)] = qncsbsb(n, S, V, m, Z);
  [X_ab_lower(n) X_ab_upper(n)] = qncsaba(n, S, V, m, Z);
  [U R Q X] = qnclosed(n, S, V, m, Z);
  X_mva(n) = X(1)/V(1);
endfor
close all;
plot(1:N, X_ab_lower,"g;Asymptotic Bounds;", \
     1:N, X_bsb_lower,"k;Balanced System Bounds;", \
     1:N, X_mva,"b;MVA;", "linewidth", 2, \
     1:N, X_bsb_upper,"k", 1:N, X_ab_upper,"g" );
axis([1,N,0,1]); legend("location","southeast");
xlabel("Number of Requests n"); ylabel("System Throughput X(n)");