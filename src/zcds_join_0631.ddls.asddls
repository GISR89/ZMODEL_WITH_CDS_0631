@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Asociaciones y Expresiones'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_JOIN_0631
  as select from /dmo/booking as booking
    inner join   /dmo/flight  as flight on flight.carrier_id = booking.carrier_id
{
  key booking.booking_id   as bookingId,
      flight.flight_date   as flightDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      flight.price         as Price,
      flight.currency_code as CurrencyCode

}
