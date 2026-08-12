/*
===============================================================================
Stored Procedure: Load Bronze Layer (Source -> Bronze)
===============================================================================
Script Purpose:
    This stored procedure loads data into the 'bronze' schema from external CSV files. 
    It performs the following actions:
    - Truncates the bronze tables before loading data.
    - Uses the `BULK INSERT` command to load data from csv Files to bronze tables.

Parameters:
    None. 
	  This stored procedure does not accept any parameters or return any values.

Usage Example:
    EXEC bronze.load_bronze;
===============================================================================
*/

create or alter procedure bronze.load_bronze as 
begin
	declare @start_time datetime,@end_time datetime,@batch_start datetime,@batch_end datetime;
	begin try
		set @batch_start=getdate();
		print'=================================';
		print 'loading bronze layer';
		print'=================================';

		print'--------------------------';
		print 'loading crm tables';
		print '-------------------------';
		set @start_time =GETDATE();
		print '>> truncating table: bronze.crm_cust_info';
		truncate table bronze.crm_cust_info;
		print '>> isserting data into: bronze.crm_cust_info';
		BULK INSERT bronze.crm_cust_info
		from 'D:\study\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
		with(
			firstrow=2,
			fieldterminator=',',
			tablock
			);
			set @end_time=getdate();
			print '>> load duration: '+cast(datediff(second,@start_time,@end_time) as nvarchar) + 'seconds';

		set @start_time=getdate();
		print '>> truncating table: bronze.crm_prd_info';
		truncate table bronze.crm_prd_info;
		print '>> isserting data into: bronze.crm_prd_info';
		BULK INSERT bronze.crm_prd_info
		from 'D:\study\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
		with(
			firstrow=2,
			fieldterminator=',',
			tablock
			);
		print '>> load duration: '+cast(datediff(second,@start_time,@end_time) as nvarchar) + 'seconds';

		set @start_time=getdate();
		print '>> truncating table: bronze.crm_sales_details';
		truncate table bronze.crm_sales_details;
		print '>> isserting data into: bronze.crm_sales_details';
		BULK INSERT bronze.crm_sales_details
		from 'D:\study\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
		with(
			firstrow=2,
			fieldterminator=',',
			tablock
			);

		print '>> load duration: '+cast(datediff(second,@start_time,@end_time) as nvarchar) + 'seconds';

		set @start_time=getdate();
		print '>> truncating table: bronze.erp_cust_az12';
		truncate table bronze.erp_cust_az12;
		print '>> isserting data into: bronze.erp_cust_az12';
		BULK INSERT bronze.erp_cust_az12
		from 'D:\study\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\cust_az12.csv'
		with(
			firstrow=2,
			fieldterminator=',',
			tablock
			);
		print '>> load duration: '+cast(datediff(second,@start_time,@end_time) as nvarchar) + 'seconds';
		
		set @start_time=getdate();
		print '>> truncating table: bronze.erp_loc_a101';
		truncate table bronze.erp_loc_a101;
		print '>> isserting data into: bronze.erp_loc_a101';
		BULK INSERT bronze.erp_loc_a101
		from 'D:\study\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\loc_a101.csv'
		with(
			firstrow=2,
			fieldterminator=',',
			tablock
			);
		print '>> load duration: '+cast(datediff(second,@start_time,@end_time) as nvarchar) + 'seconds';
		
		set @start_time=getdate();
		print '>> truncating table: bronze.erp_px_cat_g1v2';
		truncate table bronze.erp_px_cat_g1v2;
		print '>> isserting data into: bronze.erp_px_cat_g1v2';
		BULK INSERT bronze.erp_px_cat_g1v2
		from 'D:\study\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\px_cat_g1v2.csv'
		with(
			firstrow=2,
			fieldterminator=',',
			tablock
			);
			print '>> load duration: '+cast(datediff(second,@start_time,@end_time) as nvarchar) + 'seconds';

			set @batch_end =getdate();
			print '===========================================';
			print'>> loading bronze layer is complete';
			print'>> the total duration is '+cast(datediff(second,@batch_end,@batch_start)as nvarchar)+'seconds';
			print'============================================';

	end try
	begin catch
		PRINT '==========================================';
		PRINT 'ERROR OCCURED DURING LOADING BRONZE LAYER';
		PRINT 'Error Message' + ERROR_MESSAGE();
		PRINT 'Error Message' + CAST (ERROR_NUMBER() AS NVARCHAR);
		PRINT 'Error Message' + CAST (ERROR_STATE() AS NVARCHAR);
		PRINT '=========================================='
	end catch
end
