@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Fundamentos de Modelado de Datos'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZUNIT_CONVERSION_0631
  as select from /dmo/fsa_root_a
{
  key id                                                as Id,
      string_property                                   as StringProperty,

      @Semantics.quantity.unitOfMeasure: 'OriginalUom'
      field_with_quantity                               as FieldQuantity,
      uom                                               as OriginalUom,

      @Semantics.quantity.unitOfMeasure: 'convertedUnit'
      unit_conversion( quantity       => field_with_quantity,
                       source_unit    => uom,
                       target_unit    => abap.unit'W',
                       error_handling =>'SET_TO_NULL' ) as convertedQty,
      abap.unit'W'                                      as convertedUnit


}
