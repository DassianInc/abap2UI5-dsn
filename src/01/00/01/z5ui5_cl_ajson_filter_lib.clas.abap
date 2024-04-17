class z5ui5_cl_ajson_filter_lib definition
  public
  final
  create public .

  public section.

    class-methods create_empty_filter
      returning
        value(ri_filter) type ref to z5ui5_if_ajson_filter
      raising
        z5ui5_cx_ajson_error .
    class-methods create_path_filter
      importing
        !it_skip_paths type string_table optional
        !iv_skip_paths type string optional
        !iv_pattern_search type abap_bool default abap_false
      returning
        value(ri_filter) type ref to z5ui5_if_ajson_filter
      raising
        z5ui5_cx_ajson_error .
    class-methods create_and_filter
      importing
        !it_filters type z5ui5_if_ajson_filter=>ty_filter_tab
      returning
        value(ri_filter) type ref to z5ui5_if_ajson_filter
      raising
        z5ui5_cx_ajson_error .

  protected section.
  private section.
ENDCLASS.



CLASS z5ui5_cl_ajson_filter_lib IMPLEMENTATION.


  method create_and_filter.
    create object ri_filter type lcl_and_filter
      exporting
        it_filters = it_filters.
  endmethod.


  method create_empty_filter.
    create object ri_filter type lcl_empty_filter.
  endmethod.


  method create_path_filter.
    create object ri_filter type lcl_paths_filter
      exporting
        iv_pattern_search = iv_pattern_search
        it_skip_paths = it_skip_paths
        iv_skip_paths = iv_skip_paths.
  endmethod.
ENDCLASS.
