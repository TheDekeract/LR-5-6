const
  e = 2;

var
  a: array [1..e] of integer;
  n, i, g: integer;

begin
  n := e;
  g := 0;
  for i := 1 to n do
    a[i] := random(11);
  for i := 1 to n - 1 do
  begin
    if a[i] < a[i + 1] then g := g + 1
  end;
  if a[e - 1] < a[e] then g := g + 1;
  if g = n then  write('Массив возрастает ') else  write('Массив не возрастает ');
  write('Вывод элементов массива: ');
  for i := 1 to n do
    write(a[i], ', ');
end.