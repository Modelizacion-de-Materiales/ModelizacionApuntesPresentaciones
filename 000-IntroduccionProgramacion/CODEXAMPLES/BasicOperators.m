>> A = [1, 1, 1];
>> B = [1, 2, 3];
>> A + B
ans =
  2  3  4

>> A./B
ans =
   1.0000    0.5000    0.3333

>> A < B
ans =
  1x3 logical array
   0   1   1

>> A/B  % = B'\A' = A*INV(B)
ans =
    0.4286

