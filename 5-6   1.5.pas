const
  e = 20;

var
  a, b: array [1..e] of integer;
  n, i, s1, s2: integer;

begin
  n := e;
  for i := 1 to n do
  begin
    a[i] := random(40) - 20;
    b[i] := random(40) - 20;
  end;
  s1 := 0;
  s2 := 0;
  for i := 1 to n do
  begin
    if(b[i] > 0)  then s1 := s1 + b[i];
    if(a[i] > 0)  then s2 := s2 + a[i];
  end;
  if s1 > s2 then 
  begin
    for i := 1 to n do
      a[i] := a[i] * 10
  end;
  if s2 > s1 then
  begin
    for i := 1 to n do
      b[i] := b[i] * 10
  end;
  write('Вывод элементов массива 1: ');
  for i := 1 to n do write(a[i], ', ');
  writeln();
  write('Вывод элементов массива 2: ');
  for i := 1 to n do write(b[i], ', ');
end.