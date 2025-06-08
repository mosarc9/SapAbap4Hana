@AbapCatalog.sqlViewAppendName: 'Z13C315'
@EndUserText.label: 'Extend'
extend view z07_c315_gvaler with z10_c315_gvaler
  association [0..1] to scarr as _CarrName on _CarrName.carrid = sflight.carrid

{
  sflight.planetype,
  _CarrName.carrname,
  _CarrName.currcode,
  _CarrName
}
