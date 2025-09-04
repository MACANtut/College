var
   filetext: text;
   a: string;
   i: integer;
begin
   
   assign(filetext, 'C:\Users\lolko\OneDrive\Рабочий стол\.txt'); 
   rewrite(filetext);
   

   for i := 1 to 10 do
   begin
       writeln(filetext, i); 
   end;

   close(filetext); 

   reset(filetext); 
   for i := 1 to 10 do
   begin
       readln(filetext, a); // Читаем строку из файла
       writeln(a); // Отображаем строку на экране
   end;

   close(filetext); 
end.
