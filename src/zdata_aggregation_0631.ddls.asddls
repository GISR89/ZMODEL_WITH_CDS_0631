@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Fundamentos de Modelado de Datos'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZDATA_AGGREGATION_0631
  as select from /dmo/booking
{
  key travel_id          as TravelID,
  key booking_id         as BookingID,

      @Semantics.amount.currencyCode: 'CurrencyCode'
      sum (flight_price) as SumFlightPrice,
      currency_code      as CurrencyCode

}
group by
  travel_id,
  booking_id,
  currency_code;
