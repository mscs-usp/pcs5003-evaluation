# http://www.moreno.marzolla.name/software/queueing/

# JMT-octave mappings
# X is the throughput (tab 1: Throughput)
# Q is the average number of requests (tab 2: Number of Customers)
# RT is the residence time (tab 3: Residence Times)
# U is the utilization (tab 4: Utilization)
# ??? (tab 5: System Power)
# D is the service demands (tab 6: Synopsis)

# ---

pkg load queueing

P = [0   0.5 0.5 0;
     1   0   0   0;
     0.6 0   0   0;
     1   0   0   0];

lambda = 4;
V = qnosvisits(P, [0 0 0 lambda])
# V =
#   5.0000   2.5000   2.5000   1.0000

S = [0.04 0.03 0.06 0.05];

[U R Q X] = qnos(lambda, S, V)
# [U R Q X] = qnopen(sum(lambda), S, V)
R_s = dot(R, V) # System response time
N = sum(Q) # Average number in system

# V is the number of visits
# U is the utilization
# R is the average response time
# Q is the average number of requests/users
# X is the throughput (tab 1)

# D is the service demands
D = V .* S;

# RT is the residence time (tab 3)
RT = R .* V;

# We might also verify that the external arrival rate is less than the processing capacity of the network, which by definition is the inverse of the maximum service demand:
# sum(lambda)
# 1/max(D)

# Since sum(lambda) < 1/max(D), it is possible to analyze the steady-state behavior of the network. We use the qnopen function to compute the results of interest:
# [U R Q X] = qnopen(sum(lambda), S, V)

#printf("\nSystem\t          %8.4f  %8.4f  %8.4f\n\n", N-X_s*Z, R_s, X_s );
#printf("1)");
#printf("1)");
# 1.a) U = 0.80000   0.30000   0.60000   0.20000
# 1.b) gargalo = estacao 1 (CPU)
# 2) Q = 4.00000   0.42857   1.50000   0.25000
# 3) R_s = dot(R, V) = 1.5446
# 4) lambda > 1/max(D)
# 5) R * K multiplorio = 0.0019286

k = [1 3 2 4];
pr = dot(R, k)

#m = [1 1 1 1];
#k = [1 3 2 4];
#P = [0   0.5 0.5 0;
#     1   0   0   0;
#     0.6 0   0   0;
#     1   0   0   0];
#lambda = 4;
#V = qnosvisits(P, [0 0 0 lambda]);
#S = [0.04 0.03 0.06 0.05];
#K = sum(k); # Total population size
#[U R Q X G] = qncsconv( K, S, V, m )
## Compute the probability to have k(i) jobs at service center i
#for i=1:4
#  p(i) = (V(i)*S(i))^k(i) / G(K+1) * ...
#         (G(K-k(i)+1) - V(i)*S(i)*G(K-k(i)) );
#  printf("k(%d)=%d prob=%f\n", i, k(i), p(i) );
#endfor
#pr = prod(p)
