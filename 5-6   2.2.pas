const
  e = 20;

var
  a: array [1..e] of integer;
  n, i, g, r: integer;

begin
  n := e;
  r := 0;
  for i := 1 to n do a[i] := random(27) - 13;
  write('Вывод изначальных элементов массива: ');
  for i := 1 to n do
    write(a[i], ', ');
  i := 1;
  while i <= n do
    if a[i] < 0 then
    begin
      for g := i to n - 1 do
        a[g] := a[g + 1];
      n := n - 1;
    end
    else i := i + 1;
  writeln();
  write('Вывод итоговых элементов массива: ');
  for i := 1 to n do
    write(a[i], ', ');
end.