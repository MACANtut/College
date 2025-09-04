var
  s, k, sum_k, j: Integer;
  my_mass: array of Integer;

begin
  Write('Введите любое число: ');
  ReadLn(s);
  
  Write('Введите количество элементов массива: ');
  ReadLn(k);
  SetLength(my_mass, k);
  
  Write('Ввод элементов массива: ');
  for j := 0 to k - 1 do
    Read(my_mass[j]);
  
  k := 0;
  sum_k := 0;
  j := 0;

  while sum_k <= s do
  begin
    if j < Length(my_mass) then
    begin
      sum_k := sum_k + my_mass[j];
      k += 1;
      j += 1;
    end
    else
      Break; 
  end;

  WriteLn(k - 1, '-количество первый k чиссел в массиве');
  WriteLn(sum_k - my_mass[k - 1], '-сумма первых k чисел в массиве');
end.