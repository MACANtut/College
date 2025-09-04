uses GraphABC, HilbertCurve;

var
  Depth: Integer;
  Points: array of TPoint;
  Scale: Double;
  OffsetX, OffsetY: Integer;

procedure DrawCurve;
var
  I: Integer;
begin
  ClearWindow;
  SetPenColor(clBlack);
  for I := 0 to High(Points) - 1 do
  begin
    Line(
      Round(Points[I].X * Scale) + OffsetX, Round(Points[I].Y * Scale) + OffsetY,
      Round(Points[I + 1].X * Scale) + OffsetX, Round(Points[I + 1].Y * Scale) + OffsetY
    );
  end;
end;

procedure HandleKeyDown(Key: Integer);
begin
  case Key of
    VK_Add: begin
              Scale := Scale * 1.1;
              DrawCurve;
            end;
    VK_Subtract: begin
                   Scale := Scale / 1.1;
                   DrawCurve;
                 end;
    VK_Up: begin
             OffsetY := OffsetY - 10;
             DrawCurve;
           end;
    VK_Down: begin
               OffsetY := OffsetY + 10;
               DrawCurve;
             end;
    VK_Left: begin
               OffsetX := OffsetX - 10;
               DrawCurve;
             end;
    VK_Right: begin
                OffsetX := OffsetX + 10;
                DrawCurve;
              end;
    VK_Q: begin
                Depth := 1;
                SetLength(Points, 1 shl (2 * Depth));
                DrawHilbertCurve(Depth, Points);
                DrawCurve;
              end;
    VK_W: begin
                Depth := 2;
                SetLength(Points, 1 shl (2 * Depth));
                DrawHilbertCurve(Depth, Points);
                DrawCurve;
              end;
    VK_E: begin
                Depth := 3;
                SetLength(Points, 1 shl (2 * Depth));
                DrawHilbertCurve(Depth, Points);
                DrawCurve;
              end;
    VK_R: begin
                Depth := 4;
                SetLength(Points, 1 shl (2 * Depth));
                DrawHilbertCurve(Depth, Points);
                DrawCurve;
              end;
    VK_T: begin
                Depth := 5;
                SetLength(Points, 1 shl (2 * Depth));
                DrawHilbertCurve(Depth, Points);
                DrawCurve;
              end;
    VK_Escape: Window.Close; 
  end;
end;

begin
  Depth := 3;
  Scale := 1.0;
  OffsetX := 100;
  OffsetY := 100;
  SetLength(Points, 1 shl (2 * Depth));
  DrawHilbertCurve(Depth, Points);

  Window.Title := 'Кривая Гильберта';
  Window.SetSize(800, 800);
  DrawCurve;

  
  OnKeyDown := HandleKeyDown;
end.