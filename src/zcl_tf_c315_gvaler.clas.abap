class zcl_tf_c315_gvaler definition
  public
  final
  create public .

  public section.
    interfaces if_amdp_marker_hdb.

    class-methods get_flights for table function Z44_C315_GVALER_TF.

    class-methods get_range_flights for table function Z45_C315_GVALER_TF.

    class-methods get_flights_for_cds for table function Z46_C315_GVALER_TF.

  protected section.
  private section.
endclass.



class zcl_tf_c315_gvaler implementation.

  method get_flights by database function for hdb
                     language sqlscript
                     options read-only
                     using scarr
                           spfli.

  return select sc.mandt as client,
                sc.carrid,
                sc.carrname,
                sp.connid,
                sp.cityfrom,
                sp.cityto
            from scarr as sc
            inner join spfli as sp
                    on sc.mandt = sp.mandt
                   and sc.carrid = sp.carrid
            where sp.mandt = :p_clnt
              and sp.carrid = :p_carrid
           order by sp.connid desc;

  endmethod.

  method get_range_flights by database function for hdb
                           language sqlscript
                           options read-only
                           using sflight.

     table_filters = apply_filter ( sflight, :sel_opt );

     return select so.mandt,
                   so.carrid,
                   so.connid,
                   so.fldate,
                   so.price
                   from :table_filters as so;

  endmethod.

  method get_flights_for_cds by database function for hdb
                             language sqlscript
                             options read-only
                             using scarr
                                   spfli.

  return select sc.mandt as client,
                sc.carrid,
                sc.carrname,
                sp.connid,
                sp.cityfrom,
                sp.cityto
            from scarr as sc
            inner join spfli as sp
                    on sc.mandt = sp.mandt
                   and sc.carrid = sp.carrid
            where sp.mandt = :p_clnt
              and sp.carrid = :p_carrid
           order by sp.connid desc;

  endmethod.

endclass.
