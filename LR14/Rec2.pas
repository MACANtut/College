function SumTo(n: Integer): Integer;//параметризация
begin
  if n <= 0 then//база рекурсии
    SumTo := 0 
  else
    SumTo := n + SumTo(n - 1); //декомпозиция
end;

var
  N: Integer;

begin
  Write('Введите N: ');
  ReadLn(N);
  WriteLn('Сумма чисел от 1 до ', N, ' равна ', SumTo(N));
end.
