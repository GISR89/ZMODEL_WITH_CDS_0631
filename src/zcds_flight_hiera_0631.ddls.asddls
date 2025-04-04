@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'Tipos de Entidades y Servicios'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_FLIGHT_HIERA_0631
  as select from /dmo/travel
  association [1..1] to ZCDS_FLIGHT_HIERA_0631 as _Agency on _Agency.CustomerId = $projection.AgencyId


{
  key agency_id   as AgencyId,
      customer_id as CustomerId,
      _Agency

}
