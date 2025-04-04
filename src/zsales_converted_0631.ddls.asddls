@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Fundamentos de Modelado de Datos'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZSALES_CONVERTED_0631
  as select from /dmo/booking
{
  key travel_id                                                 as TravelID,
  key booking_id                                                as BookingID,

      @Semantics.amount.currencyCode: 'CurrencyCode'
      flight_price                                              as FlightPriceUSD,
      currency_code                                             as CurrencyCode,

      @Semantics.amount.currencyCode: 'convertedCurrency'
      currency_conversion( amount             => flight_price,
                           source_currency    => currency_code,
                           target_currency    => abap.cuky'USD',
                           exchange_rate_date => $session.user_date,
                           error_handling     => 'SET_TO_NULL') as convertedPrice,
      cast( 'USD' as abap.cuky )                                as convertedCurrency

}
