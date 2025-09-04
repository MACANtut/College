uses GraphABC;

const
  Size = 8; // Размер доски
  CellSize = 50; // Размер клетки

var
  i, j: Integer;
  x, y: Integer;

begin
  for i := 0 to Size - 1 do
  begin
    for j := 0 to Size - 1 do
    begin
      x := j * CellSize; 
      y := i * CellSize; 

      if (i + j) mod 2 = 0 then
      begin
        SetBrushColor(clBlack); 
      end
      else
      begin
        SetBrushColor(clWhite); 
      end;
      FillRectangle(x, y, x + CellSize, y + CellSize);
    end;
  end;


end.