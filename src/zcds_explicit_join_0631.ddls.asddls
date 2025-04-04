@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Asociaciones y Expresiones'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_EXPLICIT_JOIN_0631 
     as select from /dmo/customer as Customer
     
     association[0..*] to /dmo/booking as _Booking on Customer.customer_id = _Booking.customer_id
{
    key Customer.customer_id as CustomerId,
    Customer.first_name as FirstName,
    Customer.last_name as LastName,
    _Booking[inner].booking_date as BookingDate
}
