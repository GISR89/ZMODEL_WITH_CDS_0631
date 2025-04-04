@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Tipos de Entidades y Servicios'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_CUSTOMER_ROOT_0631
  as select from /dmo/customer
  composition [1..*] of ZCDS_CUST_BOOK_0631 as _Booking
  association [1..*] to /dmo/airport as _Airport on _Airport.city = $projection.City
{

  key customer_id as CustomerId,
      first_name  as FirstName,
      last_name   as LastName,
      city        as City,
      _Booking,
      _Airport

}
