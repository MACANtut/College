procedure printstepler(step: Integer; totalSteps: Integer); //параметризация
begin
  WriteLn('Привет! Шаг: ', step);

  if step < totalSteps then //базовый случай
    printstepler(step + 1, totalSteps); //декомпозиция
end;

var
  totalSteps: Integer;

begin
  Write('Введите общее количество шагов: ');
  ReadLn(totalSteps);

  printstepler(1, totalSteps);
end.
