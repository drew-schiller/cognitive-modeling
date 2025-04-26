data {
  int<lower=1> N;
  array<N> x;
  array<N> y;
}

parameters {
  real alpha;
  real slope;
  real noise;
}

model {
  noise ~ inv_gamma(1, 1)
  alpha ~ normal(0, 10)
  slope ~ normal(0, 10)
  for (n in 1:N) {
    y[n] ~ normal(alpha + slope * x[n], noise)
  }
}