>>A=[true true false false];
>>B=[true false true false];

>> A&B
ans =
  1x4 logical array
   1   0   0   0

>> A|B
ans =
  1x4 logical array
   1   1   1   0

>> 1 > 10
  logical
   0

>> any(A)
ans =
  logical
   1
