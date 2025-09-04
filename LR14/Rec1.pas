procedure writenumbers(n: Integer); //параметризация
begin

  if n <= 25 then //база рекурсии
  begin
    writenumbers(n + 2); //декомпозиция
    WriteLn(n);          
  end;
end;

begin

  writenumbers(1);
end.
