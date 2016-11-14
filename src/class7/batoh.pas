program square;


Uses sysutils;

type
    tArray = array[1..1000] of integer;

procedure findSolutions(items: tArray; numItems, targetSum, idx, sum: integer; solution: String);
begin
  if idx <= numItems then begin
    { prvok na pozici idx pridam do riesenia }
    findSolutions(items, numItems, targetSum, idx + 1, sum + items[idx], solution + IntToStr(idx) + ' ');
    { prvok na pozici idx NEpridam do riesenia }
    findSolutions(items, numItems, targetSum, idx + 1, sum, solution);
  end else begin
    if sum = targetSum then
      writeln(solution);
  end;
end;

var size: integer;
    items: tArray;
begin
  items[1] := 1;
  items[2] := 2;
  items[3] := 2;
  items[4] := 1;
  items[5] := 2;
  findSolutions(items, 5, 4, 1, 0, '');
end.
