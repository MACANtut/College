function Power(base: Real; exp: Integer): Real;//параметризация
begin
  if exp = 0 then // база рекурсии
    Power := 1 
  else if exp < 0 then
    Power := 1 / Power(base, -exp) 
  else
    Power := base * Power(base, exp - 1); // декомпозиция
end;

var
  Base: Real;
  Exp: Integer;

begin
  Write('Введите основание: ');
  ReadLn(Base);
  Write('Введите показатель степени: ');
  ReadLn(Exp);
  WriteLn(Base, ' в степени ', Exp, ' равно ', Power(Base, Exp));
end.
