const
  e = 20;

var
  a: array [1..e] of integer;
  n, i: integer;

begin
  n := e;
  writeln('Введите элементы массива: ');
  for i := 1 to n do
  begin
    read(a[i]);
    if(a[i]) > 0 then a[i] := 0 else a[i] := sqr(a[i]);
  end;
  write('Вывод элементов массива: ');
  for i := 1 to n do
    write(a[i], ', ');
end.