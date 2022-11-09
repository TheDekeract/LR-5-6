const
  e = 20;

var
  a: array [-22..93] of integer;
  n, s, i, k, p, b, c: integer;

begin
  n := e;
  k := 0;
  p := 0;
  for i := 1 to n do
  begin
    a[i] := random(116) - 22;
    if(a[i] mod 2 = 0) and (i mod 2 = 1) then k := k + 1;
  end;
  for i := 1 to n do
    if i mod 2 = 1 then p := p + 1;
  write('Введите промежуток в массиве (-22;93): ');
  read(b, c);
  for i := 1 to n do
    if (a[i] > b) and (a[i] < c) then s := s + a[i];
  write('Вывод элементов массива: ');
  for i := 1 to n do
    write(a[i], ', ');
  writeln();
  writeln(k);
  writeln(s);
end.