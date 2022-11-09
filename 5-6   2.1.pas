
var
  a: array of integer;
  n, i, min, r, dm: integer;

begin
  dm := 20;
  SetLength(a, dm);
  write('Вывод изнач. элементов массива: ');
  for i := 0  to dm - 1 do 
  begin
    a[i] := random(41) - 20;
    write(a[i], ', ');
  end;
  for i := 0 to dm - 1 do
    if a[i] > 0 then 
    begin
      n := i;
      break; 
    end;
  for i := 0 to dm - 1 do
    if (a[i] < min) then
    begin
      min := a[i];
      r := i;
    end;
  i := 0;
  if n = r then 
  begin
    while n < dm do
      a[n] := a[n + 1];
    dm := dm - 2;
    write('Вывод конечн. элементов массива: ');
    
    for i := 0 to dm - 1 do
      write(a[i], ', ');
    exit;
  end
  else
          begin
    if n > r then
    begin
      while n < dm - 1 do
      begin
        a[n] := a[n + 1];
        n := n + 1;
      end;
      dm := dm - 1;
      while r < dm - 1 do 
      begin
        a[r] := a[r + 1];
        r := r + 1;
      end;
      dm := dm - 1;
    end
    else
          if n < r then
    begin
      
      while r < dm - 1 do 
      begin
        a[r] := a[r + 1];
        r := r + 1;
      end;
      dm := dm - 1;
      while n < dm - 1 do 
      begin
        a[n] := a[n + 1];
        n := n + 1;
      end;
      dm := dm - 1;
      
    
          end;
  end;
  writeln();
  write('Вывод конечн. элементов массива: ');
  
  for i := 0 to dm - 2 do
    write(a[i], ', ');
  write(a[dm - 1]);
  
   writeln();
  writeln(n, ', ', i, ', ', min, ' ');  
       
end.