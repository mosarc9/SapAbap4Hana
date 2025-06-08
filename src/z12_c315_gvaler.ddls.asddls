@AbapCatalog.sqlViewName: 'Z12C315'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Association with Parameters'
define view z12_c315_gvaler
  with parameters
    pAirlineCode : s_carr_id
  as select from sflight as Flights
  association [0..1] to z11_c315_gvaler as _Airline on _Airline.Carrid = Flights.carrid
{
  key carrid,
  key connid,
  key fldate,
      @Semantics.amount.currencyCode: 'Currcode'
      price,
      _Airline(pAirlineCode : $parameters.pAirlineCode).Currcode
}
where
  Flights.carrid = $parameters.pAirlineCode;
