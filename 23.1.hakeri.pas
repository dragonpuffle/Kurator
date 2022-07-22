var c:int64;
procedure f(n:int64;q,w,e:boolean);
begin
if n=7 then q:=true;
if n=34 then w:=true;
if n=69 then e:=true;
if n<77 then begin
f(n+1,q,w,e);
f(n*2,q,w,e);
end
else if n=77 then 
if q then if w then if not e then c+=1;
end;
begin
c:=0;
f(1,false,false,false);
println(c);
end.
