@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Tipos de Entidades y Servicios'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_CUST_PROJ_631
  provider contract transactional_interface
  as projection on ZCDS_CUSTOMER_ROOT_0631
{
  key CustomerId,
      FirstName,
      LastName,
      City,
      /* Associations */
      _Airport,
      _Booking : redirected to composition child ZCDS_CHILD_PROJ_631
}
