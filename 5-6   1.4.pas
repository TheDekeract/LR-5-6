const
  e = 30;

var
  a: array [1..e] of integer;
  b: array [1..15] of integer;
  n, i, j: integer;

begin
  n := e;
  for i := 1 to n do a[i] := random(167) - 99;
  for i := 1 to n do
  begin
    if i mod 2 = 0 then
    begin
      j := i div 2;
      b[j] := a[i];
    end;
  end;
  write('Вывод элементов массива 1: ');
  for i := 1 to n do
    write(a[i], ', ');
  writeln();
  write('Вывод элементов массива 2: ');
  for i := 1 to 15 do
    write(b[i], ', ');
end.