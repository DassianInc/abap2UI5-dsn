CLASS ltcl_test_client DEFINITION FINAL
  FOR TESTING RISK LEVEL HARMLESS DURATION LONG.

  PRIVATE SECTION.
    METHODS first_test FOR TESTING RAISING cx_static_check.
ENDCLASS.

CLASS /dsn/2ui5_cl_core_client DEFINITION LOCAL FRIENDS ltcl_test_client.

CLASS ltcl_test_client IMPLEMENTATION.
  METHOD first_test.

    DATA(lo_http) = NEW /dsn/2ui5_cl_core_handler( `` ).
    DATA(lo_action) = NEW /dsn/2ui5_cl_core_action( lo_http ).
    DATA(lo_client) = NEW /dsn/2ui5_cl_core_client( lo_action ) ##NEEDED.

  ENDMETHOD.
ENDCLASS.