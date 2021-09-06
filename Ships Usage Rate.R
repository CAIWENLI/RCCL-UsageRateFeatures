library(odbc)
con.microsoft.sql <- DBI::dbConnect(odbc::odbc(),
                                    Driver   = "SQL Server",
                                    Server   = "rcclanalyticssql.database.windows.net",
                                    Database = "rcclanalytics",
                                    UID      = "caiwenli",
                                    PWD      = "Travel.Florida2019!",
                                    Port     = 1433)

dbo.mia.ship <- paste("SELECT T.BRAND,
       T.SHIP_CODE,
       COUNT(T.ASR_BOOKING_ID) TOTAL_UNITS,
       COUNT(T.ORDER_ID) TOTAL_ORDERS,
       COUNT(T.CRUISE_BOOKING_ID) BOOKED_CRUISE,
       COUNT(T.BUYER_ID) TOTAL_CUSTOMER,
       SUM(T.TOTAL_PAYMENT_AMT) TOTAL_REV,
FROM RCCLAnalytics.dbo.MIA_MobileBookingsRevMod T
WHERE T.PRODUCT_BOOKING_DTM BETWEEN '2019-09-13' AND '2019-12-17'
      AND T.CHANNEL IN ('Excalibur App')
GROUP BY T.BRAND,
         T.SHIP_CODE,
         COUNT(T.ASR_BOOKING_ID),
         COUNT(T.ORDER_ID),
         COUNT(T.CRUISE_BOOKING_ID),
         COUNT(T.BUYER_ID),
         SUM(T.TOTAL_PAYMENT_AMT)", sep="")

dbo.mia.ship.query <- dbGetQuery(con.microsoft.sql, dbo.mia.ship)
