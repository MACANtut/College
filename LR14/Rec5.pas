function HOD(a, b: Integer): Integer;//параметризация
begin
  if b = 0 then//база рекурсии
    HOD := a
  else
    HOD := HOD(b, a mod b);//декомпозиция
end;

var
  num1, num2: Integer;

begin
  Write('Введите первое число: ');
  ReadLn(num1);
  Write('Введите второе число: ');
  ReadLn(num2);
  
  WriteLn('Наибольший общий делитель: ', HOD(num1, num2));
end.
