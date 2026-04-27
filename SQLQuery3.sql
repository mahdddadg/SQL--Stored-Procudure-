



alter procedure customer_summery @country nvarchar(20) = 'USA'
as
begin 
	begin try 

			declare @totalcustomer int , @avgscore float
			------------------------------------------------------------------------------------
			-- 1-  prepare and clen up -----
			------------------------------------------------------------------------------------

			if exists ( select 1 from sales.customers where score is null and country = @country ) 
			begin
						print('updating nulls')
						update sales.customers
						set score = 0 
						where score is null and country = @country
			end

			else
			begin
				 print('no null found')
			end
			------------------------------------------------------------------------------------
			-- 2-  summery report -----
			------------------------------------------------------------------------------------
			--claculate total and avrage 
			select 

				@totalcustomer = count(*)  ,
				@avgscore = avg(score)  

			from sales.customers
			where country = @country


			print('totall customer from ' +@country+':' +cast(@totalcustomer  as nvarchar ) )
			print('avrage score from ' +@country+':' + cast(@avgscore as nvarchar) )

			-- totall number of order and sale
			select 

				count(orderid) totalorder ,
				sum (sales) as totalsales

			from sales.orders as o
			join sales.customers as c 
			on c.customerid = o.customerid
			where country = @country 
			------------------------------------------------------------------------------------
			-- 3-  error handling -----
			------------------------------------------------------------------------------------
	end try
	begin catch
			print('An error occured ! ')
			print('Error message'+ cast(Error_message()as nvarchar) )
			print('Error number'+cast(Error_number()as nvarchar))
			print('Error line'+cast(Error_line()as nvarchar))
			print('Error procedure'+cast(Error_procedure()as nvarchar))

	end catch
end 



exec customer_summery 
exec customer_summery @country = 'Germany'