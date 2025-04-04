@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Tipos de Entidades y Servicios'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_CHILD_PROJ_631
  as projection on ZCDS_CUST_BOOK_0631
{

  key TravelId,
  key BookingId,
  key CustomerId,
      /* Associations */
      _Customer : redirected to parent ZCDS_CUST_PROJ_631

}
