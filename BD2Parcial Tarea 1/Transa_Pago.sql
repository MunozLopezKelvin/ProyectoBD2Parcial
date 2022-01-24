create or replace procedure transa_pago(int,date,int)
as
$$
declare
	res int;
	begin
		insert into factura(id_pago,fecha_cobro,monto_pagado) values($1,$2,$3);	
		update pagos set debe=debe-$3 where id_pago=$1;
		select debe into res from pagos where id_pago=$1;
		if (res=0) then
			update pagos set estado='Pagado' where id_pago=$1;
		end if;
	exception
		when sqlstate '23514' then
		raise exception 'No se realizo la transaccion debido a que excedio el pago de la deuda';
		rollback;
	commit;
end;
$$
language plpgsql;


