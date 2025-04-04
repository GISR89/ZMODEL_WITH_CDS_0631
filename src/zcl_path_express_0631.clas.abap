CLASS zcl_path_express_0631 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_path_express_0631 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    SELECT FROM zcds_public_assoc_0631 AS Travel
       FIELDS travel~AgencyId,
              travel~TravelId,
              \_Agency-Name AS Name
       WHERE travel~AgencyId EQ '070032'
       INTO TABLE @DATA(lt_result)
       UP TO 10 ROWS.

    IF sy-subrc EQ 0.
      out->write( lt_result ).
    ENDIF.

  ENDMETHOD.

ENDCLASS.
