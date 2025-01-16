import random
import matplotlib.pyplot

N = 5000
occurs = 0

Xs = []
Ys = []

for i in range(0, N):
	cur = random.randint(1, 6)
	if cur <= 2:
		occurs += 1
	Xs.append(i + 1)
	Ys.append(occurs / (i + 1))

matplotlib.pyplot.scatter(Xs, Ys)
matplotlib.pyplot.show()
