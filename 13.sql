create function devolver_cantidad(@edad int)
returns INT
AS
BEGIN
	declare @return_aux int;
    --Concatenamos el nombre con el texto
 select COUNT(*) 
    into @return_aux
	from personas
    WHERE age = @edad;
    
    return @return_aux;
end;

select devolver_cantidad(21);