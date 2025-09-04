var
  myString: string;
  i, letterCount, wordCount: Integer;
  inWord: Boolean;

begin
  letterCount := 0;
  wordCount := 0;
  inWord := False;

  Write('Введите строку: ');
  ReadLn(myString);

  for i := 1 to Length(myString) do
  begin
    if (myString[i] >= 'A') and (myString[i] <= 'Z') or
       (myString[i] >= 'a') and (myString[i] <= 'z') or
       (myString[i] >= 'А') and (myString[i] <= 'Я') or
       (myString[i] >= 'а') and (myString[i] <= 'я') then
    begin
      letterCount += 1; 
      if not inWord then
      begin
        inWord := True; // Начало слова
        wordCount += 1; 
      end;
    end
    else
    begin
      inWord := False; // Конец слова
    end;
  end;

  WriteLn('Количество букв: ', letterCount);
  WriteLn('Количество слов: ', wordCount);
end.
