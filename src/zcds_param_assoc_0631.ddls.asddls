@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Asociaciones y Expresiones'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_PARAM_ASSOC_0631
  with parameters
    pCarrierID : /dmo/carrier_id
  as select from /dmo/flight as Flight

  association [0..1] to /dmo/carrier as _Carrier on _Carrier.carrier_id = $projection.CarrierId

{
  key Flight.carrier_id    as CarrierId,
  key Flight.connection_id as ConnectionId,
  key Flight.flight_date   as FlightDate,
      _Carrier.name        as Name
}
where
  Flight.carrier_id = $parameters.pCarrierID;
