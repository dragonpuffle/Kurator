var c:int64;
procedure f(n:int64;q,w:boolean;k:int64);
begin
  if n=3 then q:=true;
  if n=10 then w:=true;
  if n<23 then begin
    f(n+1,q,w,k+1);
    f(n+2,q,w,k+1);
    f(n*2,q,w,k+1);
  end
  else if n=23 then
    if not q then if not w then if k<9 then c+=1;
end;
begin
  c:=0;
  f(1,false,false,0);
  println(c);
end.