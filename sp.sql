

create proc A(@x int, @y int)
as
begin
declare @sum int
set @sum=@x+@y
return @sum

end
---------------------

create procedure B

 @x int,
 @y int
 as
 declare @res INT 

EXEC @res = [dbo].[A] @x , @y

select @res as [sum], @x as x, @y as y
-----------------------

exec B 34,5676
