import numpy as np

# Approximates PI using Monte Carlo Simulation
def approximate_pi(points: int):
  samples = np.random.uniform(-1, 1, (points, 2))
  inside = np.where(np.pow(samples, 2).sum(axis=1) <= 1, 1, 0)
  return 4 * np.count_nonzero(inside) / points

print(approximate_pi(1000000))