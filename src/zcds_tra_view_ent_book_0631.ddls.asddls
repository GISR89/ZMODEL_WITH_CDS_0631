@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'CDS Analíticos'
@Metadata.ignorePropagatedAnnotations: true
define transient view entity ZCDS_TRA_VIEW_ENT_BOOK_0631 
provider contract analytical_query
 as projection on ZCDS_AN_DATA_FLIGHT_0631  
{
   @AnalyticsDetails.query.axis: #FREE
    TravelId,
    
    @AnalyticsDetails.query.axis: #ROWS
    BookingId,
   
    @AnalyticsDetails.query.axis: #COLUMNS
    CustomerId,
    
    @ObjectModel.text.element: [ 'currcode' ]   
    @Semantics.amount.currencyCode: 'CurrencyCode'
    FlightPrice ,
 
    BookingDate,
    CarrierId,
    ConnectionId,
    FlightDate,
    CurrencyCode,
    virtual currcode : abap.cuky,
    /* Associations */
    _Flight
}
