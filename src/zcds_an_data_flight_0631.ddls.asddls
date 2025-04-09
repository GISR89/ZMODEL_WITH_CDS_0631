@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Analíticos'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Analytics.dataCategory: #CUBE
define view entity ZCDS_AN_DATA_FLIGHT_0631 
      as select from /dmo/booking as Booking
      
   association [0..*] to ZCDS_VDM_FLIGHT_0631 as _Flight on _Flight.CurrencyCode = $projection.CurrencyCode
      
{
    key travel_id as TravelId,
    key booking_id as BookingId,
    booking_date as BookingDate,
    customer_id as CustomerId,
    carrier_id as CarrierId,
    connection_id as ConnectionId,
    flight_date as FlightDate,
    
    @DefaultAggregation: #SUM
    @Semantics.amount.currencyCode: 'CurrencyCode'
    flight_price as FlightPrice,
    
    currency_code as CurrencyCode,
    _Flight
}
