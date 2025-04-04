@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Tipos de Entidades y Servicios'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_CUST_BOOK_0631
  as select from /dmo/booking
  association to parent ZCDS_CUSTOMER_ROOT_0631 as _Customer on _Customer.CustomerId = $projection.CustomerId

{
  key /dmo/booking.travel_id   as TravelId,
  key /dmo/booking.booking_id  as BookingId,
  key /dmo/booking.customer_id as CustomerId,
      _Customer

}
