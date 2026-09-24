use DataWareHouse;
go

-- erp_cust_az12
create or alter view bronze.vw_erp_cust_az12 as
select
    cid,
    bdate,
    gen
from bronze.erp_cust_az12;
go

bulk insert bronze.vw_erp_cust_az12
from '/var/opt/mssql/data/source_erp/CUST_AZ12.csv'
with(
    firstrow = 2,
    fieldterminator = ',',
    rowterminator = '\r\n',
    tablock
);
go

-- erp_loc_a101
create or alter view bronze.vw_erp_loc_a101 as
select
    cid,
    cntry
from bronze.erp_loc_a101;
go

bulk insert bronze.vw_erp_loc_a101
from '/var/opt/mssql/data/source_erp/LOC_A101.csv'
with(
    firstrow = 2,
    fieldterminator = ',',
    rowterminator = '\r\n',
    tablock
);
go

-- px_cat_g1v1
create or alter view bronze.vw_erp_px_cat_g1v2 as
select
    id,
    cat,
    subcat,
    maintenance
from bronze.erp_px_cat_g1v2
go

bulk insert bronze.vw_erp_px_cat_g1v2
from '/var/opt/mssql/data/source_erp/PX_CAT_G1V2.csv'
with(
    firstrow = 2,
    fieldterminator = ',',
    rowterminator = '\r\n',
    tablock
);
go




