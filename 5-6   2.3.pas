const e = 20;
var a: array[1..e] of integer;
i,max,min,b: integer;
begin
  for i := 1 to e do a[i] := random(41)-20;
  write('Вывод элементов массива: ');
  for i := 1 to e-1 do
  write(a[i], ', ');
  write(a[e]);
  for i:=1 to e do
  min:=1;
  max:=1;
  for i:=1 to e do
  begin
    if a[i]>a[max] then
    max:=i;
    if a[i]<a[min] then
    min:=i;
  end;
  b:=a[max];
  a[max]:=a[min];
  a[min]:=b;
  writeln();
  write('Вывод конечн. элементов массива: ');
  for i := 1 to e do
  write(a[i], ', ');
end.