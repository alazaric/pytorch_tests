# test

import torch
from torch.autograd import Variable

x = Variable(torch.ones(2, 2), requires_grad=True)
print(x)

y = x+2
print(y)

print(y.grad_fn)

z = y * y * 3
out = z.mean()

print(z, out)

out.backward()
print(x.grad)


print("Second example")

x = torch.rand(3)
x = Variable(x, requires_grad=True)
print(x)

y = x * 2
count = 1
while y.data.norm() < 1000:
	y = y * 2
	count = count + 1

print(count)

print(y)

gradients = torch.Tensor([0.1, 1.0, 0.0001])
y.backward(gradients)

print(x.grad)