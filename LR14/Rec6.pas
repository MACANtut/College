procedure fibich(i, n: integer);//параметризация
begin
  if i <= 21 then  // база рекурсии
  begin
    write(i, ' ');  
    fibich(n, i + n); //декомпозиция
  end;
end;

begin
  fibich(1, 1);  
end.
