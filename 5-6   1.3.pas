const
  e = 20;

var
  a: array [-52..65] of integer;
  n, n1, n2, n3, s, i, k,  max, min: integer;

begin
  n := e;
  max := 0;
  min := 65;
  for i := 1 to n do a[i] := random(118) - 52;
  for i := 1 to n do
  begin
    if  a[i] > max then
    begin
      max := a[i]; 
      n1 := i;
    end;
    if  (a[i] < min) and (a[i] > 0) then
    begin
      min := a[i]; 
      n2 := i;
    end;
    if (a[i] mod 5 = 0) and (a[i] <> 0) then
    begin
      k := a[i];
      n3 := i;
    end;
  end;
  write('Вывод элементов массива: ');
  for i := 1 to n do
    write(a[i], ', ');
  writeln();
  writeln('Вывод номеров чисел максимального, минимального, последнего кратного 5: ');
  writeln(n1, ' ', n2, ' ', n3, ' ');
end.