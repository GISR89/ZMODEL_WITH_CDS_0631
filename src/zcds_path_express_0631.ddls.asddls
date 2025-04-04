@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Asociaciones y Expresiones'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_PATH_EXPRESS_0631 
       as select from /dmo/booking as Booking
       
   association[0..*] to /dmo/flight as _Flight on _Flight.connection_id = Booking.connection_id
       
{
    key booking_id as BookingId,
    key travel_id as TravelId,
    _Flight[ 1: connection_id = '0001' ].seats_occupied as SeatOccupied
   
}
