from __future__ import print_function
import torch

x = torch.rand(5, 3)
print(x)

y = torch.rand(5, 3)
print(y)

print(x+y)
print(torch.add(x, y))

res = torch.Tensor(5, 3)
torch.add(x, y, out=res)
print(res)

print(torch.cuda.is_available())
