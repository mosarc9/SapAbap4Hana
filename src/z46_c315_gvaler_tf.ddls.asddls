@EndUserText.label: 'Table Function - For CDS'
define table function Z46_C315_GVALER_TF
  with parameters
    @Environment.systemField: #CLIENT
    p_clnt   : abap.clnt,
    p_carrid : s_carr_id
returns
{
  client   : abap.clnt;
  carrid   : s_carr_id;
  carrname : s_carrname;
  connid   : s_conn_id;
  cityfrom : s_from_cit;
  cityto   : s_to_city;
}
implemented by method
  zcl_tf_c315_gvaler=>get_flights_for_cds;
