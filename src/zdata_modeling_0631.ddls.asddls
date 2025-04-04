@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Fundamentos de Modelado de Datos'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZDATA_MODELING_0631
  as select from /dmo/customer
{
  key customer_id                      as CustomerID,
      first_name                       as FirstName,
      last_name                        as Last_Name,
      $session.client                  as ClientField,
      $session.system_date             as SystemDate,

      cast( customer_id as abap.int8 ) as CustomerIDUser,

      case country_code
      when 'US' then 'United States'
      when 'DE' then 'Germany'
      else 'Other Country'
      end                              as case1
}
