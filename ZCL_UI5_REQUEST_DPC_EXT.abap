class ZCL_UI5_REQUEST_DPC_EXT definition
  public
  inheriting from ZCL_UI5_REQUEST_DPC
  create public .

public section.

  methods /IWBEP/IF_MGW_APPL_SRV_RUNTIME~CREATE_DEEP_ENTITY
    redefinition .
  methods /IWBEP/IF_MGW_APPL_SRV_RUNTIME~CREATE_STREAM
    redefinition .
  methods /IWBEP/IF_MGW_APPL_SRV_RUNTIME~EXECUTE_ACTION
    redefinition .
  methods /IWBEP/IF_MGW_APPL_SRV_RUNTIME~GET_STREAM
    redefinition .
protected section.

  methods AREASET_GET_ENTITYSET
    redefinition .
  methods AUTHORFILTERSET_GET_ENTITY
    redefinition .
  methods AUTHORFILTERSET_GET_ENTITYSET
    redefinition .
  methods AUTHORSET_GET_ENTITY
    redefinition .
  methods AWARDSSET_GET_ENTITYSET
    redefinition .
  methods AWARDTYPESET_GET_ENTITYSET
    redefinition .
  methods BODY182NSET_GET_ENTITY
    redefinition .
  methods BODY2NDFLSET_GET_ENTITY
    redefinition .
  methods BODYCHANGEAWARDS_GET_ENTITY
    redefinition .
  methods BODYCHANGEDATEBI_GET_ENTITY
    redefinition .
  methods BODYCHANGEEDUCAT_GET_ENTITY
    redefinition .
  methods BODYCHANGEFAMI01_GET_ENTITY
    redefinition .
  methods BODYCHANGEFAMI02_GET_ENTITY
    redefinition .
  methods BODYCHANGEFAMI02_GET_ENTITYSET
    redefinition .
  methods BODYCHANGEFAMILY_GET_ENTITY
    redefinition .
  methods BODYCHANGEFIOSET_GET_ENTITY
    redefinition .
  methods BODYCHANGENATION_GET_ENTITY
    redefinition .
  methods BODYCHANGEPARORG_GET_ENTITY
    redefinition .
  methods BODYCHANGEPASSPO_GET_ENTITY
    redefinition .
  methods BODYCHANGEPROJEC_GET_ENTITY
    redefinition .
  methods BODYCHANGEPROJEC_GET_ENTITYSET
    redefinition .
  methods BODYCHANGEQUALIF_GET_ENTITY
    redefinition .
  methods BODYCHANGERESIDE_GET_ENTITY
    redefinition .
  methods BODYCHANGEWORKIN_GET_ENTITY
    redefinition .
  methods BODYCHILDLEAVESE_GET_ENTITY
    redefinition .
  methods BODYPAYDTSET_GET_ENTITY
    redefinition .
  methods BODYRESTRICTFAMI_GET_ENTITY
    redefinition .
  methods BODYWORKPLACESET_GET_ENTITY
    redefinition .
  methods CHILDSET_GET_ENTITYSET
    redefinition .
  methods CITYSET_GET_ENTITYSET
    redefinition .
  methods COUNTRYSET_GET_ENTITYSET
    redefinition .
  methods DISTRICTSET_GET_ENTITYSET
    redefinition .
  methods EDUCATIONDOCTYPE_GET_ENTITYSET
    redefinition .
  methods EDUCATIONFORMSET_GET_ENTITYSET
    redefinition .
  methods EDUCATIONSET_GET_ENTITYSET
    redefinition .
  methods EDUSKILLSET_GET_ENTITYSET
    redefinition .
  methods FILESET_DELETE_ENTITY
    redefinition .
  methods FILESET_GET_ENTITY
    redefinition .
  methods FILESET_GET_ENTITYSET
    redefinition .
  methods HEADSET_DELETE_ENTITY
    redefinition .
  methods HEADSET_GET_ENTITY
    redefinition .
  methods HEADSET_GET_ENTITYSET
    redefinition .
  methods HISTORYSET_GET_ENTITYSET
    redefinition .
  methods HOUSESET_GET_ENTITYSET
    redefinition .
  methods OWNERFILTERSET_GET_ENTITY
    redefinition .
  methods OWNERFILTERSET_GET_ENTITYSET
    redefinition .
  methods PERNRFILTERSET_GET_ENTITYSET
    redefinition .
  methods QUALIFICATIONGRO_GET_ENTITYSET
    redefinition .
  methods QUALIFICATIONITE_GET_ENTITYSET
    redefinition .
  methods REGIONSET_GET_ENTITYSET
    redefinition .
  methods RELATIONSET_GET_ENTITYSET
    redefinition .
  methods RELATIVE2SET_GET_ENTITYSET
    redefinition .
  methods RELATIVESET_GET_ENTITYSET
    redefinition .
  methods REQSUBTYPESET_GET_ENTITY
    redefinition .
  methods REQSUBTYPESET_GET_ENTITYSET
    redefinition .
  methods REQTYPESET_GET_ENTITY
    redefinition .
  methods REQTYPESET_GET_ENTITYSET
    redefinition .
  methods SCALESET_GET_ENTITYSET
    redefinition .
  methods SOCIALPOSITIONSE_GET_ENTITYSET
    redefinition .
  methods STATUSSET_GET_ENTITY
    redefinition .
  methods STATUSSET_GET_ENTITYSET
    redefinition .
  methods STREETSET_GET_ENTITYSET
    redefinition .
  methods SYSTEMSET_GET_ENTITY
    redefinition .
  methods SYSTEMSET_GET_ENTITYSET
    redefinition .
  methods VARIANTS_2NDFLSE_GET_ENTITYSET
    redefinition .
  methods BUKRSFILTERSET_GET_ENTITYSET
    redefinition .
private section.

  methods FILL_SHLP_SELOPT
    importing
      !IT_FILTER_SELOPT type /IWBEP/T_MGW_SELECT_OPTION
      !IV_PROPERTY type STRING
      !IV_SHLPNAME type SHLPNAME
      !IV_SHLPFIELD type SHLPFIELD
    changing
      !CT_SHLP_SELOPT type DDSHSELOPS .
  methods HEADSET_FILL_ENTITYSET
    importing
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITYSET
    changing
      !CT_ENTITYSET type ZCL_UI5_REQUEST_MPC=>TT_HEAD
    exceptions
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods HEADSET_GET_FOR_APP_MY_HRTASK
    importing
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITYSET
    changing
      !CT_ENTITYSET type ZCL_UI5_REQUEST_MPC=>TT_HEAD
    exceptions
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods HEADSET_GET_FOR_APP_MY_REQUEST
    importing
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITYSET
    changing
      !CT_ENTITYSET type ZCL_UI5_REQUEST_MPC=>TT_HEAD
    exceptions
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods HEADSET_CREATE_DEEP_ENTITY
    changing
      !CS_ENTITY type ZCL_UI5_REQUEST_MPC=>TS_HEAD
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods HEADSET_FILL_DEEP_ENTITY
    exporting
      !ES_HEAD type ZHRT_UI5_REQUEST
      !ER_BODY type ref to DATA
      !EV_TABNAME type ZHRE_UI5_REQ_TABNAME
      !ER_BODY_TAB type ref to DATA
    changing
      !CS_ENTITY type ZCL_UI5_REQUEST_MPC=>TS_HEAD
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods HEADSET_UPDATE_DEEP_ENTITY
    changing
      !CS_ENTITY type ZCL_UI5_REQUEST_MPC=>TS_HEAD
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods EXECUTE_REOPEN
    importing
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_FUNC_IMPORT
    exporting
      !ER_DATA type ref to DATA
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods EXECUTE_CHECKADDRESS
    importing
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_FUNC_IMPORT
    exporting
      !ER_DATA type ref to DATA
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods EXECUTE_GETCLOSECOMMENT
    importing
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_FUNC_IMPORT
    exporting
      !ER_DATA type ref to DATA
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods EXECUTE_GETREJECTCOMMENT
    importing
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_FUNC_IMPORT
    exporting
      !ER_DATA type ref to DATA
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods EXECUTE_CLOSE
    importing
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_FUNC_IMPORT
    exporting
      !ER_DATA type ref to DATA
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods EXECUTE_COMPLETE
    importing
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_FUNC_IMPORT
    exporting
      !ER_DATA type ref to DATA
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods EXECUTE_REJECT
    importing
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_FUNC_IMPORT
    exporting
      !ER_DATA type ref to DATA
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods EXECUTE_TAKE
    importing
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_FUNC_IMPORT
    exporting
      !ER_DATA type ref to DATA
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods GET_REPOSITORY
    returning
      value(RV_REPOSITORY) type SAEARCHIVI
    exceptions
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods FILL_HEAD_POST_UPD
    changing
      !CH_HEAD type ZCL_UI5_REQUEST_MPC=>TS_HEAD .
ENDCLASS.



CLASS ZCL_UI5_REQUEST_DPC_EXT IMPLEMENTATION.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_UI5_REQUEST_DPC_EXT->/IWBEP/IF_MGW_APPL_SRV_RUNTIME~CREATE_DEEP_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING(optional)
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING(optional)
* | [--->] IV_SOURCE_NAME                 TYPE        STRING(optional)
* | [--->] IO_DATA_PROVIDER               TYPE REF TO /IWBEP/IF_MGW_ENTRY_PROVIDER
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH(optional)
* | [--->] IO_EXPAND                      TYPE REF TO /IWBEP/IF_MGW_ODATA_EXPAND
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_C(optional)
* | [<---] ER_DEEP_ENTITY                 TYPE REF TO DATA
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD /iwbep/if_mgw_appl_srv_runtime~create_deep_entity.
  CONSTANTS c_open TYPE zhre_ui5_req_status VALUE 10.

  DATA: ls_entity           TYPE zcl_ui5_request_mpc=>ts_head,
        ls_old_head_request TYPE zhrt_ui5_request,
        ls_new_head_request TYPE zhrt_ui5_request,
        lv_pernr            TYPE pernr_d,
        lt_p0001            TYPE p0001_tab,
        lv_chngind          TYPE cdchngind.

  CASE io_tech_request_context->get_entity_set_name( ).
    WHEN 'HeadSet'.
      io_data_provider->read_entry_data( IMPORTING es_data = ls_entity ).

      IF ls_entity-numb IS INITIAL.
        headset_create_deep_entity( CHANGING cs_entity = ls_entity ).
      ELSE.
        headset_update_deep_entity( CHANGING cs_entity = ls_entity ).
      ENDIF.

      copy_data_to_ref( EXPORTING is_data = ls_entity
                        CHANGING cr_data = er_deep_entity ).
    WHEN OTHERS.
      super->/iwbep/if_mgw_appl_srv_runtime~create_deep_entity(
        EXPORTING
          iv_entity_name          = iv_entity_name
          iv_entity_set_name      = iv_entity_set_name
          iv_source_name          = iv_source_name
          io_data_provider        = io_data_provider
          it_key_tab              = it_key_tab
          it_navigation_path      = it_navigation_path
          io_expand               = io_expand
          io_tech_request_context = io_tech_request_context
        IMPORTING
          er_deep_entity          = er_deep_entity ).
  ENDCASE.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_UI5_REQUEST_DPC_EXT->/IWBEP/IF_MGW_APPL_SRV_RUNTIME~CREATE_STREAM
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING(optional)
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING(optional)
* | [--->] IV_SOURCE_NAME                 TYPE        STRING(optional)
* | [--->] IS_MEDIA_RESOURCE              TYPE        TY_S_MEDIA_RESOURCE
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH(optional)
* | [--->] IV_SLUG                        TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_C(optional)
* | [<---] ER_ENTITY                      TYPE REF TO DATA
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD /iwbep/if_mgw_appl_srv_runtime~create_stream.
  DATA: lt_binary TYPE TABLE OF x,
        lv_length TYPE i,
        ls_entity TYPE zhrt_ui5_reqfile.

  CALL FUNCTION 'SCMS_XSTRING_TO_BINARY'
    EXPORTING
      buffer        = is_media_resource-value
    IMPORTING
      output_length = lv_length
    TABLES
      binary_tab    = lt_binary.

  DATA: ls_attachhlp TYPE zcl_ui5_request_mpc=>tt_file.

  CALL FUNCTION 'SCMS_HTTP_CREATE'
    EXPORTING
      crep_id               = get_repository( )
      comp_id               = 'request'
      mimetype              = CONV w3conttype( is_media_resource-mime_type )
      length                = lv_length
    IMPORTING
      doc_id_out            = ls_entity-file_id
    TABLES
      data                  = lt_binary
    EXCEPTIONS  "TMP
      bad_request           = 1
      unauthorized          = 2
      forbidden             = 3
      conflict              = 4
      internal_server_error = 5
      error_http            = 6
      error_url             = 7
      error_signature       = 8
      error_parameter       = 9
      blocked_by_policy     = 10
      OTHERS                = 11.
  CHECK sy-subrc = 0. "TMP

*  ls_entity-filename = iv_slug.
  SPLIT iv_slug AT '/' INTO ls_entity-numb ls_entity-filename.
  MODIFY zhrt_ui5_reqfile FROM ls_entity.

  copy_data_to_ref( EXPORTING is_data = ls_entity
                    CHANGING cr_data = er_entity ).


*  DATA ls_file TYPE zhrt_ui5_reqfile.
*
*  MOVE-CORRESPONDING is_media_resource TO ls_file.
*
**    GET TIME STAMP FIELD ls_file-timestamp.
**
**    SPLIT iv_slug AT '/' INTO ls_file-carrid ls_file-filename.
**
**    MODIFY zavk_file_tab FROM ls_file.
**    copy_data_to_ref(
**      EXPORTING
**        is_data = ls_file
**      CHANGING
**        cr_data =  er_entity ).
*
*  DATA: lv_docid(32)    TYPE c,
*        lv_length       TYPE i,
*        lv_comp_id(20)  TYPE c, "/srmnxp/
*        lv_body_data    TYPE xstring,
*        lt_body_data    TYPE TABLE OF x,
*        lv_content_type TYPE char250. "/srmnxp/
*
*  lv_comp_id = 'Мой скан.PNG'. "– имя файла
*
*  DATA ld_buffer TYPE xstring.
*
**  DATA: lo_ce_out TYPE REF TO cl_abap_conv_out_ce,
**        lo_ce_in  TYPE REF TO cl_abap_conv_in_ce.
*
*  " Если имя ld_name на русском языке - переводим в транслит
*  TRY.
*
*      cl_abap_conv_out_ce=>create( encoding = '1146' )->convert( EXPORTING data   = lv_comp_id
*                                                                 IMPORTING buffer = ld_buffer ).
*
*      cl_abap_conv_in_ce=>create( )->convert( EXPORTING input = ld_buffer
*                                              IMPORTING data  = lv_comp_id ).
*    CATCH cx_sy_conversion_codepage.
*    CATCH cx_parameter_invalid_type.
*    CATCH cx_parameter_invalid_range.
*    CATCH cx_sy_codepage_converter_init .
*
*  ENDTRY.
*
*  TRY.
*
*      cl_abap_conv_out_ce=>create( encoding = '1146' )->convert( EXPORTING data   = lv_comp_id
*                                                                 IMPORTING buffer = ld_buffer ).
*
*      cl_abap_conv_in_ce=>create( )->convert( EXPORTING input = ld_buffer
*                                              IMPORTING data  = lv_comp_id ).
*    CATCH cx_sy_conversion_codepage.
*    CATCH         cx_parameter_invalid_type.
*    CATCH         cx_parameter_invalid_range.
*    CATCH         cx_sy_codepage_converter_init .
*
*  ENDTRY.
*
*  lv_body_data = is_media_resource-value.
*  lv_content_type = CONV #( is_media_resource-mime_type ).
*  lv_length = xstrlen( lv_body_data ).
*  " SCMS_CREATE only takes binary as input so convert
*  CALL FUNCTION 'SCMS_XSTRING_TO_BINARY'
*    EXPORTING
*      buffer        = lv_body_data
*    IMPORTING
*      output_length = lv_length
*    TABLES
*      binary_tab    = lt_body_data.
*
*  CALL FUNCTION 'SCMS_HTTP_CREATE'
*    EXPORTING
**     mandt                 = conv #( sy-mandt )
*      crep_id               = 'ZHR_TEST'
**     DOC_ID                = 'REQUEST'
*      comp_id               = lv_comp_id
**     mimetype              = conv #( lv_content_type )
*      length                = lv_length
**     signature             = conv #( abap_false
**     doc_prot              = conv #( 'cud' )
*    IMPORTING
*      doc_id_out            = lv_docid
*    TABLES
*      data                  = lt_body_data
*    EXCEPTIONS
*      bad_request           = 1
*      unauthorized          = 2
*      forbidden             = 3
*      conflict              = 4
*      internal_server_error = 5
*      error_http            = 6
*      error_url             = 7
*      error_signature       = 8
*      error_parameter       = 9
*      OTHERS                = 10.
*  IF sy-subrc = 0.
*
*  ENDIF.
*
*  ls_file-numb = 0.
*  ls_file-mimetype = 'image/jpeg'.
*  ls_file-value = is_media_resource-value.
*  INSERT zhrt_ui5_reqfile FROM ls_file.
*
*  copy_data_to_ref( EXPORTING is_data = ls_file
*                    CHANGING cr_data = er_entity ).

*  DATA ls_file TYPE zhrt_ui5_reqfile.
*
*  MOVE-CORRESPONDING is_media_resource TO ls_file.
**    GET TIME STAMP FIELD ls_file-ts.
*  ls_file-numb = iv_slug.
**    SPLIT iv_slug AT '/' INTO ls_file-carrid ls_file-filename.
*  MODIFY zhrt_ui5_reqfile FROM ls_file.
*
*  TRANSLATE p_str TO CODE PAGE '1146'. "to translit
*
*  copy_data_to_ref( EXPORTING is_data = ls_file
*                    CHANGING cr_data = er_entity ).







**TRY.
*CALL METHOD SUPER->/IWBEP/IF_MGW_APPL_SRV_RUNTIME~CREATE_STREAM
*  EXPORTING
**    iv_entity_name          =
**    iv_entity_set_name      =
**    iv_source_name          =
*    IS_MEDIA_RESOURCE       =
**    it_key_tab              =
**    it_navigation_path      =
*    IV_SLUG                 =
**    io_tech_request_context =
**  IMPORTING
**    er_entity               =
*    .
** CATCH /iwbep/cx_mgw_busi_exception .
** CATCH /iwbep/cx_mgw_tech_exception .
**ENDTRY.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_UI5_REQUEST_DPC_EXT->/IWBEP/IF_MGW_APPL_SRV_RUNTIME~EXECUTE_ACTION
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ACTION_NAME                 TYPE        STRING(optional)
* | [--->] IT_PARAMETER                   TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_FUNC_IMPORT(optional)
* | [<---] ER_DATA                        TYPE REF TO DATA
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD /iwbep/if_mgw_appl_srv_runtime~execute_action.
  CASE io_tech_request_context->get_function_import_name( ).
    WHEN 'checkAddress'.
      execute_checkaddress(
        EXPORTING
          io_tech_request_context = io_tech_request_context
        IMPORTING
          er_data                 = er_data ).
    WHEN 'take'.
      execute_take(
        EXPORTING
          io_tech_request_context = io_tech_request_context
        IMPORTING
          er_data                 = er_data ).
    WHEN 'complete'.
      execute_complete(
        EXPORTING
          io_tech_request_context = io_tech_request_context
        IMPORTING
          er_data                 = er_data ).
    WHEN 'getRejectComment'.
      execute_getrejectcomment(
        EXPORTING
          io_tech_request_context = io_tech_request_context
        IMPORTING
          er_data                 = er_data ).
    WHEN 'reject'.
      execute_reject(
        EXPORTING
          io_tech_request_context = io_tech_request_context
        IMPORTING
          er_data                 = er_data ).
    WHEN 'getCloseComment'.
      execute_getclosecomment(
        EXPORTING
          io_tech_request_context = io_tech_request_context
        IMPORTING
          er_data                 = er_data ).
    WHEN 'close'.
      execute_close(
        EXPORTING
          io_tech_request_context = io_tech_request_context
        IMPORTING
          er_data                 = er_data ).
    WHEN 'reopen'.
      execute_reopen(
        EXPORTING
          io_tech_request_context = io_tech_request_context
        IMPORTING
          er_data                 = er_data ).
    WHEN OTHERS.
      super->/iwbep/if_mgw_appl_srv_runtime~execute_action(
        EXPORTING
          iv_action_name          = iv_action_name
          it_parameter            = it_parameter
          io_tech_request_context = io_tech_request_context
        IMPORTING
          er_data                 = er_data ).
  ENDCASE.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_UI5_REQUEST_DPC_EXT->/IWBEP/IF_MGW_APPL_SRV_RUNTIME~GET_STREAM
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING(optional)
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING(optional)
* | [--->] IV_SOURCE_NAME                 TYPE        STRING(optional)
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [<---] ER_STREAM                      TYPE REF TO DATA
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD /iwbep/if_mgw_appl_srv_runtime~get_stream.
  DATA: lt_binary   TYPE TABLE OF x,
        lv_length   TYPE i,
        lv_mimetype TYPE w3conttype,
        ls_entity   TYPE zhrt_ui5_reqfile.

  DATA ls_stream TYPE ty_s_media_resource.

  CASE io_tech_request_context->get_entity_set_name( ).
    WHEN 'FileSet'.
      DATA(lt_key) = io_tech_request_context->get_keys( ).
      DATA(lv_numb) = VALUE #( lt_key[ name = 'NUMB' ]-value OPTIONAL ).
      DATA(lv_filename) = VALUE #( lt_key[ name = 'FILENAME' ]-value OPTIONAL ).

      SELECT SINGLE *
        FROM zhrt_ui5_reqfile
        INTO @DATA(ls_file)
          WHERE numb = @lv_numb
            AND filename = @lv_filename.

      CALL FUNCTION 'SCMS_HTTP_GET'
        EXPORTING
*         MANDT                 = SY-MANDT
          crep_id               = get_repository( )
          doc_id                = ls_file-file_id
          comp_id               = 'request'
*         OFFSET                = 0
*         LENGTH                = -1
*         SIGNATURE             = 'X'
*         ACCESSMODE            = 'r'
*         SECURITY              = ' '
*         BLANKSTOCRLF          = ' '
*         NO_CACHE              = ' '
*         CREPHTTP              =
        IMPORTING
          length                = lv_length
          mimetype              = lv_mimetype
*         CHARSET               =
*         VERSION               =
*         FROM_CACHE            =
*         DOC_PROT              =
        TABLES
          data                  = lt_binary
        EXCEPTIONS "TMP
          bad_request           = 1
          unauthorized          = 2
          not_found             = 3
          conflict              = 4
          internal_server_error = 5
          error_http            = 6
          error_url             = 7
          error_signature       = 8
          OTHERS                = 9.
      IF sy-subrc <> 0.
* Implement suitable error handling here
      ENDIF.

     ls_stream-mime_type = lv_mimetype.

      CALL FUNCTION 'SCMS_BINARY_TO_XSTRING'
        EXPORTING
          input_length = lv_length
*         FIRST_LINE   = 0
*         LAST_LINE    = 0
        IMPORTING
          buffer       = ls_stream-value
        TABLES
          binary_tab   = lt_binary
        EXCEPTIONS
          failed       = 1
          OTHERS       = 2.

      copy_data_to_ref( EXPORTING is_data = ls_stream
                        CHANGING cr_data = er_stream ).

*      IF sy-subrc = 0.
*        ls_stream-mime_type = ls_file-mimetype.
*        ls_stream-value = ls_file-value.
*        copy_data_to_ref( EXPORTING is_data = ls_stream
*                          CHANGING cr_data = er_stream ).
*
*      ENDIF.
    WHEN OTHERS.
**TRY.
*CALL METHOD SUPER->/IWBEP/IF_MGW_APPL_SRV_RUNTIME~GET_STREAM
**  EXPORTING
**    iv_entity_name          =
**    iv_entity_set_name      =
**    iv_source_name          =
**    it_key_tab              =
**    it_navigation_path      =
**    io_tech_request_context =
**  IMPORTING
**    er_stream               =
**    es_response_context     =
*    .
** CATCH /iwbep/cx_mgw_busi_exception .
** CATCH /iwbep/cx_mgw_tech_exception .
**ENDTRY.
  ENDCASE.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->AREASET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_AREA
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD areaset_get_entityset.
  CONSTANTS c_area_shlpname TYPE shlpname VALUE 'HRPADRU_COUNTY'.

  DATA: ls_shlp   TYPE shlp_descr,
        lt_return TYPE TABLE OF ddshretval.

  DATA(lt_filter_selopt) = io_tech_request_context->get_filter( )->get_filter_select_options( ).

  CALL FUNCTION 'F4IF_GET_SHLP_DESCR'
    EXPORTING
      shlpname = c_area_shlpname
    IMPORTING
      shlp     = ls_shlp.

  fill_shlp_selopt(
    EXPORTING
      it_filter_selopt = lt_filter_selopt
      iv_property      = 'COUNTRYCODE'
      iv_shlpname      = c_area_shlpname
      iv_shlpfield     = 'KLAND1'
    CHANGING
      ct_shlp_selopt   = ls_shlp-selopt ).

  fill_shlp_selopt(
    EXPORTING
      it_filter_selopt = lt_filter_selopt
      iv_property      = 'REGIONCODE'
      iv_shlpname      = c_area_shlpname
      iv_shlpfield     = 'KREGIO'
    CHANGING
      ct_shlp_selopt   = ls_shlp-selopt ).

  CALL FUNCTION 'F4IF_SELECT_VALUES'
    EXPORTING
      shlp           = ls_shlp
*     SORT           = ' '
      call_shlp_exit = abap_true
    TABLES
      return_tab     = lt_return.

  LOOP AT lt_return ASSIGNING FIELD-SYMBOL(<ls_return>) GROUP BY ( key = <ls_return>-recordpos ).
    APPEND INITIAL LINE TO et_entityset ASSIGNING FIELD-SYMBOL(<ls_entity>).
    <ls_entity>-countrycode = VALUE #( lt_filter_selopt[ property = 'COUNTRYCODE' ]-select_options[ 1 ]-low OPTIONAL ).

    LOOP AT GROUP <ls_return> ASSIGNING FIELD-SYMBOL(<ls_member>).
      CASE <ls_member>-fieldname.
        WHEN 'KCOUNC'.
          <ls_entity>-areacode = <ls_member>-fieldval.
        WHEN 'KLAND1'.
          <ls_entity>-countrycode = <ls_member>-fieldval.
        WHEN 'KREGIO'.
          <ls_entity>-regioncode = <ls_member>-fieldval.
        WHEN 'KSOCR_COUNC'.
          <ls_entity>-shortname = <ls_member>-fieldval.
        WHEN 'BEZEI'.
          <ls_entity>-formalname = <ls_member>-fieldval.
        WHEN OTHERS.
          CONTINUE.
      ENDCASE.
    ENDLOOP.
  ENDLOOP.
  SORT et_entityset BY formalname ASCENDING.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->AUTHORFILTERSET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_UI5_REQUEST_MPC=>TS_AUTHORFILTER
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method AUTHORFILTERSET_GET_ENTITY.
**TRY.
*CALL METHOD SUPER->AUTHORFILTERSET_GET_ENTITY
*  EXPORTING
*    IV_ENTITY_NAME          =
*    IV_ENTITY_SET_NAME      =
*    IV_SOURCE_NAME          =
*    IT_KEY_TAB              =
**    io_request_object       =
**    io_tech_request_context =
*    IT_NAVIGATION_PATH      =
**  IMPORTING
**    er_entity               =
**    es_response_context     =
*    .
** CATCH /iwbep/cx_mgw_busi_exception .
** CATCH /iwbep/cx_mgw_tech_exception .
**ENDTRY.
  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->AUTHORFILTERSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_AUTHORFILTER
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method AUTHORFILTERSET_GET_ENTITYSET.
     DATA: lt_author TYPE TABLE OF zhrt_ui5_authorfilter,
          lr_usrid TYPE RANGE OF sysid.

    SELECT DISTINCT author FROM zhrt_ui5_request
    INTO TABLE lt_author WHERE author <> ''.

    LOOP AT lt_author ASSIGNING FIELD-SYMBOL(<r_author>).
      APPEND VALUE #( sign   = 'I'
                      option = 'EQ'
                      low    = <r_author>-author ) TO lr_usrid.
    ENDLOOP.


    SELECT usrid AS bname,
           nachn && @space && inits AS name_text "usrname
      FROM pa0105 JOIN pa0002 ON pa0105~pernr = pa0002~pernr
      INTO TABLE @DATA(lt_uname)
        WHERE usrid IN @lr_usrid
          AND pa0105~begda <= @sy-datum
          AND pa0105~endda >= @sy-datum
          AND pa0002~begda <= @sy-datum
          AND pa0002~endda >= @sy-datum.

  LOOP AT lt_uname ASSIGNING FIELD-SYMBOL(<r_uname>).
    APPEND INITIAL LINE TO et_entityset ASSIGNING FIELD-SYMBOL(<entity>).
    <entity>-author = <r_uname>-bname.
    <entity>-authortext = <r_uname>-name_text.
  ENDLOOP.
  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->AUTHORSET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_UI5_REQUEST_MPC=>TS_AUTHOR
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD authorset_get_entity.
  DATA lo_bipernr TYPE REF TO zhr_objbif_pernr.

  er_entity-author = VALUE #( it_key_tab[ name = 'Login' ]-value OPTIONAL ).

  CALL FUNCTION 'CRIF_GET_EMPLOYEE_FOR_USER'
    EXPORTING
      user_name      = er_entity-author
    IMPORTING
      employeenumber = er_entity-pernr
    EXCEPTIONS
      OTHERS         = 1.
  IF sy-subrc <> 0.
    RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
      EXPORTING
        textid = VALUE #( msgid = 'ZHR_UI5'
                          msgno = 001
                          attr1 = er_entity-author ).
  ENDIF.

  CALL FUNCTION 'ZHR_EBDS_OBJBIF_GET'
    EXPORTING
      otype  = 'P'
      objid  = er_entity-pernr
      datum  = sy-datum
    CHANGING
      result = lo_bipernr
    EXCEPTIONS
      OTHERS = 1.

  TRY.
      lo_bipernr->get_orgass(
        EXPORTING
          adatum   = sy-datum
        IMPORTING
          resorgeh = DATA(lo_biorgeh)
          resplans = DATA(lo_biplans) ).

      er_entity-fullname = lo_bipernr->get_name( anoauth = abap_true ).
      er_entity-plans    = lo_biplans->get_name( anoauth = abap_true ).
      er_entity-orgeh    = lo_biorgeh->get_name( anoauth = abap_true ).
    CATCH zcx_objbif_objec
          cx_sy_ref_is_initial.
      RETURN.
  ENDTRY.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->AWARDSSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_AWARDS
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method AWARDSSET_GET_ENTITYSET.
  SELECT AWADG,AGTXT
    FROM T5F99A5T
    INTO CORRESPONDING FIELDS OF TABLE @et_entityset
    WHERE SPRSL = @sy-langu.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->AWARDTYPESET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_AWARDTYPE
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method AWARDTYPESET_GET_ENTITYSET.
*Get filter
  DATA(lt_filter) = io_tech_request_context->get_filter( )->get_filter_select_options( ).
  DATA(lr_awadg) = VALUE #( lt_filter[ property = 'AWADG' ]-select_options OPTIONAL ).
  APPEND VALUE #( sign = 'I' option = 'EQ' low = '*' ) TO lr_awadg.
*Get data
  SELECT  AWADT,AWTXT,AWADG
  FROM T5F99A0T
  INTO CORRESPONDING FIELDS OF TABLE @et_entityset
  WHERE AWADG IN @lr_awadg
    AND SPRSL = @sy-langu.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->BODY182NSET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_UI5_REQUEST_MPC=>TS_BODY182N
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD body182nset_get_entity.
  DATA(lv_numb) = VALUE #( it_key_tab[ name = 'Numb' ]-value OPTIONAL ).

  SELECT SINGLE *
    FROM zhrt_182n
    INTO CORRESPONDING FIELDS OF @er_entity
      WHERE numb = @lv_numb.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->BODY2NDFLSET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_UI5_REQUEST_MPC=>TS_BODY2NDFL
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD body2ndflset_get_entity.
  DATA(lv_numb) = VALUE #( it_key_tab[ name = 'Numb' ]-value OPTIONAL ).

  SELECT SINGLE *
    FROM zhrt_2ndfl
    INTO CORRESPONDING FIELDS OF @er_entity
      WHERE numb = @lv_numb.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->BODYCHANGEAWARDS_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_UI5_REQUEST_MPC=>TS_BODYCHANGEAWARD
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method BODYCHANGEAWARDS_GET_ENTITY.
  DATA(lv_numb) = VALUE #( it_key_tab[ name = 'Numb' ]-value OPTIONAL ).

  SELECT SINGLE *
    FROM ZHRT_CHNG_AWARD
    INTO CORRESPONDING FIELDS OF @er_entity
      WHERE numb = @lv_numb.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->BODYCHANGEDATEBI_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_UI5_REQUEST_MPC=>TS_BODYCHANGEDATEBIRTH
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method BODYCHANGEDATEBI_GET_ENTITY.
  DATA(lv_numb) = VALUE #( it_key_tab[ name = 'Numb' ]-value OPTIONAL ).

  SELECT SINGLE *
    FROM ZHRT_CHNG_GBDAT
    INTO CORRESPONDING FIELDS OF @er_entity
      WHERE numb = @lv_numb.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->BODYCHANGEEDUCAT_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_UI5_REQUEST_MPC=>TS_BODYCHANGEEDUCATION
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method BODYCHANGEEDUCAT_GET_ENTITY.
  DATA(lv_numb) = VALUE #( it_key_tab[ name = 'Numb' ]-value OPTIONAL ).

  SELECT SINGLE *
    FROM ZHRT_CHNG_EDUCAT
    INTO CORRESPONDING FIELDS OF @er_entity
      WHERE numb = @lv_numb.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->BODYCHANGEFAMI01_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_UI5_REQUEST_MPC=>TS_BODYCHANGEFAMILYMEMBER
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD bodychangefami01_get_entity.
  DATA(lv_numb) = VALUE #( it_key_tab[ name = 'Numb' ]-value OPTIONAL ).

  SELECT SINGLE *
    FROM zhrt_chng_fam_md
    INTO CORRESPONDING FIELDS OF @er_entity
      WHERE numb = @lv_numb.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->BODYCHANGEFAMI02_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_UI5_REQUEST_MPC=>TS_BODYCHANGEFAMILYWORK
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method BODYCHANGEFAMI02_GET_ENTITY.
  DATA(lv_numb) = VALUE #( it_key_tab[ name = 'Numb' ]-value OPTIONAL ).

  SELECT SINGLE *
    FROM ZHRT_CHNG_PLWORK
    INTO CORRESPONDING FIELDS OF @er_entity
      WHERE numb = @lv_numb.
  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->BODYCHANGEFAMI02_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_BODYCHANGEFAMILYWORK
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD bodychangefami02_get_entityset.
    DATA(lt_keys) = io_tech_request_context->get_source_keys( ).
    DATA(lv_numb) = VALUE #( lt_keys[ name = 'NUMB' ]-value OPTIONAL ).

    SELECT *
      FROM zhrt_chng_plwork
      INTO CORRESPONDING FIELDS OF TABLE @et_entityset
        WHERE numb = @lv_numb.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->BODYCHANGEFAMILY_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_UI5_REQUEST_MPC=>TS_BODYCHANGEFAMILYSTATUS
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD bodychangefamily_get_entity.
  CONSTANTS c_new_request TYPE zhre_ui5_req_numb VALUE 00000000.

  DATA: lv_pernr TYPE pernr_d,
        lt_p0002 TYPE p0002_tab.

  DATA(lv_numb) = VALUE #( it_key_tab[ name = 'Numb' ]-value OPTIONAL ).

  IF lv_numb = c_new_request.
    CALL FUNCTION 'CRIF_GET_EMPLOYEE_FOR_USER'
      IMPORTING
        employeenumber = lv_pernr
      EXCEPTIONS
        OTHERS         = 1.
    CHECK lv_pernr IS NOT INITIAL.

    CALL FUNCTION 'HR_READ_INFOTYPE'
      EXPORTING
        pernr     = lv_pernr
        infty     = '0002'
        begda     = sy-datum
        endda     = sy-datum
      TABLES
        infty_tab = lt_p0002
      EXCEPTIONS
        OTHERS    = 1.

    er_entity-anred = VALUE #( lt_p0002[ 1 ]-anred OPTIONAL ).
    er_entity-nachn = VALUE #( lt_p0002[ 1 ]-nachn OPTIONAL ).
    er_entity-vorna = VALUE #( lt_p0002[ 1 ]-vorna OPTIONAL ).
    er_entity-midnm = VALUE #( lt_p0002[ 1 ]-midnm OPTIONAL ).
  ELSE.
    SELECT SINGLE *
      FROM zhrt_chng_fam_st
      INTO CORRESPONDING FIELDS OF @er_entity
        WHERE numb = @lv_numb.
  ENDIF.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->BODYCHANGEFIOSET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_UI5_REQUEST_MPC=>TS_BODYCHANGEFIO
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD bodychangefioset_get_entity.
  CONSTANTS c_new_request TYPE zhre_ui5_req_numb VALUE 00000000.

  DATA: lv_pernr TYPE pernr_d,
        lt_p0002 TYPE p0002_tab,
        lt_p0290 TYPE p0290_tab.

  DATA(lv_numb) = VALUE #( it_key_tab[ name = 'Numb' ]-value OPTIONAL ).

  IF lv_numb = c_new_request.
    CALL FUNCTION 'CRIF_GET_EMPLOYEE_FOR_USER'
      IMPORTING
        employeenumber = lv_pernr
      EXCEPTIONS
        OTHERS         = 1.
    CHECK lv_pernr IS NOT INITIAL.

    CALL FUNCTION 'HR_READ_INFOTYPE'
      EXPORTING
        pernr     = lv_pernr
        infty     = '0002'
        begda     = sy-datum
        endda     = sy-datum
      TABLES
        infty_tab = lt_p0002
      EXCEPTIONS
        OTHERS    = 1.

    er_entity-anred = VALUE #( lt_p0002[ 1 ]-anred OPTIONAL ).
    er_entity-nachn = VALUE #( lt_p0002[ 1 ]-nachn OPTIONAL ).
    er_entity-vorna = VALUE #( lt_p0002[ 1 ]-vorna OPTIONAL ).
    er_entity-midnm = VALUE #( lt_p0002[ 1 ]-midnm OPTIONAL ).

    CALL FUNCTION 'HR_READ_SUBTYPE'
      EXPORTING
        pernr     = lv_pernr
        infty     = '0290'
        subty     = '21'
        begda     = sy-datum
        endda     = sy-datum
      TABLES
        infty_tab = lt_p0290
      EXCEPTIONS
        OTHERS    = 1.

    er_entity-pas_seria  = VALUE #( lt_p0290[ 1 ]-seria  OPTIONAL ).
    er_entity-pas_seri0  = VALUE #( lt_p0290[ 1 ]-seri0  OPTIONAL ).
    er_entity-pas_nomer  = VALUE #( lt_p0290[ 1 ]-nomer  OPTIONAL ).
    er_entity-pas_datbg  = VALUE #( lt_p0290[ 1 ]-datbg  OPTIONAL ).
    er_entity-pas_daten  = VALUE #( lt_p0290[ 1 ]-daten  OPTIONAL ).
    er_entity-pas_passl  = VALUE #( lt_p0290[ 1 ]-passl  OPTIONAL ).
    er_entity-pas_passl2 = VALUE #( lt_p0290[ 1 ]-passl2 OPTIONAL ).
    er_entity-pas_pcode  = VALUE #( lt_p0290[ 1 ]-pcode  OPTIONAL ).
  ELSE.
    SELECT SINGLE *
      FROM zhrt_change_fio
      INTO CORRESPONDING FIELDS OF @er_entity
        WHERE numb = @lv_numb.
  ENDIF.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->BODYCHANGENATION_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_UI5_REQUEST_MPC=>TS_BODYCHANGENATIONALITY
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method BODYCHANGENATION_GET_ENTITY.
  DATA(lv_numb) = VALUE #( it_key_tab[ name = 'Numb' ]-value OPTIONAL ).

  SELECT SINGLE *
    FROM ZHRT_CHNG_NATIO
    INTO CORRESPONDING FIELDS OF @er_entity
      WHERE numb = @lv_numb.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->BODYCHANGEPARORG_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_UI5_REQUEST_MPC=>TS_BODYCHANGEPARORG
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method BODYCHANGEPARORG_GET_ENTITY.
  DATA(lv_numb) = VALUE #( it_key_tab[ name = 'Numb' ]-value OPTIONAL ).

  SELECT SINGLE *
    FROM ZHRT_CHNG_PARORG
    INTO CORRESPONDING FIELDS OF @er_entity
      WHERE numb = @lv_numb.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->BODYCHANGEPASSPO_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_UI5_REQUEST_MPC=>TS_BODYCHANGEPASSPORT
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD bodychangepasspo_get_entity.
  CONSTANTS c_new_request TYPE zhre_ui5_req_numb VALUE 00000000.

  DATA: lv_pernr TYPE pernr_d,
        lt_p0290 TYPE p0290_tab.

  DATA(lv_numb) = VALUE #( it_key_tab[ name = 'Numb' ]-value OPTIONAL ).

  IF lv_numb = c_new_request.
    CALL FUNCTION 'CRIF_GET_EMPLOYEE_FOR_USER'
      IMPORTING
        employeenumber = lv_pernr
      EXCEPTIONS
        OTHERS         = 1.
    CHECK lv_pernr IS NOT INITIAL.

    CALL FUNCTION 'HR_READ_SUBTYPE'
      EXPORTING
        pernr     = lv_pernr
        infty     = '0290'
        subty     = '21'
        begda     = sy-datum
        endda     = sy-datum
      TABLES
        infty_tab = lt_p0290
      EXCEPTIONS
        OTHERS    = 1.

    er_entity-seria  = VALUE #( lt_p0290[ 1 ]-seria  OPTIONAL ).
    er_entity-seri0  = VALUE #( lt_p0290[ 1 ]-seri0  OPTIONAL ).
    er_entity-nomer  = VALUE #( lt_p0290[ 1 ]-nomer  OPTIONAL ).
    er_entity-datbg  = VALUE #( lt_p0290[ 1 ]-datbg  OPTIONAL ).
    er_entity-passl  = VALUE #( lt_p0290[ 1 ]-passl  OPTIONAL ).
    er_entity-passl2 = VALUE #( lt_p0290[ 1 ]-passl2 OPTIONAL ).
    er_entity-pcode  = VALUE #( lt_p0290[ 1 ]-pcode  OPTIONAL ).
  ELSE.
    SELECT SINGLE *
      FROM zhrt_chng_pass
      INTO CORRESPONDING FIELDS OF @er_entity
        WHERE numb = @lv_numb.
  ENDIF.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->BODYCHANGEPROJEC_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_UI5_REQUEST_MPC=>TS_BODYCHANGEPROJECT
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method BODYCHANGEPROJEC_GET_ENTITY.
  DATA(lv_numb) = VALUE #( it_key_tab[ name = 'NUMB' ]-value OPTIONAL ).

  SELECT SINGLE *
    FROM ZHRT_CHNG_PROJEC
    INTO CORRESPONDING FIELDS OF @er_entity
      WHERE numb = @lv_numb.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->BODYCHANGEPROJEC_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_BODYCHANGEPROJECT
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD bodychangeprojec_get_entityset.
    DATA(lt_keys) = io_tech_request_context->get_source_keys( ).
    DATA(lv_numb) = VALUE #( lt_keys[ name = 'NUMB' ]-value OPTIONAL ).

    SELECT *
      FROM zhrt_chng_projec
      INTO CORRESPONDING FIELDS OF TABLE @et_entityset
     WHERE numb = @lv_numb.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->BODYCHANGEQUALIF_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_UI5_REQUEST_MPC=>TS_BODYCHANGEQUALIFICATION
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method BODYCHANGEQUALIF_GET_ENTITY.
  DATA(lv_numb) = VALUE #( it_key_tab[ name = 'Numb' ]-value OPTIONAL ).

  SELECT SINGLE *
    FROM ZHRT_CHNG_QUALIF
    INTO CORRESPONDING FIELDS OF @er_entity
      WHERE numb = @lv_numb.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->BODYCHANGERESIDE_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_UI5_REQUEST_MPC=>TS_BODYCHANGERESIDENCEPLACE
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD bodychangereside_get_entity.
  DATA(lv_numb) = VALUE #( it_key_tab[ name = 'Numb' ]-value OPTIONAL ).

  SELECT SINGLE *
    FROM zhrt_chng_rplace
    INTO CORRESPONDING FIELDS OF @er_entity
      WHERE numb = @lv_numb.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->BODYCHANGEWORKIN_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_UI5_REQUEST_MPC=>TS_BODYCHANGEWORKING
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method BODYCHANGEWORKIN_GET_ENTITY.
  DATA(lv_numb) = VALUE #( it_key_tab[ name = 'Numb' ]-value OPTIONAL ).

  SELECT SINGLE *
    FROM ZHRT_CHNG_WORKIN
    INTO CORRESPONDING FIELDS OF @er_entity
      WHERE numb = @lv_numb.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->BODYCHILDLEAVESE_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_UI5_REQUEST_MPC=>TS_BODYCHILDLEAVE
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD bodychildleavese_get_entity.
  DATA(lv_numb) = VALUE #( it_key_tab[ name = 'Numb' ]-value OPTIONAL ).

  SELECT SINGLE *
    FROM zhrt_child_leave
    INTO CORRESPONDING FIELDS OF @er_entity
      WHERE numb = @lv_numb.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->BODYPAYDTSET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_UI5_REQUEST_MPC=>TS_BODYPAYDT
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method BODYPAYDTSET_GET_ENTITY.
  DATA(lv_numb) = VALUE #( it_key_tab[ name = 'Numb' ]-value OPTIONAL ).

  SELECT SINGLE *
    FROM zhrt_paydoc
    INTO CORRESPONDING FIELDS OF @er_entity
      WHERE numb = @lv_numb.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->BODYRESTRICTFAMI_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_UI5_REQUEST_MPC=>TS_BODYRESTRICTFAMILYMEMBER
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD bodyrestrictfami_get_entity.
  DATA(lv_numb) = VALUE #( it_key_tab[ name = 'Numb' ]-value OPTIONAL ).

  SELECT SINGLE *
    FROM zhrt_chng_fam_or
    INTO CORRESPONDING FIELDS OF @er_entity
      WHERE numb = @lv_numb.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->BODYWORKPLACESET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_UI5_REQUEST_MPC=>TS_BODYWORKPLACE
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD bodyworkplaceset_get_entity.
  DATA(lv_numb) = VALUE #( it_key_tab[ name = 'Numb' ]-value OPTIONAL ).

  SELECT SINGLE *
    FROM zhrt_workplace
    INTO CORRESPONDING FIELDS OF @er_entity
      WHERE numb = @lv_numb.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->BUKRSFILTERSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_BUKRSFILTER
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD bukrsfilterset_get_entityset.
    DATA: lt_author TYPE TABLE OF zhrt_ui5_authorfilter,
          lr_bukrs  TYPE RANGE OF BUKRS,
          lv_pernr  TYPE PERSNO,
         " lt_butxt TYPE TABLE OF t001,
          lr_pernr TYPE RANGE OF PERSNO,
          lr_usrid  TYPE RANGE OF sysid.

    SELECT DISTINCT author FROM zhrt_ui5_request
    INTO TABLE lt_author WHERE author <> ''.
    LOOP AT lt_author ASSIGNING FIELD-SYMBOL(<r_author>).
      CALL FUNCTION 'CRIF_GET_EMPLOYEE_FOR_USER'
        EXPORTING
          user_name               = conv syst_uname( <r_author>-author )
        IMPORTING
          employeenumber          = lv_pernr
        EXCEPTIONS
          no_employeenumber_found = 1
          subtype_not_available   = 2
          OTHERS                  = 3.
      APPEND VALUE #( sign   = 'I'
                      option = 'EQ'
                      low    = lv_pernr ) TO lr_pernr.
    ENDLOOP.




    SELECT bukrs FROM pa0001
      INTO TABLE @DATA(lt_bukrs)
        WHERE pernr IN @lr_pernr.
*
    CHECK lt_bukrs IS NOT INITIAL.

    LOOP AT lt_bukrs ASSIGNING FIELD-SYMBOL(<r_bukrs>).
      APPEND VALUE #( sign   = 'I'
                      option = 'EQ'
                      low    = <r_bukrs>-bukrs ) TO lr_bukrs.
    ENDLOOP.
*
    CHECK lr_bukrs IS not INITIAL.

    SELECT bukrs, butxt FROM t001
        INTO TABLE @DATA(lt_butxt)
          WHERE bukrs IN @lr_bukrs.



  LOOP AT lt_butxt ASSIGNING FIELD-SYMBOL(<r_butxt>).
    APPEND INITIAL LINE TO et_entityset ASSIGNING FIELD-SYMBOL(<entity>).
    <entity>-butxt = <r_butxt>-butxt.
    <entity>-bukrs = <r_butxt>-bukrs.
  ENDLOOP.

*    LOOP AT lt_author ASSIGNING FIELD-SYMBOL(<r_author>).
*      APPEND VALUE #( sign   = 'I'
*                      option = 'EQ'
*                      low    = <r_author>-author ) TO lr_usrid.
*    ENDLOOP.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->CHILDSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_CHILD
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD childset_get_entityset.
  DATA(lt_filter) = io_tech_request_context->get_filter( )->get_filter_select_options( ).
  DATA(lr_fgbdt) = VALUE #( lt_filter[ property = 'FGBDT' ]-select_options OPTIONAL ).

  TYPES tyt_famsa TYPE RANGE OF famsa.

*  DATA(lt_key)    = io_tech_request_context->get_keys( ).
*  DATA(lt_key1)   = io_tech_request_context->get_source_keys( ).
*  DATA(lv_author) = VALUE #( lt_key[ name = 'AUTHOR' ]-value DEFAULT sy-uname ).
*  DATA(lv_subty)  = VALUE #( lt_key[ name = 'SUBTY' ]-value DEFAULT '*' ).
*  DATA(lv_objps)  = VALUE #( lt_key[ name = 'OBJPS' ]-value DEFAULT '*' ).

  DATA(lr_famsa) = VALUE tyt_famsa( ( sign = 'I' option = 'EQ' low = '5' )
                                    ( sign = 'I' option = 'EQ' low = '6' )
                                    ( sign = 'I' option = 'EQ' low = '42' )
                                    ( sign = 'I' option = 'EQ' low = '43' )
                                    ( sign = 'I' option = 'EQ' low = '909' )
                                    ( sign = 'I' option = 'EQ' low = '910' ) ).

  SELECT  pa0021~subty as subty,
          pa0021~objps as objps,
          pa0021~fanam as fanam,
          pa0021~favor as favor,
          pa0021~fnac2 as fnac2
    FROM pa0105 JOIN pa0021 ON pa0105~pernr = pa0021~pernr
    INTO CORRESPONDING FIELDS OF TABLE @et_entityset
      WHERE pa0105~subty  = '0001'
        AND pa0105~begda <= @sy-datum
        AND pa0105~endda >= @sy-datum
        AND pa0105~usrid  = @sy-uname"lv_author
        AND pa0021~subty IN @lr_famsa
        AND pa0021~begda <= @sy-datum
        AND pa0021~endda >= @sy-datum
        AND pa0021~fgbdt IN @lr_fgbdt.
*        AND pa0021~subty <= @lv_subty
*        AND pa0021~objps >= @lv_objps.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->CITYSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_CITY
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD cityset_get_entityset.
  CONSTANTS c_city_shlpname TYPE shlpname VALUE 'HRPADRU_KLADR_CITY'.

  DATA: ls_shlp   TYPE shlp_descr,
        lt_return TYPE TABLE OF ddshretval.

  DATA(lt_filter_selopt) = io_tech_request_context->get_filter( )->get_filter_select_options( ).

  CALL FUNCTION 'F4IF_GET_SHLP_DESCR'
    EXPORTING
      shlpname = c_city_shlpname
    IMPORTING
      shlp     = ls_shlp.

  fill_shlp_selopt(
    EXPORTING
      it_filter_selopt = lt_filter_selopt
      iv_property      = 'COUNTRYCODE'
      iv_shlpname      = c_city_shlpname
      iv_shlpfield     = 'KLAND1'
    CHANGING
      ct_shlp_selopt   = ls_shlp-selopt ).

  fill_shlp_selopt(
    EXPORTING
      it_filter_selopt = lt_filter_selopt
      iv_property      = 'REGIONCODE'
      iv_shlpname      = c_city_shlpname
      iv_shlpfield     = 'KREGIO'
    CHANGING
      ct_shlp_selopt   = ls_shlp-selopt ).

  fill_shlp_selopt(
    EXPORTING
      it_filter_selopt = lt_filter_selopt
      iv_property      = 'AREACODE'
      iv_shlpname      = c_city_shlpname
      iv_shlpfield     = 'KCOUNC'
    CHANGING
      ct_shlp_selopt   = ls_shlp-selopt ).

  CALL FUNCTION 'F4IF_SELECT_VALUES'
    EXPORTING
      shlp           = ls_shlp
*     SORT           = ' '
      call_shlp_exit = abap_true
    TABLES
      return_tab     = lt_return.

  LOOP AT lt_return ASSIGNING FIELD-SYMBOL(<ls_return>) GROUP BY ( key = <ls_return>-recordpos ).
    APPEND INITIAL LINE TO et_entityset ASSIGNING FIELD-SYMBOL(<ls_entity>).
    <ls_entity>-countrycode = VALUE #( lt_filter_selopt[ property = 'COUNTRYCODE' ]-select_options[ 1 ]-low OPTIONAL ).
    <ls_entity>-regioncode  = VALUE #( lt_filter_selopt[ property = 'REGIONCODE' ]-select_options[ 1 ]-low OPTIONAL ).
    <ls_entity>-areacode    = VALUE #( lt_filter_selopt[ property = 'AREACODE' ]-select_options[ 1 ]-low OPTIONAL ).

    LOOP AT GROUP <ls_return> ASSIGNING FIELD-SYMBOL(<ls_member>).
      CASE <ls_member>-fieldname.
        WHEN 'KCODE'.
          <ls_entity>-citycode = <ls_member>-fieldval.
        WHEN 'KSOCR_CITY'.
          <ls_entity>-shortname = <ls_member>-fieldval.
        WHEN 'KNAME_CITY'.
          <ls_entity>-formalname = <ls_member>-fieldval.
        WHEN OTHERS.
          CONTINUE.
      ENDCASE.
    ENDLOOP.
  ENDLOOP.
  SORT et_entityset BY formalname ASCENDING.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->COUNTRYSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_COUNTRY
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD countryset_get_entityset.
  SELECT t005~land1   AS countrycode,
         landx        AS formalname,
         t500l~molga  AS molga
    FROM t005
    LEFT JOIN t005t ON t005~land1 = t005t~land1
    LEFT JOIN t500l ON t005~land1 = t500l~intca
    INTO TABLE @et_entityset
      WHERE t005t~spras = @sy-langu
    ORDER BY formalname.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->DISTRICTSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_DISTRICT
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD districtset_get_entityset.
  CONSTANTS c_district_shlpname TYPE shlpname VALUE 'HRPADRU_KLADR_NP'.

  DATA: ls_shlp   TYPE shlp_descr,
        lt_return TYPE TABLE OF ddshretval.

  DATA(lt_filter_selopt) = io_tech_request_context->get_filter( )->get_filter_select_options( ).

  CALL FUNCTION 'F4IF_GET_SHLP_DESCR'
    EXPORTING
      shlpname = c_district_shlpname
    IMPORTING
      shlp     = ls_shlp.

  fill_shlp_selopt(
    EXPORTING
      it_filter_selopt = lt_filter_selopt
      iv_property      = 'COUNTRYCODE'
      iv_shlpname      = c_district_shlpname
      iv_shlpfield     = 'KLAND1'
    CHANGING
      ct_shlp_selopt   = ls_shlp-selopt ).

  fill_shlp_selopt(
    EXPORTING
      it_filter_selopt = lt_filter_selopt
      iv_property      = 'REGIONCODE'
      iv_shlpname      = c_district_shlpname
      iv_shlpfield     = 'KREGIO'
    CHANGING
      ct_shlp_selopt   = ls_shlp-selopt ).

  fill_shlp_selopt(
    EXPORTING
      it_filter_selopt = lt_filter_selopt
      iv_property      = 'AREACODE'
      iv_shlpname      = c_district_shlpname
      iv_shlpfield     = 'KCOUNC'
    CHANGING
      ct_shlp_selopt   = ls_shlp-selopt ).

  fill_shlp_selopt(
    EXPORTING
      it_filter_selopt = lt_filter_selopt
      iv_property      = 'CITYCODE'
      iv_shlpname      = c_district_shlpname
      iv_shlpfield     = 'KCODE_CITY'
    CHANGING
      ct_shlp_selopt   = ls_shlp-selopt ).

  CALL FUNCTION 'F4IF_SELECT_VALUES'
    EXPORTING
      shlp           = ls_shlp
*     SORT           = ' '
      call_shlp_exit = abap_true
    TABLES
      return_tab     = lt_return.

  LOOP AT lt_return ASSIGNING FIELD-SYMBOL(<ls_return>) GROUP BY ( key = <ls_return>-recordpos ).
    APPEND INITIAL LINE TO et_entityset ASSIGNING FIELD-SYMBOL(<ls_entity>).
    <ls_entity>-countrycode = VALUE #( lt_filter_selopt[ property = 'COUNTRYCODE' ]-select_options[ 1 ]-low OPTIONAL ).
    <ls_entity>-regioncode  = VALUE #( lt_filter_selopt[ property = 'REGIONCODE' ]-select_options[ 1 ]-low OPTIONAL ).
    <ls_entity>-areacode    = VALUE #( lt_filter_selopt[ property = 'AREACODE' ]-select_options[ 1 ]-low OPTIONAL ).
    <ls_entity>-citycode    = VALUE #( lt_filter_selopt[ property = 'CITYCODE' ]-select_options[ 1 ]-low OPTIONAL ).

    LOOP AT GROUP <ls_return> ASSIGNING FIELD-SYMBOL(<ls_member>).
      CASE <ls_member>-fieldname.
        WHEN 'KCODE'.
          <ls_entity>-districtcode = <ls_member>-fieldval.
        WHEN 'KSOCR_NP'.
          <ls_entity>-shortname = <ls_member>-fieldval.
        WHEN 'KNAME_NP'.
          <ls_entity>-formalname = <ls_member>-fieldval.
        WHEN OTHERS.
          CONTINUE.
      ENDCASE.
    ENDLOOP.
  ENDLOOP.
  sort et_entityset by formalname ASCENDING.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->EDUCATIONDOCTYPE_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_EDUCATIONDOCTYPE
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method EDUCATIONDOCTYPE_GET_ENTITYSET.
*  DATA(lt_filter) = io_tech_request_context->get_filter( )->get_filter_select_options( ).
*  DATA(lr_sprsl) = VALUE #( lt_filter[ property = 'SPRSL' ]-select_options OPTIONAL ).

*  IF lr_sprsl IS NOT INITIAL.
    SELECT SLABS,STEXT,SPRSL
    FROM T519T
    INTO CORRESPONDING FIELDS OF TABLE @et_entityset
      WHERE SPRSL = 'RU'
      AND SLABS IN ('09', '50', '60', '65', '70', '94', '95').
*  ENDIF.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->EDUCATIONFORMSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_EDUCATIONFORM
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method EDUCATIONFORMSET_GET_ENTITYSET.
  DATA(lt_filter) = io_tech_request_context->get_filter( )->get_filter_select_options( ).
  DATA(lr_molga) = VALUE #( lt_filter[ property = 'MOLGA' ]-select_options OPTIONAL ).
  IF lr_molga IS NOT INITIAL.
    SELECT CNAME,CCODE,MOLGA
      FROM T7RUOKIN
      INTO CORRESPONDING FIELDS OF TABLE @et_entityset
        WHERE SPRSL = @sy-langu
        AND FACET = '33'
        AND MOLGA IN @lr_molga.
  ENDIF.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->EDUCATIONSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_EDUCATION
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method EDUCATIONSET_GET_ENTITYSET.
  DATA(lt_filter) = io_tech_request_context->get_filter( )->get_filter_select_options( ).
  DATA(lr_molga) = VALUE #( lt_filter[ property = 'MOLGA' ]-select_options OPTIONAL ).

  IF lr_molga IS NOT INITIAL.
    SELECT CNAME,CCODE,MOLGA
      FROM T7RUOKIN
      INTO CORRESPONDING FIELDS OF TABLE @et_entityset
        WHERE SPRSL = @sy-langu
        AND FACET = '30'
        AND CNAME NOT LIKE '%(устар.)%'
        AND CCODE IN ('05','06','07','08','10','12','27','30')
        AND MOLGA IN @lr_molga.
  ENDIF.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->EDUSKILLSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_EDUSKILL
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method EDUSKILLSET_GET_ENTITYSET.
  DATA(lt_filter) = io_tech_request_context->get_filter( )->get_filter_select_options( ).
  DATA(lr_molga) = VALUE #( lt_filter[ property = 'MOLGA' ]-select_options OPTIONAL ).
  IF lr_molga IS NOT INITIAL.
    SELECT CNAME,CCODE,MOLGA
      FROM T7RUOKIN
      INTO CORRESPONDING FIELDS OF TABLE @et_entityset
        WHERE SPRSL = @sy-langu
        AND MOLGA IN @lr_molga
        AND FACET = '36'.
  ENDIF.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_UI5_REQUEST_DPC_EXT->EXECUTE_CHECKADDRESS
* +-------------------------------------------------------------------------------------------------+
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_FUNC_IMPORT
* | [<---] ER_DATA                        TYPE REF TO DATA
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD execute_checkaddress.
  DATA: ls_fias_screen     TYPE pru_kladr_screen,
        ls_fias_screen_out TYPE pru_kladr_screen,
        ls_p0006           TYPE p0006,
        ls_p3433           TYPE p3433,
        ls_return          TYPE zcl_ui5_request_mpc=>ts_return.

  FIELD-SYMBOLS <ls_body> TYPE zhrt_chng_rplace.

  DATA(lt_parameter) = io_tech_request_context->get_parameters( ).
  DATA(lv_numb) = VALUE #( lt_parameter[ name = 'NUMB' ]-value OPTIONAL ).
  DATA(lo_request) = zcl_ui5_request_factory=>get_request( CONV #( lv_numb ) ).

  ASSIGN lo_request->body->* TO <ls_body>.
  CHECK <ls_body> IS ASSIGNED.
  MOVE-CORRESPONDING <ls_body> TO ls_p0006.
  MOVE-CORRESPONDING <ls_body> TO ls_p3433.
  CONCATENATE <ls_body>-begda+6(4) <ls_body>-begda+3(2) <ls_body>-begda(2) INTO ls_p0006-begda.

  cl_hrpadru_infty_0006_screen=>get_instance( )->output_conversion(
    EXPORTING
      is_p0006  = ls_p0006
      is_p3433  = ls_p3433
    CHANGING
      cs_screen = ls_fias_screen ).

  DATA(lo_message) = NEW cl_hrpa_message_list( ).
  cl_hrpadru_fias_bl=>get_instance( )->check_screen_structure(
    EXPORTING
      is_fias_screen     = ls_fias_screen
      message_handler    = lo_message
    IMPORTING
      es_fias_screen_out = ls_fias_screen_out ).

  lo_message->get_message_list( IMPORTING messages = DATA(lt_message) ).
  IF lt_message IS NOT INITIAL.
    DATA(ls_message) = lt_message[ 1 ].
    MESSAGE ID ls_message-msgid TYPE ls_message-msgty NUMBER ls_message-msgno
      WITH ls_message-msgv1 ls_message-msgv2 ls_message-msgv3 ls_message-msgv4
      INTO ls_return-value.
  ENDIF.

  copy_data_to_ref( EXPORTING is_data = ls_return
                    CHANGING cr_data = er_data ).
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_UI5_REQUEST_DPC_EXT->EXECUTE_CLOSE
* +-------------------------------------------------------------------------------------------------+
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_FUNC_IMPORT
* | [<---] ER_DATA                        TYPE REF TO DATA
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD execute_close.
  DATA: ls_new_head TYPE zhrt_ui5_request,
        ls_return   TYPE zcl_ui5_request_mpc=>ts_return,
        ls_head     TYPE zcl_ui5_request_mpc=>ts_head.
  DATA(lt_parameter) = io_tech_request_context->get_parameters( ).
  DATA(lv_numb) = VALUE #( lt_parameter[ name = 'NUMB' ]-value OPTIONAL ).
  DATA(lv_comment) = VALUE #( lt_parameter[ name = 'COMMENTARY' ]-value OPTIONAL ).

  SELECT SINGLE *
    FROM zhrt_ui5_request
    INTO @DATA(ls_old_head)
      WHERE numb = @lv_numb.
  CHECK sy-subrc = 0.

  MOVE-CORRESPONDING ls_old_head TO ls_new_head.
  ls_new_head-status = '40'.
*  WRITE sy-datum TO ls_new_head-rdate DD/MM/YYYY.
*  WRITE sy-uzeit TO ls_new_head-rtime.
  ls_new_head-rdate = sy-datum.
  ls_new_head-rtime = sy-uzeit.
  ls_new_head-owner = sy-uname.
  ls_new_head-commentary = lv_comment.
  MODIFY zhrt_ui5_request FROM ls_new_head.

  CALL FUNCTION 'ZHR_RN_REQUEST_SEND_MAIL'
    IN BACKGROUND TASK
    EXPORTING
      numb = CONV zhre_ui5_req_numb( lv_numb ).


  MOVE-CORRESPONDING ls_new_head TO ls_head.
  fill_head_post_upd( CHANGING ch_head = ls_head ).

  CALL FUNCTION 'ZHR_UI5_REQUEST_WRITE_DOCUMENT'
    EXPORTING
      objectid             = CONV cdobjectv( lv_numb )
      tcode                = sy-tcode
      utime                = sy-uzeit
      udate                = sy-datum
      username             = sy-uname
      n_zhrt_ui5_request   = ls_new_head
      o_zhrt_ui5_request   = ls_old_head
      upd_zhrt_ui5_request = 'U'.

  copy_data_to_ref( EXPORTING is_data = ls_head"ls_return
                    CHANGING cr_data = er_data ).
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_UI5_REQUEST_DPC_EXT->EXECUTE_COMPLETE
* +-------------------------------------------------------------------------------------------------+
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_FUNC_IMPORT
* | [<---] ER_DATA                        TYPE REF TO DATA
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD execute_complete.
  DATA ls_return TYPE zcl_ui5_request_mpc=>ts_return.

  DATA(lt_parameter) = io_tech_request_context->get_parameters( ).
  DATA(lv_numb) = VALUE #( lt_parameter[ name = 'NUMB' ]-value OPTIONAL ).
  DATA(lv_comment) = VALUE #( lt_parameter[ name = 'COMMENTARY' ]-value OPTIONAL ).

  DATA(lo_request) = zcl_ui5_request_factory=>get_request( CONV #( lv_numb ) ).
  ls_return-value = lo_request->complete( ).

  copy_data_to_ref( EXPORTING is_data = ls_return
                    CHANGING cr_data = er_data ).
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_UI5_REQUEST_DPC_EXT->EXECUTE_GETCLOSECOMMENT
* +-------------------------------------------------------------------------------------------------+
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_FUNC_IMPORT
* | [<---] ER_DATA                        TYPE REF TO DATA
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD execute_getclosecomment.
*-------------------------------------------------------------------------*
* 01.02.2021 Иванов А.А. 7700138565 Передача сообщения в зависимости от РП
*-------------------------------------------------------------------------*
  DATA ls_return TYPE zcl_ui5_request_mpc=>ts_return.

  DATA(lt_parameter) = io_tech_request_context->get_parameters( ).
  DATA(lv_numb) = VALUE #( lt_parameter[ name = 'NUMB' ]-value OPTIONAL ).
  DATA(lo_request) = zcl_ui5_request_factory=>get_request( CONV #( lv_numb ) ).

  IF lo_request IS NOT INITIAL.
    CASE lo_request->head-subtype.
       WHEN '2NDFL' OR '0182N' OR 'PAYDT'.
* { 01.02.2021 Иванов А.А. 7700138565
*          SELECT SINGLE text as value, text2 as value2
*            FROM zhrt_ui5_tsktext
*            INTO CORRESPONDING FIELDS OF @ls_return
*              WHERE msgnr = '001'.

          SELECT SINGLE text as value, text2 as value2
            FROM zhrt_ui5_tsktext
            INTO CORRESPONDING FIELDS OF @ls_return
              WHERE msgnr = '001'
                AND persa = @lo_request->head-persa.
        WHEN 'CHLST' OR 'WRKPL'.
          SELECT SINGLE text as value, text2 as value2
            FROM zhrt_ui5_tsktext
            INTO CORRESPONDING FIELDS OF @ls_return
              WHERE msgnr = '002'
                AND persa = @lo_request->head-persa.
* } 01.02.2021 Иванов А.А. 7700138565
    ENDCASE.
  ENDIF.
*  CASE lo_request->head-type.
*    WHEN 'REQST'.
*      SELECT SINGLE text as value, text2 as value2
*        FROM zhrt_ui5_tsktext
*        INTO CORRESPONDING FIELDS OF @ls_return
*          WHERE msgnr = '002'.
*  ENDCASE.

  copy_data_to_ref( EXPORTING is_data = ls_return
                    CHANGING cr_data = er_data ).
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_UI5_REQUEST_DPC_EXT->EXECUTE_GETREJECTCOMMENT
* +-------------------------------------------------------------------------------------------------+
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_FUNC_IMPORT
* | [<---] ER_DATA                        TYPE REF TO DATA
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD execute_getrejectcomment.
  DATA ls_return TYPE zcl_ui5_request_mpc=>ts_return.

*  SELECT SINGLE commentary
*    FROM zhrt_ui5_reqcomm
*    INTO ls_return-value
*      WHERE status = '30'.
*
  copy_data_to_ref( EXPORTING is_data = ls_return
                    CHANGING cr_data = er_data ).
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_UI5_REQUEST_DPC_EXT->EXECUTE_REJECT
* +-------------------------------------------------------------------------------------------------+
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_FUNC_IMPORT
* | [<---] ER_DATA                        TYPE REF TO DATA
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD execute_reject.
  DATA: ls_new_head TYPE zhrt_ui5_request,
        ls_return   TYPE zcl_ui5_request_mpc=>ts_return,
        ls_head     TYPE zcl_ui5_request_mpc=>ts_head.

  DATA(lt_parameter) = io_tech_request_context->get_parameters( ).
  DATA(lv_numb) = VALUE #( lt_parameter[ name = 'NUMB' ]-value OPTIONAL ).
  DATA(lv_comment) = VALUE #( lt_parameter[ name = 'COMMENTARY' ]-value OPTIONAL ).

  SELECT SINGLE *
    FROM zhrt_ui5_request
    INTO @DATA(ls_old_head)
      WHERE numb = @lv_numb.

  MOVE-CORRESPONDING ls_old_head TO ls_new_head.
  ls_new_head-status = '30'.
*  WRITE sy-datum TO ls_new_head-rdate DD/MM/YYYY.
  ls_new_head-rdate = sy-datum.
  WRITE sy-uzeit TO ls_new_head-rtime.
  ls_new_head-commentary = lv_comment.

  MODIFY zhrt_ui5_request FROM ls_new_head.
*{ Тихонов Г.Ю. 09.09.2019
  CALL FUNCTION 'ZHR_RN_REQUEST_SEND_MAIL'
    IN BACKGROUND TASK
    EXPORTING
      numb = CONV zhre_ui5_req_numb( lv_numb ).
*  SUBMIT zhr_fio_change_status_mail
*    WITH p_req = lv_numb
*     AND RETURN.
*} Тихонов Г.Ю. 09.09.2019

  CALL FUNCTION 'ZHR_UI5_REQUEST_WRITE_DOCUMENT'
    EXPORTING
      objectid             = CONV cdobjectv( lv_numb )
      tcode                = sy-tcode
      utime                = sy-uzeit
      udate                = sy-datum
      username             = sy-uname
      n_zhrt_ui5_request   = ls_new_head
      o_zhrt_ui5_request   = ls_old_head
      upd_zhrt_ui5_request = 'U'.


*  DATA lr_usrid TYPE RANGE OF sysid.

  CLEAR ls_head.
  MOVE-CORRESPONDING ls_new_head TO ls_head.

  fill_head_post_upd( CHANGING ch_head = ls_head ).

*
*  SELECT SINGLE text
*    FROM zhrt_ui5_rt_txt
*    INTO @ls_head-typetext
*   WHERE langu = @sy-langu
*    AND type = @ls_head-type.
*
*  SELECT SINGLE text
*    FROM zhrt_ui5_rst_txt
*    INTO @ls_head-statustext
*   WHERE langu = @sy-langu
*     AND status = @ls_head-status.
*
*  SELECT SINGLE text
*    FROM zhrt_ui5_rs_txt
*    INTO @ls_head-subtypetext
*   WHERE langu = @sy-langu
*     AND type = @ls_head-type
*     AND subtype = @ls_head-subtype.
*
*  IF ls_head-author IS NOT INITIAL.
*    APPEND VALUE #( sign   = 'I'
*                    option = 'EQ'
*                    low    = ls_head-author ) TO lr_usrid.
*  ENDIF.
*
*  IF ls_head-owner IS NOT INITIAL.
*    APPEND VALUE #( sign   = 'I'
*                    option = 'EQ'
*                    low    = ls_head-owner ) TO lr_usrid.
*  ENDIF.
*
*  SELECT usrid AS bname,
*         nachn && @space && inits AS name_text
*    FROM pa0105 JOIN pa0002 ON pa0105~pernr = pa0002~pernr
*    INTO TABLE @DATA(lt_uname)
*      WHERE usrid IN @lr_usrid
*        AND pa0105~begda <= @sy-datum
*        AND pa0105~endda >= @sy-datum
*        AND pa0002~begda <= @sy-datum
*        AND pa0002~endda >= @sy-datum.
*  ls_head-authortext = VALUE #( lt_uname[ bname = ls_head-author ]-name_text ).
*  ls_head-ownertext = VALUE #( lt_uname[ bname = ls_head-owner ]-name_text ).

  copy_data_to_ref( EXPORTING is_data = ls_head
                  CHANGING cr_data = er_data ).
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_UI5_REQUEST_DPC_EXT->EXECUTE_REOPEN
* +-------------------------------------------------------------------------------------------------+
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_FUNC_IMPORT
* | [<---] ER_DATA                        TYPE REF TO DATA
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD execute_reopen.
  DATA: ls_new_head TYPE zhrt_ui5_request,
        ls_return   TYPE zcl_ui5_request_mpc=>ts_return.

  DATA(lt_parameter) = io_tech_request_context->get_parameters( ).
  DATA(lv_numb) = VALUE #( lt_parameter[ name = 'NUMB' ]-value OPTIONAL ).
  DATA(lv_comment) = VALUE #( lt_parameter[ name = 'COMMENTARY' ]-value OPTIONAL ).

  SELECT SINGLE *
    FROM zhrt_ui5_request
    INTO @DATA(ls_old_head)
      WHERE numb = @lv_numb.

  MOVE-CORRESPONDING ls_old_head TO ls_new_head.
  ls_new_head-status = '10'.
  WRITE sy-datum TO ls_new_head-rdate DD/MM/YYYY.
  WRITE sy-uzeit TO ls_new_head-rtime.
  CLEAR ls_new_head-owner.
  ls_new_head-commentary = lv_comment.

  MODIFY zhrt_ui5_request FROM ls_new_head.
*{ Тихонов Г.Ю. 09.09.2019
  CALL FUNCTION 'ZHR_RN_REQUEST_SEND_MAIL'
    IN BACKGROUND TASK
    EXPORTING
      numb = CONV ZHRE_UI5_REQ_NUMB( lv_numb ).
*  SUBMIT zhr_fio_change_status_mail
*    WITH p_req = lv_numb
*     AND RETURN.
*} Тихонов Г.Ю. 09.09.2019

  CALL FUNCTION 'ZHR_UI5_REQUEST_WRITE_DOCUMENT'
    EXPORTING
      objectid             = CONV cdobjectv( lv_numb )
      tcode                = sy-tcode
      utime                = sy-uzeit
      udate                = sy-datum
      username             = sy-uname
      n_zhrt_ui5_request   = ls_new_head
      o_zhrt_ui5_request   = ls_old_head
      upd_zhrt_ui5_request = 'U'.

  copy_data_to_ref( EXPORTING is_data = ls_return
                    CHANGING cr_data = er_data ).
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_UI5_REQUEST_DPC_EXT->EXECUTE_TAKE
* +-------------------------------------------------------------------------------------------------+
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_FUNC_IMPORT
* | [<---] ER_DATA                        TYPE REF TO DATA
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD execute_take.
  DATA ls_new_head TYPE zhrt_ui5_request.

  DATA(lt_parameter) = io_tech_request_context->get_parameters( ).
  DATA(lv_numb) = VALUE #( lt_parameter[ name = 'NUMB' ]-value OPTIONAL ).
  DATA(lv_comment) = VALUE #( lt_parameter[ name = 'COMMENTARY' ]-value OPTIONAL ).

  SELECT SINGLE *
    FROM zhrt_ui5_request
    INTO @DATA(ls_old_head)
      WHERE numb = @lv_numb.

  IF ls_old_head-owner IS INITIAL.
    MOVE-CORRESPONDING ls_old_head TO ls_new_head.
    ls_new_head-status = '20'.
*    WRITE sy-datum TO ls_new_head-rdate DD/MM/YYYY.
    ls_new_head-rdate = sy-datum.
    WRITE sy-uzeit TO ls_new_head-rtime.
    ls_new_head-owner = sy-uname.
    ls_new_head-commentary = lv_comment.

    MODIFY zhrt_ui5_request FROM ls_new_head.
*  { Тихонов Г.Ю. 09.09.2019
    CALL FUNCTION 'ZHR_RN_REQUEST_SEND_MAIL'
      IN BACKGROUND TASK
      EXPORTING
        numb = CONV zhre_ui5_req_numb( lv_numb ).
*    SUBMIT zhr_fio_change_status_mail
*      WITH p_req = lv_numb
*       AND RETURN.
*  } Тихонов Г.Ю. 09.09.2019


    CALL FUNCTION 'ZHR_UI5_REQUEST_WRITE_DOCUMENT'
      EXPORTING
        objectid             = CONV cdobjectv( lv_numb )
        tcode                = sy-tcode
        utime                = sy-uzeit
        udate                = sy-datum
        username             = sy-uname
        n_zhrt_ui5_request   = ls_new_head
        o_zhrt_ui5_request   = ls_old_head
        upd_zhrt_ui5_request = 'U'.


    copy_data_to_ref( EXPORTING is_data = ls_new_head
                      CHANGING cr_data = er_data ).
  ELSE.
    DATA: lo_message_container TYPE REF TO /iwbep/if_message_container.
    CALL METHOD me->/iwbep/if_mgw_conv_srv_runtime~get_message_container
      RECEIVING
        ro_message_container = lo_message_container.
    CALL METHOD lo_message_container->add_message
      EXPORTING
        iv_msg_type               = /iwbep/cl_cos_logger=>warning
        iv_msg_id                 = 'ZHR_UI5'
        iv_msg_number             = '002'
        iv_add_to_response_header = abap_true
        iv_msg_text               = 'Заявка уже в работе.'.
  ENDIF.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->FILESET_DELETE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_D(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD fileset_delete_entity.
  DATA(lv_numb) = VALUE #( it_key_tab[ name = 'Numb' ]-value OPTIONAL ).
  DATA(lv_filename) = VALUE #( it_key_tab[ name = 'Filename' ]-value OPTIONAL ).

  SELECT SINGLE *
    FROM zhrt_ui5_reqfile
    INTO @DATA(ls_file)
      WHERE numb = @lv_numb
        AND filename = @lv_filename.
  IF sy-subrc = 0
    AND ls_file-file_id IS NOT INITIAL.

    CALL FUNCTION 'SCMS_HTTP_DELETE'
      EXPORTING
        crep_id               = get_repository( )
        doc_id                = ls_file-file_id
        comp_id               = 'request'
      EXCEPTIONS
        bad_request           = 1
        unauthorized          = 2
        not_found             = 3
        conflict              = 4
        internal_server_error = 5
        error_http            = 6
        error_url             = 7
        error_signature       = 8
        OTHERS                = 9.

    IF sy-subrc = 0.
      DELETE zhrt_ui5_reqfile FROM ls_file.
    ELSE.
      RAISE EXCEPTION TYPE /iwbep/cx_mgw_tech_exception
        EXPORTING
          textid = VALUE #( msgid = 'ZHR_UI5_REQUEST'
                            msgno = 021 ).
    ENDIF.
  ELSE.
    RAISE EXCEPTION TYPE /iwbep/cx_mgw_tech_exception
      EXPORTING
        textid = VALUE #( msgid = 'ZHR_UI5_REQUEST'
                          msgno = 020 ).
  ENDIF.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->FILESET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_UI5_REQUEST_MPC=>TS_FILE
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD fileset_get_entity.
  DATA: ls_file   TYPE zcl_ui5_request_mpc=>ts_file,
        lv_length TYPE i,
        lt_binary TYPE TABLE OF x.

  DATA(lv_numb) = VALUE #( it_key_tab[ name = 'Numb' ]-value OPTIONAL ).
  DATA(lv_filename) = VALUE #( it_key_tab[ name = 'Filename' ]-value OPTIONAL ).

  SELECT SINGLE *
    FROM zhrt_ui5_reqfile
    INTO CORRESPONDING FIELDS OF @ls_file
      WHERE numb = @lv_numb
        AND filename = @lv_filename.
  CHECK sy-subrc = 0.

  CALL FUNCTION 'SCMS_URL_GENERATE'
    EXPORTING
      command      = 'get'
      contrep      = get_repository( )
      docid        = ls_file-file_id
      compid       = 'request'
    IMPORTING
      absolute_uri = ls_file-uri
    EXCEPTIONS
      OTHERS       = 1.

*  CALL FUNCTION 'SCMS_HTTP_GET'
*    EXPORTING
*      crep_id  = get_repository( )
*      doc_id   = ls_file-file_id
*      comp_id  = 'request'
*    IMPORTING
*      length   = lv_length
*      mimetype = ls_file-mimetype
*    TABLES
*      data     = lt_binary
*    EXCEPTIONS
*      OTHERS   = 1.
*  CHECK sy-subrc = 0.
*
*  CALL FUNCTION 'SCMS_BINARY_TO_XSTRING'
*    EXPORTING
*      input_length = lv_length
*    IMPORTING
*      buffer       = ls_file-value
*    TABLES
*      binary_tab   = lt_binary
*    EXCEPTIONS
*      OTHERS       = 1.
*  CHECK sy-subrc = 0.

  MOVE-CORRESPONDING ls_file TO er_entity.

ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->FILESET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_FILE
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD fileset_get_entityset.
  DATA: lt_file   TYPE zcl_ui5_request_mpc=>tt_file,
        lv_length TYPE i,
        lt_binary TYPE TABLE OF x.

  DATA(lv_numb) = VALUE #( it_key_tab[ name = 'Numb' ]-value OPTIONAL ).

  SELECT *
    FROM zhrt_ui5_reqfile
    INTO CORRESPONDING FIELDS OF TABLE @lt_file
      WHERE numb = @lv_numb.

  LOOP AT lt_file ASSIGNING FIELD-SYMBOL(<ls_file>).
    CALL FUNCTION 'SCMS_URL_GENERATE'
      EXPORTING
        command      = 'get'
        contrep      = get_repository( )
        docid        = <ls_file>-file_id
        compid       = 'request'
      IMPORTING
        absolute_uri = <ls_file>-uri
      EXCEPTIONS
        OTHERS       = 1.
*<--AVKUPTSOV3 10.10.2019
*    Тест Бип
*    IF <ls_file>-numb = '1317'.
*      IF <ls_file>-filename = 'pic3 3.PNG'.
*        <ls_file>-filename = 'Аналитика'.
*        DATA file_id TYPE  saeardoid.
*        CALL FUNCTION 'ZHR_TESTBIP_FIORI'
*         IMPORTING
*           FILE_ID       = file_id
*                  .
*          IF file_id is NOT INITIAL.
*            <ls_file>-file_id = file_id.
*            CALL FUNCTION 'SCMS_URL_GENERATE'
*              EXPORTING
*                command      = 'get'
*                contrep      = get_repository( )
*                docid        = <ls_file>-file_id
*                compid       = 'request.sapaox'
*              IMPORTING
*                absolute_uri = <ls_file>-uri
*              EXCEPTIONS
*                OTHERS       = 1.
*          ENDIF.
*      ENDIF.
*    ENDIF.

*AVKUPTSOV3 10.10.2019-->
*<--AVKUPTSOV3 07.08.2019 *Отключаем передачу бинарника на фронт
*    CALL FUNCTION 'SCMS_HTTP_GET'
*      EXPORTING
*        crep_id  = get_repository( )
*        doc_id   = <ls_file>-file_id
*        comp_id  = 'request'
*      IMPORTING
*        length   = lv_length
*        mimetype = <ls_file>-mimetype
*      TABLES
*        data     = lt_binary
*      EXCEPTIONS
*        OTHERS   = 1.
*    CHECK sy-subrc = 0.
*
*    CALL FUNCTION 'SCMS_BINARY_TO_XSTRING'
*      EXPORTING
*        input_length = lv_length
*      IMPORTING
*        buffer       = <ls_file>-value
*      TABLES
*        binary_tab   = lt_binary
*      EXCEPTIONS
*        OTHERS       = 1.
*AVKUPTSOV3 07.08.2019-->
  ENDLOOP.

  MOVE-CORRESPONDING lt_file TO et_entityset.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_UI5_REQUEST_DPC_EXT->FILL_HEAD_POST_UPD
* +-------------------------------------------------------------------------------------------------+
* | [<-->] CH_HEAD                        TYPE        ZCL_UI5_REQUEST_MPC=>TS_HEAD
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD fill_head_post_upd.
    DATA lr_usrid TYPE RANGE OF sysid.

    SELECT SINGLE text
      FROM zhrt_ui5_rt_txt
      INTO @ch_head-typetext
     WHERE langu = @sy-langu
       AND type = @ch_head-type.

    SELECT SINGLE text
      FROM zhrt_ui5_rst_txt
      INTO @ch_head-statustext
     WHERE langu = @sy-langu
       AND status = @ch_head-status.

    SELECT SINGLE text
      FROM zhrt_ui5_rs_txt
      INTO @ch_head-subtypetext
     WHERE langu = @sy-langu
       AND type = @ch_head-type
       AND subtype = @ch_head-subtype.

    IF ch_head-author IS NOT INITIAL.
      APPEND VALUE #( sign   = 'I'
                      option = 'EQ'
                      low    = ch_head-author ) TO lr_usrid.
    ENDIF.

    IF ch_head-owner IS NOT INITIAL.
      APPEND VALUE #( sign   = 'I'
                      option = 'EQ'
                      low    = ch_head-owner ) TO lr_usrid.
    ENDIF.

    SELECT usrid AS bname,
           nachn && @space && inits AS name_text
      FROM pa0105 JOIN pa0002 ON pa0105~pernr = pa0002~pernr
      INTO TABLE @DATA(lt_uname)
        WHERE usrid IN @lr_usrid
          AND pa0105~begda <= @sy-datum
          AND pa0105~endda >= @sy-datum
          AND pa0002~begda <= @sy-datum
          AND pa0002~endda >= @sy-datum.
    ch_head-authortext = VALUE #( lt_uname[ bname = ch_head-author ]-name_text ).
    ch_head-ownertext = VALUE #( lt_uname[ bname = ch_head-owner ]-name_text ).
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_UI5_REQUEST_DPC_EXT->FILL_SHLP_SELOPT
* +-------------------------------------------------------------------------------------------------+
* | [--->] IT_FILTER_SELOPT               TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IV_PROPERTY                    TYPE        STRING
* | [--->] IV_SHLPNAME                    TYPE        SHLPNAME
* | [--->] IV_SHLPFIELD                   TYPE        SHLPFIELD
* | [<-->] CT_SHLP_SELOPT                 TYPE        DDSHSELOPS
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD fill_shlp_selopt.
  DATA(lt_selopt) = VALUE #( it_filter_selopt[ property = iv_property ]-select_options OPTIONAL ).
  LOOP AT lt_selopt ASSIGNING FIELD-SYMBOL(<ls_selopt>).
    CHECK <ls_selopt>-low IS NOT INITIAL.
    APPEND INITIAL LINE TO ct_shlp_selopt ASSIGNING FIELD-SYMBOL(<ls_shlp_selopt>).
    <ls_shlp_selopt>-shlpname = iv_shlpname.
    <ls_shlp_selopt>-shlpfield = iv_shlpfield.
    MOVE-CORRESPONDING <ls_selopt> TO <ls_shlp_selopt>.
  ENDLOOP.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_UI5_REQUEST_DPC_EXT->GET_REPOSITORY
* +-------------------------------------------------------------------------------------------------+
* | [<-()] RV_REPOSITORY                  TYPE        SAEARCHIVI
* | [EXC!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD get_repository.
  SELECT SINGLE archiv_id
    FROM toaom
    INTO @rv_repository
      WHERE sap_object = 'ARCHIVE'
        AND ar_object = 'ZF_REQ'
        AND ar_status = 'X'.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_UI5_REQUEST_DPC_EXT->HEADSET_CREATE_DEEP_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [<-->] CS_ENTITY                      TYPE        ZCL_UI5_REQUEST_MPC=>TS_HEAD
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD headset_create_deep_entity.
  CONSTANTS c_open TYPE zhre_ui5_req_status VALUE 10.

  DATA: ls_old_head_request TYPE zhrt_ui5_request,
        ls_new_head_request TYPE zhrt_ui5_request.

  CALL FUNCTION 'NUMBER_GET_NEXT'
    EXPORTING
      nr_range_nr = '01'
      object      = 'ZREQUEST'
    IMPORTING
      number      = cs_entity-numb
    EXCEPTIONS
      OTHERS      = 1.
  IF sy-subrc <> 0.
    RAISE EXCEPTION TYPE /iwbep/cx_mgw_tech_exception
      EXPORTING
        textid = VALUE #( msgid = 'ZHR_UI5'
                          msgno = 000 ).
  ENDIF.

  cs_entity-crdate = sy-datum.
  cs_entity-crtime = sy-uzeit.

  headset_fill_deep_entity(
    IMPORTING
      es_head    = ls_new_head_request
      er_body    = DATA(lp_body)
      ev_tabname = DATA(lv_tabname)
    CHANGING
      cs_entity  = cs_entity ).

  ASSIGN lp_body->* TO FIELD-SYMBOL(<ls_body_request>).
  IF <ls_body_request> IS NOT ASSIGNED.
    RAISE EXCEPTION TYPE /iwbep/cx_mgw_tech_exception
      EXPORTING
        textid = VALUE #( msgid = 'ZHR_UI5'
                          msgno = 000 ).
  ENDIF.

  INSERT zhrt_ui5_request FROM ls_new_head_request.
  IF ls_new_head_request-subtype EQ 'CHPRO' OR ls_new_head_request-subtype EQ 'CHPLW'.
    FIELD-SYMBOLS <lt_req> TYPE ANY TABLE.
    ASSIGN <ls_body_request> TO <lt_req>.
    CHECK sy-subrc EQ 0.
    CASE ls_new_head_request-subtype.
      WHEN 'CHPRO'.
        DATA lt_req_p TYPE TABLE OF zhrt_chng_projec.
        LOOP AT cs_entity-tobodychangeproject ASSIGNING FIELD-SYMBOL(<req1>).
          <req1>-subid = sy-tabix.
          <req1>-numb = ls_new_head_request-numb.
        ENDLOOP.
        lt_req_p = cs_entity-tobodychangeproject.
        MODIFY zhrt_chng_projec FROM TABLE lt_req_p.
      WHEN 'CHPLW'.
        DATA lt_req_w TYPE TABLE OF zhrt_chng_plwork.
        LOOP AT cs_entity-tobodychangefamilywork ASSIGNING FIELD-SYMBOL(<req2>).
          <req2>-subid = sy-tabix.
          <req2>-numb = ls_new_head_request-numb.
        ENDLOOP.
        lt_req_w = cs_entity-tobodychangefamilywork.
        MODIFY zhrt_chng_plwork FROM TABLE lt_req_w.
      WHEN OTHERS.
    ENDCASE.
  ELSE.
    INSERT (lv_tabname) FROM <ls_body_request>.
  ENDIF.


*{ Тихонов Г.Ю. 09.09.2019
  CALL FUNCTION 'ZHR_RN_REQUEST_SEND_MAIL'
    IN BACKGROUND TASK
    EXPORTING
      numb = cs_entity-numb.
*} Тихонов Г.Ю. 09.09.2019

  CALL FUNCTION 'ZHR_UI5_REQUEST_WRITE_DOCUMENT'
    EXPORTING
      objectid             = CONV cdobjectv( cs_entity-numb )
      tcode                = sy-tcode
      utime                = sy-uzeit
      udate                = sy-datum
      username             = sy-uname
*     PLANNED_CHANGE_NUMBER         = ' '
*     OBJECT_CHANGE_INDICATOR       = 'U'
*     PLANNED_OR_REAL_CHANGES       = ' '
*     NO_CHANGE_POINTERS   = ' '
      n_zhrt_ui5_request   = ls_new_head_request
      o_zhrt_ui5_request   = ls_old_head_request
      upd_zhrt_ui5_request = 'I'.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->HEADSET_DELETE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_D(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD headset_delete_entity.
  CONSTANTS c_open TYPE zhre_ui5_req_status VALUE 10.

  DATA: ls_head      TYPE zhrt_ui5_request,
        lp_body      TYPE REF TO data,
        ls_parameter TYPE zhrt_ui5_reqsub.

  DATA(lv_numb) = VALUE #( it_key_tab[ name = 'Numb' ]-value OPTIONAL ).

  SELECT SINGLE *
    FROM zhrt_ui5_request
    INTO @ls_head
      WHERE numb = @lv_numb.
  IF sy-subrc <> 0.
    RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
      EXPORTING
        textid = VALUE #( msgid = 'ZHR_UI5_REQUEST'
                          msgno = 010
                          attr1 = lv_numb ).
  ENDIF.

  IF ls_head-status <> c_open.
    RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
      EXPORTING
        textid = VALUE #( msgid = 'ZHR_UI5_REQUEST'
                          msgno = 011 ).
  ENDIF.

  SELECT SINGLE *
    FROM zhrt_ui5_reqsub
    INTO @ls_parameter
      WHERE type = @ls_head-type
        AND subtype = @ls_head-subtype.
  IF sy-subrc <> 0.
    RAISE EXCEPTION TYPE /iwbep/cx_mgw_tech_exception
      EXPORTING
        textid = VALUE #( msgid = 'ZHR_UI5_REQUEST'
                          msgno = 001 ).
  ENDIF.

  TRY.
      CREATE DATA lp_body TYPE (ls_parameter-tabname).
      ASSIGN lp_body->* TO FIELD-SYMBOL(<ls_body>).
    CATCH cx_sy_create_data_error.
      RAISE EXCEPTION TYPE /iwbep/cx_mgw_tech_exception
        EXPORTING
          textid = VALUE #( msgid = 'ZHR_UI5_REQUEST'
                            msgno = 001 ).
  ENDTRY.

  SELECT SINGLE *
    FROM (ls_parameter-tabname)
    INTO @<ls_body>
      WHERE numb = @lv_numb.

  SELECT *
    FROM zhrt_ui5_reqfile
    INTO TABLE @DATA(lt_file)
      WHERE numb = @lv_numb.
  LOOP AT lt_file ASSIGNING FIELD-SYMBOL(<ls_file>).
    CALL FUNCTION 'SCMS_HTTP_DELETE'
      EXPORTING
        crep_id               = get_repository( )
        doc_id                = <ls_file>-file_id
        comp_id               = 'request'
      EXCEPTIONS
        bad_request           = 1
        unauthorized          = 2
        not_found             = 3
        conflict              = 4
        internal_server_error = 5
        error_http            = 6
        error_url             = 7
        error_signature       = 8
        OTHERS                = 9.
*    IF sy-subrc <> 0.
** Implement suitable error handling here
*    ENDIF.
  ENDLOOP.

  DELETE zhrt_ui5_request FROM ls_head.
  DELETE (ls_parameter-tabname) FROM <ls_body>.
  DELETE FROM zhrt_ui5_reqfile WHERE numb = lv_numb.

  CALL FUNCTION 'ZHR_UI5_REQUEST_WRITE_DOCUMENT'
    EXPORTING
      objectid             = CONV cdobjectv( lv_numb )
      tcode                = sy-tcode
      utime                = sy-uzeit
      udate                = sy-datum
      username             = sy-uname
*     PLANNED_CHANGE_NUMBER         = ' '
*     OBJECT_CHANGE_INDICATOR       = 'U'
*     PLANNED_OR_REAL_CHANGES       = ' '
*     NO_CHANGE_POINTERS   = ' '
*     n_zhrt_ui5_request   = ls_head
*     o_zhrt_ui5_request   = ls_head
      upd_zhrt_ui5_request = 'D'.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_UI5_REQUEST_DPC_EXT->HEADSET_FILL_DEEP_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [<---] ES_HEAD                        TYPE        ZHRT_UI5_REQUEST
* | [<---] ER_BODY                        TYPE REF TO DATA
* | [<---] EV_TABNAME                     TYPE        ZHRE_UI5_REQ_TABNAME
* | [<---] ER_BODY_TAB                    TYPE REF TO DATA
* | [<-->] CS_ENTITY                      TYPE        ZCL_UI5_REQUEST_MPC=>TS_HEAD
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD headset_fill_deep_entity.
  CONSTANTS c_open TYPE zhre_ui5_req_status VALUE 10.

  DATA: lv_pernr   TYPE pernr_d,
        lt_p0001   TYPE p0001_tab,
        lv_navname TYPE zhre_ui5_req_navigation_name.

*  Заполним заголовок заявки
  CALL FUNCTION 'CRIF_GET_EMPLOYEE_FOR_USER'
    EXPORTING
      user_name      = sy-uname
    IMPORTING
      employeenumber = lv_pernr
    EXCEPTIONS
      OTHERS         = 1.
  IF sy-subrc <> 0.
    RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
      EXPORTING
        textid = VALUE #( msgid = 'ZHR_UI5'
                          msgno = 001
                          attr1 = sy-uname ).
  ENDIF.

  CALL FUNCTION 'HR_READ_INFOTYPE'
    EXPORTING
      pernr     = lv_pernr
      infty     = '0001'
      begda     = sy-datum
      endda     = sy-datum
    TABLES
      infty_tab = lt_p0001
    EXCEPTIONS
      OTHERS    = 1.

  cs_entity-persa  = VALUE #( lt_p0001[ 1 ]-werks OPTIONAL ).
  cs_entity-status = c_open.
  cs_entity-rdate  = sy-datum.
  cs_entity-rtime  = sy-uzeit.
  cs_entity-author = sy-uname.
  MOVE-CORRESPONDING cs_entity TO es_head.

*  Заполним тело заявки
  SELECT SINGLE tabname, navname
    INTO (@ev_tabname, @lv_navname )
    FROM zhrt_ui5_reqsub
      WHERE type = @cs_entity-type
        AND subtype = @cs_entity-subtype.

  ASSIGN COMPONENT lv_navname OF STRUCTURE cs_entity TO FIELD-SYMBOL(<ls_entity_body>).
  IF sy-subrc <> 0.
    RAISE EXCEPTION TYPE /iwbep/cx_mgw_tech_exception
      EXPORTING
        textid = VALUE #( msgid = 'ZHR_UI5'
                          msgno = 000 ).
  ENDIF.

  ASSIGN COMPONENT 'NUMB' OF STRUCTURE <ls_entity_body> TO FIELD-SYMBOL(<lv_numb>).
  IF sy-subrc = 0.
    <lv_numb> = cs_entity-numb.
  ENDIF.

  TRY.
      IF cs_entity-subtype EQ 'CHPRO' OR cs_entity-subtype EQ 'CHPLW'.
        CREATE DATA er_body TYPE TABLE OF (ev_tabname).
      ELSE.
        CREATE DATA er_body TYPE (ev_tabname).
      ENDIF.
      ASSIGN er_body->* TO FIELD-SYMBOL(<ls_body>).
      <ls_body> = <ls_entity_body>.
    CATCH cx_sy_create_data_error.
      RAISE EXCEPTION TYPE /iwbep/cx_mgw_tech_exception
        EXPORTING
          textid = VALUE #( msgid = 'ZHR_UI5'
                            msgno = 000 ).
  ENDTRY.

*  Заполним тексты
  SELECT SINGLE ktext
    FROM zhrt_ui5_reqstat
    INTO @cs_entity-statustext
      WHERE status = @c_open.

  SELECT SINGLE text
    FROM zhrt_ui5_rs_txt
    INTO @cs_entity-subtypetext
      WHERE langu = @sy-langu
        AND type = @cs_entity-type
        AND subtype = @cs_entity-subtype.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_UI5_REQUEST_DPC_EXT->HEADSET_FILL_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET
* | [<-->] CT_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_HEAD
* | [EXC!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [EXC!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD headset_fill_entityset.
*--------------------------------------------------------------------*
* 29.06.2021 Серёгин И.М. Вносил изменения в рамках 7700164637
*--------------------------------------------------------------------*
  DATA ls_paging TYPE /iwbep/s_mgw_paging.

  SELECT
    status,
    ktext
      FROM zhrt_ui5_reqstat
      INTO TABLE @DATA(lt_status).

  SELECT
    type,
    text
      FROM zhrt_ui5_rt_txt
      INTO TABLE @DATA(lt_type)
        WHERE langu = @sy-langu.

  SELECT
    main~type,
    main~subtype,
    navname,
    text
      FROM zhrt_ui5_reqsub AS main LEFT JOIN zhrt_ui5_rs_txt AS txt ON main~type = txt~type
                                                                   AND main~subtype = txt~subtype
      INTO TABLE @DATA(lt_subtype)
        WHERE langu = @sy-langu.

**********************************************************************
*  SELECT bname,
*         name_text
*    FROM usr21 JOIN adrp ON usr21~persnumber = adrp~persnumber
*    INTO TABLE @DATA(lt_uname)
*    FOR ALL ENTRIES IN @et_entityset
*      WHERE bname = @et_entityset-author
*         OR bname = @et_entityset-owner.
**********************************************************************
  DATA lr_usrid TYPE RANGE OF sysid.

  LOOP AT ct_entityset ASSIGNING FIELD-SYMBOL(<et_entityset>).
    IF NOT line_exists( lr_usrid[ low = <et_entityset>-author ] ) AND <et_entityset>-author IS NOT INITIAL .
      APPEND VALUE #( sign   = 'I'
                      option = 'EQ'
                      low    = <et_entityset>-author ) TO lr_usrid.
    ENDIF.

    IF NOT line_exists( lr_usrid[ low = <et_entityset>-owner ] ) AND <et_entityset>-owner IS NOT INITIAL .
      APPEND VALUE #( sign   = 'I'
                      option = 'EQ'
                      low    = <et_entityset>-owner ) TO lr_usrid.
    ENDIF.
  ENDLOOP.


  SELECT usrid AS bname,
         pa0105~pernr,"29.06.2021 Серёгин И.М. добавил ТН
         nachn && @space && inits AS name_text "usrname
    FROM pa0105 JOIN pa0002 ON pa0105~pernr = pa0002~pernr
    INTO TABLE @DATA(lt_uname)
      WHERE usrid IN @lr_usrid
        AND pa0105~begda <= @sy-datum
        AND pa0105~endda >= @sy-datum
        AND pa0002~begda <= @sy-datum
        AND pa0002~endda >= @sy-datum.
**********************************************************************

  SORT ct_entityset BY numb DESCENDING.

  LOOP AT ct_entityset ASSIGNING FIELD-SYMBOL(<fs_entityset>).
    READ TABLE lt_status ASSIGNING FIELD-SYMBOL(<fs_status>) WITH KEY status = <fs_entityset>-status.
    IF sy-subrc = 0.
      <fs_entityset>-statustext = <fs_status>-ktext.
    ENDIF.
    READ TABLE lt_type ASSIGNING FIELD-SYMBOL(<fs_type>) WITH KEY type = <fs_entityset>-type.
    IF sy-subrc = 0.
      <fs_entityset>-typetext = <fs_type>-text.
    ENDIF.
    READ TABLE lt_subtype ASSIGNING FIELD-SYMBOL(<fs_subtype>) WITH KEY type = <fs_entityset>-type
                                                                        subtype = <fs_entityset>-subtype.
    IF sy-subrc = 0.
      <fs_entityset>-subtypetext = <fs_subtype>-text.
      <fs_entityset>-navname = <fs_subtype>-navname.
    ENDIF.

    READ TABLE lt_uname ASSIGNING FIELD-SYMBOL(<ls_uname>) WITH KEY bname = <fs_entityset>-author.
    IF sy-subrc = 0.
      <fs_entityset>-authortext = <ls_uname>-name_text.
      <fs_entityset>-pernr = <ls_uname>-pernr."29.06.2021 Серёгин И.М.
    ENDIF.
    READ TABLE lt_uname ASSIGNING <ls_uname> WITH KEY bname = <fs_entityset>-owner.
    IF sy-subrc = 0.
      <fs_entityset>-ownertext = <ls_uname>-name_text.
    ENDIF.
  ENDLOOP.

  ls_paging-top  = io_tech_request_context->get_top( ).
  ls_paging-skip = io_tech_request_context->get_skip( ).

  /iwbep/cl_mgw_data_util=>paging(
    EXPORTING
      is_paging = ls_paging
    CHANGING
      ct_data   = ct_entityset ).
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->HEADSET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_UI5_REQUEST_MPC=>TS_HEAD
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD headset_get_entity.
  DATA lr_usrid TYPE RANGE OF sysid.

  DATA(lt_key)  = io_tech_request_context->get_keys( ).
  DATA(lv_numb) = VALUE #( lt_key[ name = 'NUMB' ]-value OPTIONAL ).

  SELECT
    type,
    text
      FROM zhrt_ui5_rt_txt
      INTO TABLE @DATA(lt_type)
        WHERE langu = @sy-langu.


  SELECT SINGLE
      req~*,
      stat~ktext                      AS statustext,
      sub_txt~text                    AS subtypetext,
      navname,
      type_txt~text                   AS typetext,
      req~persa                       as bukrs "afkugashev 18.08.2021
   FROM zhrt_ui5_request             AS req
      INNER JOIN zhrt_ui5_reqstat     AS stat ON
        stat~status     = req~status
      INNER JOIN zhrt_ui5_reqsub      AS sub ON
        req~type = sub~type AND
        req~subtype = sub~subtype
      INNER JOIN zhrt_ui5_rs_txt      AS sub_txt ON
        sub_txt~langu   = @sy-langu   AND
        sub_txt~type    = req~type    AND
        sub_txt~subtype = req~subtype
     INNER JOIN zhrt_ui5_rt_txt      AS type_txt ON
        type_txt~langu   = @sy-langu   AND
        type_txt~type    = req~type
    INTO CORRESPONDING FIELDS OF @er_entity
*    into @DATA(ls_ent)
      WHERE numb = @lv_numb.

*  MOVE-CORRESPONDING ls_ent TO er_entity.

  IF er_entity-author IS NOT INITIAL.              " YUABOYKO
    APPEND VALUE #( sign   = 'I'
                    option = 'EQ'
                    low    = er_entity-author ) TO lr_usrid.
  ENDIF.                                           " YUABOYKO

  IF er_entity-owner IS NOT INITIAL.               " YUABOYKO
    APPEND VALUE #( sign   = 'I'
                    option = 'EQ'
                    low    = er_entity-owner ) TO lr_usrid.
  ENDIF.                                           " YUABOYKO

  SELECT usrid AS bname,
         nachn && @space && inits AS name_text "usrname
    FROM pa0105 JOIN pa0002 ON pa0105~pernr = pa0002~pernr
    INTO TABLE @DATA(lt_uname)
      WHERE usrid IN @lr_usrid
        AND pa0105~begda <= @sy-datum
        AND pa0105~endda >= @sy-datum
        AND pa0002~begda <= @sy-datum
        AND pa0002~endda >= @sy-datum.

  READ TABLE lt_uname ASSIGNING FIELD-SYMBOL(<ls_uname>) WITH KEY bname = er_entity-author.
  IF sy-subrc = 0.
    er_entity-authortext = <ls_uname>-name_text.
  ENDIF.
  READ TABLE lt_uname ASSIGNING <ls_uname> WITH KEY bname = er_entity-owner.
  IF sy-subrc = 0.
    er_entity-ownertext = <ls_uname>-name_text.
  ENDIF.
*  READ TABLE lt_type ASSIGNING FIELD-SYMBOL(<fs_type>) WITH KEY type = ls_ent-type.
*  IF sy-subrc = 0.
*    er_entity-typetext = <fs_type>-text.
*  ENDIF.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->HEADSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_HEAD
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD headset_get_entityset.
  DATA(lv_where) = io_tech_request_context->get_osql_where_clause( ).

*  IF lv_where IS INITIAL.
*    headset_get_for_app_my_hrtask(
*      EXPORTING
*        io_tech_request_context = io_tech_request_context
*      CHANGING
*        ct_entityset = et_entityset ).
*  ELSE.
  headset_get_for_app_my_request(
    EXPORTING
      io_tech_request_context = io_tech_request_context
    CHANGING
      ct_entityset = et_entityset ).
*  ENDIF.
  LOOP AT et_entityset ASSIGNING FIELD-SYMBOL(<ent>).
    CALL FUNCTION 'DATE_CHECK_PLAUSIBILITY'
      EXPORTING
        date                      = <ent>-rdate
      EXCEPTIONS
        plausibility_check_failed = 1
        OTHERS                    = 2.
    IF sy-subrc NE 0.
      DELETE TABLE et_entityset FROM <ent>.
      CONTINUE.
    ENDIF.
    CALL FUNCTION 'TIME_CHECK_PLAUSIBILITY'
      EXPORTING
        time                      = <ent>-rtime
      EXCEPTIONS
        plausibility_check_failed = 1
        OTHERS                    = 2.
    IF sy-subrc NE 0.
      DELETE TABLE et_entityset FROM <ent>.
      CONTINUE.
    ENDIF.
    CALL FUNCTION 'DATE_CHECK_PLAUSIBILITY'
      EXPORTING
        date                      = <ent>-crdate
      EXCEPTIONS
        plausibility_check_failed = 1
        OTHERS                    = 2.
    IF sy-subrc NE 0.
      DELETE TABLE et_entityset FROM <ent>.
      CONTINUE.
    ENDIF.
    CALL FUNCTION 'TIME_CHECK_PLAUSIBILITY'
      EXPORTING
        time                      = <ent>-crtime
      EXCEPTIONS
        plausibility_check_failed = 1
        OTHERS                    = 2.
    IF sy-subrc NE 0.
      DELETE TABLE et_entityset FROM <ent>.
      CONTINUE.
    ENDIF.
  ENDLOOP.
  headset_fill_entityset(
    EXPORTING
      io_tech_request_context = io_tech_request_context
    CHANGING
      ct_entityset = et_entityset ).

***  LOOP AT et_entityset ASSIGNING FIELD-SYMBOL(<ent>).
***    CALL FUNCTION 'DATE_CHECK_PLAUSIBILITY'
***      EXPORTING
***        date                      = <ent>-rdate
***      EXCEPTIONS
***        plausibility_check_failed = 1
***        OTHERS                    = 2.
***    IF sy-subrc NE 0.
***      DELETE TABLE et_entityset FROM <ent>.
***      CONTINUE.
***    ENDIF.
***    CALL FUNCTION 'TIME_CHECK_PLAUSIBILITY'
***      EXPORTING
***        time                      = <ent>-rtime
***      EXCEPTIONS
***        plausibility_check_failed = 1
***        OTHERS                    = 2.
***    IF sy-subrc NE 0.
***      DELETE TABLE et_entityset FROM <ent>.
***      CONTINUE.
***    ENDIF.
***  ENDLOOP.
**  DATA ls_paging TYPE /iwbep/s_mgw_paging.
**  ls_paging-top  = io_tech_request_context->get_top( ).
**  ls_paging-skip = io_tech_request_context->get_skip( ).
**
**  /iwbep/cl_mgw_data_util=>paging(
**    EXPORTING
**      is_paging = ls_paging
**    CHANGING
**      ct_data   = et_entityset ).
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_UI5_REQUEST_DPC_EXT->HEADSET_GET_FOR_APP_MY_HRTASK
* +-------------------------------------------------------------------------------------------------+
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET
* | [<-->] CT_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_HEAD
* | [EXC!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [EXC!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD headset_get_for_app_my_hrtask.
  TYPES: BEGIN OF tys_fae,
           persa   TYPE persa,
           subtype TYPE zhre_ui5_req_subtype,
         END OF tys_fae.

  DATA: lr_role       TYPE RANGE OF agr_name,
        ls_role       LIKE LINE OF lr_role VALUE 'IEQ',
        lt_pa_subtype TYPE TABLE OF zhre_ui5_req_subtype,
        lt_py_subtype TYPE TABLE OF zhre_ui5_req_subtype,
        lt_fae        TYPE TABLE OF tys_fae.

  SELECT agr_name AS low
    FROM agr_users
    INTO CORRESPONDING FIELDS OF TABLE lr_role
      WHERE uname = sy-uname
        AND from_dat <= sy-datum
        AND to_dat >= sy-datum.
  MODIFY lr_role FROM ls_role TRANSPORTING sign option WHERE sign IS INITIAL.

  lt_pa_subtype = VALUE #( ( 'WRKPL' )
                           ( 'CHLST' )
                           ( 'CHFIO' )
                           ( 'CHFML' )
                           ( 'CHREG' )
                           ( 'CHSTD' )
                           ( 'CHSTS' ) ).

  SELECT persa
    FROM zhrt_notif_roles
    INTO TABLE @DATA(lt_persa)
      WHERE notif = 'REMIND_UI_PA'
        AND rolnm IN @lr_role.

  LOOP AT lt_pa_subtype ASSIGNING FIELD-SYMBOL(<lv_subtype>).
    LOOP AT lt_persa ASSIGNING FIELD-SYMBOL(<lv_persa>).
      APPEND VALUE #( persa = <lv_persa> subtype = <lv_subtype> ) TO lt_fae.
    ENDLOOP.
  ENDLOOP.

  lt_py_subtype = VALUE #( ( '0182N' )
                           ( '2NDFL' )
                           ( 'PAYDT' ) ).

  CLEAR lt_persa.
  SELECT persa
    FROM zhrt_notif_roles
    INTO TABLE @lt_persa
      WHERE notif = 'REMIND_UI_PY'
        AND rolnm IN @lr_role.

  LOOP AT lt_py_subtype ASSIGNING <lv_subtype>.
    LOOP AT lt_persa ASSIGNING <lv_persa>.
      APPEND VALUE #( persa = <lv_persa> subtype = <lv_subtype> ) TO lt_fae.
    ENDLOOP.
  ENDLOOP.

  IF lt_fae IS NOT INITIAL.
    SELECT *
      FROM zhrt_ui5_request
      INTO CORRESPONDING FIELDS OF TABLE @ct_entityset
      FOR ALL ENTRIES IN @lt_fae
        WHERE persa = @lt_fae-persa
          AND subtype = @lt_fae-subtype.
  ENDIF.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_UI5_REQUEST_DPC_EXT->HEADSET_GET_FOR_APP_MY_REQUEST
* +-------------------------------------------------------------------------------------------------+
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET
* | [<-->] CT_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_HEAD
* | [EXC!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [EXC!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD headset_get_for_app_my_request.
*--------------------------------------------------------------------*
* 29.06.2021 Серёгин И.М. Вносил изменения в рамках 7700164637
*--------------------------------------------------------------------*

  TYPES: BEGIN OF tys_fae,
           persa   TYPE persa,
           subtype TYPE zhre_ui5_req_subtype,
         END OF tys_fae.

  DATA: lr_role       TYPE RANGE OF agr_name,
        ls_role       LIKE LINE OF lr_role VALUE 'IEQ',
        lt_pa_subtype TYPE TABLE OF zhre_ui5_req_subtype,
        lt_py_subtype TYPE TABLE OF zhre_ui5_req_subtype,
        lt_lo_subtype TYPE TABLE OF zhre_ui5_req_subtype,
        lt_mo_subtype TYPE TABLE OF zhre_ui5_req_subtype,
        lt_fae        TYPE TABLE OF tys_fae,
        lt_entityset  TYPE zcl_ui5_request_mpc=>tt_head,
        lr_subt_lo    TYPE RANGE OF zhrt_chng_educat-education,
        lr_subt_pa    TYPE RANGE OF zhrt_chng_educat-education,
        l_cond        TYPE string.
  APPEND VALUE #( sign = 'I' option = 'EQ' low = '12' ) TO lr_subt_lo.
  APPEND VALUE #( sign = 'I' option = 'EQ' low = '30' ) TO lr_subt_lo.

  lr_subt_pa = VALUE #( ( sign = 'I' option = 'EQ' low = '05' )
                        ( sign = 'I' option = 'EQ' low = '06' )
                        ( sign = 'I' option = 'EQ' low = '08' )
                        ( sign = 'I' option = 'EQ' low = '10' )
                        ( sign = 'I' option = 'EQ' low = '12' )
                        ( sign = 'I' option = 'EQ' low = '27' ) ).

  DATA(lv_where) = io_tech_request_context->get_osql_where_clause( ).
  DATA(lt_filter) = io_tech_request_context->get_filter( )->get_filter_select_options( ).
  TRY.
      DATA(r_author) = lt_filter[ property = 'AUTHOR' ]-select_options.
    CATCH cx_root.
  ENDTRY.
*{ 29.06.2021 Серёгин И.М. добавил чтение номера заявки
  TRY.
      DATA(lr_numb) = lt_filter[ property = 'NUMB' ]-select_options.
    CATCH cx_root.
  ENDTRY.
*}29.06.2021 Серёгин И.М.
*{ 29.06.2021 Серёгин И.М. добавил чтение исполнителя
  TRY.
      DATA(lr_owner) = lt_filter[ property = 'OWNER' ]-select_options.
    CATCH cx_root.
  ENDTRY.
*}29.06.2021 Серёгин И.М.
*{ 29.06.2021 Серёгин И.М. добавил чтение Автора
  TRY.
      DATA(lr_status) = lt_filter[ property = 'STATUS' ]-select_options.
    CATCH cx_root.
  ENDTRY.
*}29.06.2021 Серёгин И.М.
*{ 29.06.2021 Серёгин И.М. добавил чтение Автора
  TRY.
      DATA(lr_type) = lt_filter[ property = 'TYPE' ]-select_options.
    CATCH cx_root.
  ENDTRY.
*}29.06.2021 Серёгин И.М.
*{ 29.06.2021 Серёгин И.М. добавил чтение Автора
  TRY.
      DATA(lr_subtype) = lt_filter[ property = 'SUBTYPE' ]-select_options.
    CATCH cx_root.
  ENDTRY.
*}29.06.2021 Серёгин И.М.
*{ 11.08.2021 Серёгин И.М. добавил чтение БЕ
  TRY.
      DATA(lr_bukrs) = lt_filter[ property = 'BUKRS' ]-select_options.
    CATCH cx_root.
  ENDTRY.
*}11.08.2021 Серёгин И.М.

  IF sy-uname IN r_author AND r_author[] IS NOT INITIAL.
*  DATA: lv_top  TYPE i,
*        lv_skip TYPE i,
*        lv_rows TYPE i.

*    DATA(lv_where) = io_tech_request_context->get_osql_where_clause( ).
*  lv_top   = io_tech_request_context->get_top( ).
*  lv_skip  = io_tech_request_context->get_top( ).
*  lv_rows = lv_top + lv_skip.

    SELECT *
      FROM zhrt_ui5_request
      INTO CORRESPONDING FIELDS OF TABLE @ct_entityset
*    UP TO @lv_rows ROWS
        WHERE (lv_where)
      ORDER BY numb DESCENDING.

  ELSE.

    SELECT agr_name AS low
      FROM agr_users
      INTO CORRESPONDING FIELDS OF TABLE lr_role
        WHERE uname = sy-uname
          AND from_dat <= sy-datum
          AND to_dat >= sy-datum.
    MODIFY lr_role FROM ls_role TRANSPORTING sign option WHERE sign IS INITIAL.

    lt_pa_subtype = VALUE #( ( 'WRKPL' )
                             ( 'CHMEM' )
                             ( 'CHQUA' )
                             ( 'CHDOB' )
                             ( 'CHEDU' )
                             ( 'CHNAT' )
                             ( 'CHLST' )
                             ( 'CHFIO' )
                             ( 'CHFML' )
                             ( 'CHREG' )
                             ( 'CHSTD' )
                             ( 'CHSTS' )
                             ( 'RSFML' )
                             ( 'CHPAS' )
                             ( 'CHPLW' )
                             ( 'CHWOR' ) ).

    SELECT persa
      FROM zhrt_notif_roles
      INTO TABLE @DATA(lt_persa)
        WHERE notif = 'REMIND_UI_PA'
          AND rolnm IN @lr_role.
    IF sy-subrc EQ 0 AND lt_persa IS NOT INITIAL.
      l_cond = 'ed~education IN @lr_subt_pa'.
      LOOP AT lt_pa_subtype ASSIGNING FIELD-SYMBOL(<lv_subtype>).
        LOOP AT lt_persa ASSIGNING FIELD-SYMBOL(<lv_persa>).
          APPEND VALUE #( persa = <lv_persa> subtype = <lv_subtype> ) TO lt_fae.
        ENDLOOP.
      ENDLOOP.
    ENDIF.

    lt_py_subtype = VALUE #( ( '0182N' )
                             ( '2NDFL' )
                             ( 'PAYDT' ) ).

    CLEAR lt_persa.
    SELECT persa
      FROM zhrt_notif_roles
      INTO TABLE @lt_persa
        WHERE notif = 'REMIND_UI_PY'
          AND rolnm IN @lr_role.
    LOOP AT lt_py_subtype ASSIGNING <lv_subtype>.
      LOOP AT lt_persa ASSIGNING <lv_persa>.
        APPEND VALUE #( persa = <lv_persa> subtype = <lv_subtype> ) TO lt_fae.
      ENDLOOP.
    ENDLOOP.




    lt_lo_subtype = VALUE #( ( 'CHEDU' ) ).

    CLEAR lt_persa.
    SELECT persa
      FROM zhrt_notif_roles
      INTO TABLE @lt_persa
        WHERE notif = 'REMIND_UI_LO'
          AND rolnm IN @lr_role.
    IF sy-subrc EQ 0 AND lt_persa IS NOT INITIAL.
      l_cond = 'ed~education IN @lr_subt_lo'.
      LOOP AT lt_lo_subtype ASSIGNING <lv_subtype>.
        LOOP AT lt_persa ASSIGNING <lv_persa>.
          APPEND VALUE #( persa = <lv_persa> subtype = <lv_subtype> ) TO lt_fae.
        ENDLOOP.
      ENDLOOP.
    ENDIF.

    lt_mo_subtype = VALUE #( ( 'CHAWA' ) ).

    CLEAR lt_persa.
    SELECT persa
      FROM zhrt_notif_roles
      INTO TABLE @lt_persa
        WHERE notif = 'REMIND_UI_MO'
          AND rolnm IN @lr_role.

    LOOP AT lt_mo_subtype ASSIGNING <lv_subtype>.
      LOOP AT lt_persa ASSIGNING <lv_persa>.
        APPEND VALUE #( persa = <lv_persa> subtype = <lv_subtype> ) TO lt_fae.
      ENDLOOP.
    ENDLOOP.

    lt_mo_subtype = VALUE #( ( 'CHPRO' ) ).

    CLEAR lt_persa.
    SELECT persa
      FROM zhrt_notif_roles
      INTO TABLE @lt_persa
        WHERE notif = 'REMIND_UI_SP'
          AND rolnm IN @lr_role.

    LOOP AT lt_mo_subtype ASSIGNING <lv_subtype>.
      LOOP AT lt_persa ASSIGNING <lv_persa>.
        APPEND VALUE #( persa = <lv_persa> subtype = <lv_subtype> ) TO lt_fae.
      ENDLOOP.
    ENDLOOP.

    SORT lt_fae BY persa subtype.
    DELETE ADJACENT DUPLICATES FROM lt_fae COMPARING persa subtype.

    IF lt_fae IS NOT INITIAL.
      IF l_cond IS NOT INITIAL.
        DATA lt_fae_d LIKE lt_fae.
        LOOP AT lt_fae ASSIGNING FIELD-SYMBOL(<fae>).
          IF <fae>-subtype EQ 'CHEDU'.
            APPEND <fae> TO lt_fae_d.
            DELETE TABLE lt_fae FROM <fae>.
          ENDIF.
        ENDLOOP.
        IF lt_fae IS NOT INITIAL.
          SELECT req~*,
                 req~persa as bukrs "afkugashev 18.08.2021
            FROM zhrt_ui5_request AS req
            INTO CORRESPONDING FIELDS OF TABLE @lt_entityset
             FOR ALL ENTRIES IN @lt_fae
           WHERE req~persa = @lt_fae-persa
             AND req~subtype = @lt_fae-subtype.
        ENDIF.
        IF lt_fae_d IS NOT INITIAL.
          SELECT req~*,
                 req~persa as bukrs "afkugashev 18.08.2021
            FROM zhrt_ui5_request AS req
            JOIN zhrt_chng_educat AS ed ON ed~numb = req~numb
       APPENDING CORRESPONDING FIELDS OF TABLE @lt_entityset
             FOR ALL ENTRIES IN @lt_fae_d
           WHERE req~persa = @lt_fae_d-persa
             AND req~subtype = @lt_fae_d-subtype
             AND (l_cond).
        ENDIF.
      ELSE.
        SELECT req~*,
               req~persa as bukrs "afkugashev 18.08.2021
          FROM zhrt_ui5_request as req
          INTO CORRESPONDING FIELDS OF TABLE @lt_entityset
          FOR ALL ENTRIES IN @lt_fae
            WHERE req~persa = @lt_fae-persa
              AND req~subtype = @lt_fae-subtype.
      ENDIF.
    ENDIF.
    "29.06.2021 Серёгин И.М. изменил условие цикла, с lv_where на lr_numb, добавил: owner, author
    LOOP AT lt_entityset ASSIGNING FIELD-SYMBOL(<entity>)
      WHERE numb IN lr_numb
        AND owner IN lr_owner
        AND author IN r_author
        AND status IN lr_status
        AND type in lr_type
        AND subtype IN lr_subtype
        AND bukrs in lr_bukrs. "afkugashev 18.08.2021
      APPEND <entity> TO ct_entityset.
    ENDLOOP.
  ENDIF.

**  DATA: lv_top  TYPE i,
**        lv_skip TYPE i,
**        lv_rows TYPE i.
*
*  DATA(lv_where) = io_tech_request_context->get_osql_where_clause( ).
**  lv_top   = io_tech_request_context->get_top( ).
**  lv_skip  = io_tech_request_context->get_top( ).
**  lv_rows = lv_top + lv_skip.
*
*  SELECT *
*    FROM zhrt_ui5_request
*    INTO CORRESPONDING FIELDS OF TABLE @ct_entityset
**    UP TO @lv_rows ROWS
*      WHERE (lv_where)
*    ORDER BY numb DESCENDING.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_UI5_REQUEST_DPC_EXT->HEADSET_UPDATE_DEEP_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [<-->] CS_ENTITY                      TYPE        ZCL_UI5_REQUEST_MPC=>TS_HEAD
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD headset_update_deep_entity.
  CONSTANTS c_open TYPE zhre_ui5_req_status VALUE 10.

  DATA: ls_old_head_request TYPE zhrt_ui5_request,
        ls_new_head_request TYPE zhrt_ui5_request.

  SELECT SINGLE *
    FROM zhrt_ui5_request
    INTO @ls_old_head_request
      WHERE numb = @cs_entity-numb.
  IF sy-subrc <> 0.
    RAISE EXCEPTION TYPE /iwbep/cx_mgw_tech_exception
      EXPORTING
        textid = VALUE #( msgid = 'ZHR_UI5'
                          msgno = 000 ).
  ENDIF.

  headset_fill_deep_entity(
    IMPORTING
      es_head    = ls_new_head_request
      er_body    = DATA(lp_body)
      ev_tabname = DATA(lv_tabname)
    CHANGING
      cs_entity  = cs_entity ).

  ASSIGN lp_body->* TO FIELD-SYMBOL(<ls_body_request>).
  IF <ls_body_request> IS NOT ASSIGNED.
    RAISE EXCEPTION TYPE /iwbep/cx_mgw_tech_exception
      EXPORTING
        textid = VALUE #( msgid = 'ZHR_UI5'
                          msgno = 000 ).
  ENDIF.

  UPDATE zhrt_ui5_request FROM ls_new_head_request.
  UPDATE (lv_tabname) FROM <ls_body_request>.

*{ Тихонов Г.Ю. 09.09.2019
  CALL FUNCTION 'ZHR_RN_REQUEST_SEND_MAIL'
    IN BACKGROUND TASK
    EXPORTING
      numb = cs_entity-numb.
*} Тихонов Г.Ю. 09.09.2019

  CALL FUNCTION 'ZHR_UI5_REQUEST_WRITE_DOCUMENT'
    EXPORTING
      objectid             = CONV cdobjectv( cs_entity-numb )
      tcode                = sy-tcode
      utime                = sy-uzeit
      udate                = sy-datum
      username             = sy-uname
*     PLANNED_CHANGE_NUMBER         = ' '
*     OBJECT_CHANGE_INDICATOR       = 'U'
*     PLANNED_OR_REAL_CHANGES       = ' '
*     NO_CHANGE_POINTERS   = ' '
      n_zhrt_ui5_request   = ls_new_head_request
      o_zhrt_ui5_request   = ls_old_head_request
      upd_zhrt_ui5_request = 'U'.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->HISTORYSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_HISTORY
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD historyset_get_entityset.
  DATA: lt_history TYPE TABLE OF cdred,
        lt_request TYPE TABLE OF zhrt_ui5_request,
        lr_usrid   TYPE RANGE OF sysid,
        ls_entity  TYPE zcl_ui5_request_mpc=>ts_history.

*<-- AVKUPTSOV3 23.09.2019
  DATA: where_clause TYPE ty_ttext,
        where_filter TYPE ty_ttext.

  CONSTANTS: c_empty             VALUE '',
             c_add_condition     VALUE ' AND ',
             c_exclude_condition VALUE ' AND NOT '.

  TRY .
      DATA(lt_keys) = io_tech_request_context->get_source_keys( ).
      DATA(lv_clause) = io_tech_request_context->get_osql_where_clause( ).
    CATCH cx_root INTO DATA(lo_error).
      RETURN.
*      Или сделай красивый технический эксепшн ^___^
  ENDTRY.

*Собираем все ключи в таблицу условий
  LOOP AT lt_keys ASSIGNING FIELD-SYMBOL(<fs_key>).
    CHECK <fs_key>-name IS NOT INITIAL.
    CHECK <fs_key>-value IS NOT INITIAL.
    IF sy-tabix EQ 1 OR where_clause[] IS INITIAL.
      DATA(lv_row_changer) = c_empty.
    ELSE.
      lv_row_changer = c_add_condition.
    ENDIF.
    APPEND INITIAL LINE TO where_clause ASSIGNING FIELD-SYMBOL(<fs_where>).
    IF <fs_where> IS ASSIGNED.
      <fs_where> = CONV #( |{ lv_row_changer } { <fs_key>-name } EQ { <fs_key>-value }| ).
    ENDIF.
  ENDLOOP.
*Если есть не только ключи, но и строка фильтра
  IF lv_clause IS NOT INITIAL.
    IF where_clause[] IS NOT INITIAL.
      lv_row_changer = c_add_condition.
    ELSE.
      lv_row_changer = c_empty.
    ENDIF.
    lv_clause = lv_row_changer && lv_clause.

    CALL FUNCTION 'CONVERT_STRING_TO_TAB_CN'
      EXPORTING
        i_string         = lv_clause
        i_tabline_length = 50
      TABLES
        et_table         = where_filter[]
      EXCEPTIONS
        OTHERS           = 1.
    IF where_filter[] IS NOT INITIAL.
      APPEND LINES OF where_filter TO where_clause.
      FREE where_filter[].
    ENDIF.
  ENDIF.


  IF where_clause[] IS NOT INITIAL.
    SELECT SINGLE *
      FROM zhrt_ui5_request
      INTO @DATA(ls_request)
        WHERE (where_clause[]).
    CHECK sy-subrc = 0.
    FREE where_clause[].
*AVKUPTSOV3 23.09.2019-->

    CALL FUNCTION 'CHANGEDOCUMENT_READ'
      EXPORTING
        objectclass = 'ZHR_UI5_REQUEST'
        objectid    = CONV cdobjectv( ls_request-numb )
      TABLES
        editpos     = lt_history
      EXCEPTIONS
        OTHERS      = 1.
    CHECK sy-subrc = 0.

*    LOOP AT lt_history ASSIGNING FIELD-SYMBOL(<ls_history>) GROUP BY ( key1 = <ls_history>-udate
*                                                                       key2 = <ls_history>-utime ).
*      APPEND ls_request TO lt_request.
*      DATA(lv_index) = sy-tabix.
*
*      LOOP AT GROUP <ls_history> ASSIGNING FIELD-SYMBOL(<ls_member>).
*        IF lv_index = 1.
*          CONTINUE.
*        ENDIF.
*
*        ASSIGN COMPONENT <ls_member>-fname OF STRUCTURE lt_request[ lv_index - 1 ] TO FIELD-SYMBOL(<lv_old>).
*        IF sy-subrc = 0.
*          <lv_old> = <ls_member>-f_old.
*        ENDIF.
*
*        ASSIGN COMPONENT <ls_member>-fname OF STRUCTURE lt_request[ lv_index ] TO FIELD-SYMBOL(<lv_new>).
*        IF sy-subrc = 0.
*          <lv_new> = <ls_member>-f_new.
*        ENDIF.
*      ENDLOOP.
*    ENDLOOP.

*    DELETE lt_history WHERE chngind EQ 'I'.
    FIELD-SYMBOLS: <req> LIKE LINE OF lt_request.
    SORT lt_history BY udate DESCENDING utime DESCENDING.
    APPEND ls_request TO lt_request.

    LOOP AT lt_history ASSIGNING FIELD-SYMBOL(<ls_history>) GROUP BY ( key1 = <ls_history>-udate
                                                                       key2 = <ls_history>-utime ).
      IF <req> IS ASSIGNED.
        <req>-rdate = <ls_history>-udate.
        <req>-rtime = <ls_history>-utime.
      ENDIF.
      LOOP AT GROUP <ls_history> ASSIGNING FIELD-SYMBOL(<ls_member>).

        ASSIGN COMPONENT <ls_member>-fname OF STRUCTURE ls_request TO FIELD-SYMBOL(<lv_old>).
        IF sy-subrc = 0.
          <lv_old> = <ls_member>-f_old.
        ENDIF.

      ENDLOOP.
      CHECK <ls_history>-chngind NE 'I'.
      APPEND ls_request TO lt_request ASSIGNING <req>.
    ENDLOOP.



    SELECT * FROM zhrt_ui5_chh_txt INTO TABLE @DATA(lt_chh_txt).

    LOOP AT lt_request ASSIGNING FIELD-SYMBOL(<ls_request>).
      IF NOT line_exists( lr_usrid[ low = <ls_request>-author ] ) AND <ls_request>-author IS NOT INITIAL .
        APPEND VALUE #( sign   = 'I'
                        option = 'EQ'
                        low    = <ls_request>-author ) TO lr_usrid.
      ENDIF.

      IF NOT line_exists( lr_usrid[ low = <ls_request>-owner ] ) AND <ls_request>-owner IS NOT INITIAL .
        APPEND VALUE #( sign   = 'I'
                        option = 'EQ'
                        low    = <ls_request>-owner ) TO lr_usrid.
      ENDIF.
    ENDLOOP.

    SELECT usrid,
           nachn && @space && vorna && @space && midnm AS usrname"inits
      FROM pa0105 JOIN pa0002 ON pa0105~pernr = pa0002~pernr
      INTO TABLE @DATA(lt_uname)
        WHERE usrid IN @lr_usrid
          AND pa0105~begda <= @sy-datum
          AND pa0105~endda >= @sy-datum
          AND pa0002~begda <= @sy-datum
          AND pa0002~endda >= @sy-datum.

    LOOP AT lt_request ASSIGNING <ls_request>.
      CLEAR ls_entity.
      MOVE-CORRESPONDING <ls_request> TO ls_entity.
      ls_entity-text = VALUE #( lt_chh_txt[ status = <ls_request>-status ]-text OPTIONAL ).
      IF <ls_request>-owner IS NOT INITIAL.
        ls_entity-owner_text = VALUE #( lt_uname[ usrid = <ls_request>-owner ]-usrname OPTIONAL ).
      ELSE.
        ls_entity-owner_text = VALUE #( lt_uname[ usrid = <ls_request>-author ]-usrname OPTIONAL ).
      ENDIF.
      APPEND ls_entity TO et_entityset.
    ENDLOOP.
*Сортируем и выпиливаем повторяющиеся статусы подряд
    SORT et_entityset BY numb rdate rtime status owner_text.
    DELETE ADJACENT DUPLICATES FROM et_entityset COMPARING status owner_text.

    LOOP AT et_entityset ASSIGNING FIELD-SYMBOL(<entity>).
      <entity>-rdate = |{ <entity>-rdate+6(2) }.{ <entity>-rdate+4(2) }.{ <entity>-rdate+0(4) }|.
      <entity>-rtime = |{ <entity>-rtime+0(2) }:{ <entity>-rtime+2(2) }:{ <entity>-rtime+4(2) }|.
    ENDLOOP.

  ENDIF.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->HOUSESET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_HOUSE
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD houseset_get_entityset.
  CONSTANTS c_house_shlpname TYPE shlpname VALUE 'HRPADRU_KLADR_HOUSE'.

  DATA: ls_shlp   TYPE shlp_descr,
        lt_return TYPE TABLE OF ddshretval.

  DATA(lt_filter_selopt) = io_tech_request_context->get_filter( )->get_filter_select_options( ).

  CALL FUNCTION 'F4IF_GET_SHLP_DESCR'
    EXPORTING
      shlpname = c_house_shlpname
    IMPORTING
      shlp     = ls_shlp.

  fill_shlp_selopt(
    EXPORTING
      it_filter_selopt = lt_filter_selopt
      iv_property      = 'COUNTRYCODE'
      iv_shlpname      = c_house_shlpname
      iv_shlpfield     = 'KLAND1'
    CHANGING
      ct_shlp_selopt   = ls_shlp-selopt ).

  fill_shlp_selopt(
    EXPORTING
      it_filter_selopt = lt_filter_selopt
      iv_property      = 'REGIONCODE'
      iv_shlpname      = c_house_shlpname
      iv_shlpfield     = 'KREGIO'
    CHANGING
      ct_shlp_selopt   = ls_shlp-selopt ).

  fill_shlp_selopt(
    EXPORTING
      it_filter_selopt = lt_filter_selopt
      iv_property      = 'AREACODE'
      iv_shlpname      = c_house_shlpname
      iv_shlpfield     = 'KCOUNC'
    CHANGING
      ct_shlp_selopt   = ls_shlp-selopt ).

  fill_shlp_selopt(
    EXPORTING
      it_filter_selopt = lt_filter_selopt
      iv_property      = 'CITYCODE'
      iv_shlpname      = c_house_shlpname
      iv_shlpfield     = 'KCODE_CITY'
    CHANGING
      ct_shlp_selopt   = ls_shlp-selopt ).

  fill_shlp_selopt(
    EXPORTING
      it_filter_selopt = lt_filter_selopt
      iv_property      = 'DISTRICTCODE'
      iv_shlpname      = c_house_shlpname
      iv_shlpfield     = 'KCODE_NP'
    CHANGING
      ct_shlp_selopt   = ls_shlp-selopt ).

  fill_shlp_selopt(
    EXPORTING
      it_filter_selopt = lt_filter_selopt
      iv_property      = 'STREETCODE'
      iv_shlpname      = c_house_shlpname
      iv_shlpfield     = 'KCODE_STREET'
    CHANGING
      ct_shlp_selopt   = ls_shlp-selopt ).

  CALL FUNCTION 'F4IF_SELECT_VALUES'
    EXPORTING
      shlp           = ls_shlp
*     SORT           = ' '
      call_shlp_exit = abap_true
    TABLES
      return_tab     = lt_return.

  LOOP AT lt_return ASSIGNING FIELD-SYMBOL(<ls_return>) GROUP BY ( key = <ls_return>-recordpos ).
    APPEND INITIAL LINE TO et_entityset ASSIGNING FIELD-SYMBOL(<ls_entity>).
    <ls_entity>-countrycode  = VALUE #( lt_filter_selopt[ property = 'COUNTRYCODE' ]-select_options[ 1 ]-low OPTIONAL ).
    <ls_entity>-regioncode   = VALUE #( lt_filter_selopt[ property = 'REGIONCODE' ]-select_options[ 1 ]-low OPTIONAL ).
    <ls_entity>-areacode     = VALUE #( lt_filter_selopt[ property = 'AREACODE' ]-select_options[ 1 ]-low OPTIONAL ).
    <ls_entity>-citycode     = VALUE #( lt_filter_selopt[ property = 'CITYCODE' ]-select_options[ 1 ]-low OPTIONAL ).
    <ls_entity>-districtcode = VALUE #( lt_filter_selopt[ property = 'DISTRICTCODE' ]-select_options[ 1 ]-low OPTIONAL ).
    <ls_entity>-streetcode   = VALUE #( lt_filter_selopt[ property = 'STREETCODE' ]-select_options[ 1 ]-low OPTIONAL ).

    LOOP AT GROUP <ls_return> ASSIGNING FIELD-SYMBOL(<ls_member>).
      CASE <ls_member>-fieldname.
        WHEN 'KNAME_HOUSE'.
          <ls_entity>-housenum = <ls_member>-fieldval.
        WHEN 'KNAME_BLDNG'.
          <ls_entity>-buildnum = <ls_member>-fieldval.
        WHEN 'STRUCNUM'.
          <ls_entity>-strucnum = <ls_member>-fieldval.
        WHEN OTHERS.
          CONTINUE.
      ENDCASE.
    ENDLOOP.
  ENDLOOP.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->OWNERFILTERSET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_UI5_REQUEST_MPC=>TS_OWNERFILTER
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method OWNERFILTERSET_GET_ENTITY.
**TRY.
*CALL METHOD SUPER->OWNERFILTERSET_GET_ENTITY
*  EXPORTING
*    IV_ENTITY_NAME          =
*    IV_ENTITY_SET_NAME      =
*    IV_SOURCE_NAME          =
*    IT_KEY_TAB              =
**    io_request_object       =
**    io_tech_request_context =
*    IT_NAVIGATION_PATH      =
**  IMPORTING
**    er_entity               =
**    es_response_context     =
*    .
** CATCH /iwbep/cx_mgw_busi_exception .
** CATCH /iwbep/cx_mgw_tech_exception .
**ENDTRY.
  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->OWNERFILTERSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_OWNERFILTER
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD ownerfilterset_get_entityset.
    DATA: lt_owner TYPE TABLE OF zhrt_ui5_ownerfilter,
          lr_usrid TYPE RANGE OF sysid.

    SELECT DISTINCT owner FROM zhrt_ui5_request
    INTO TABLE lt_owner WHERE owner <> ''.

    LOOP AT lt_owner ASSIGNING FIELD-SYMBOL(<r_owner>).
      APPEND VALUE #( sign   = 'I'
                      option = 'EQ'
                      low    = <r_owner>-owner ) TO lr_usrid.
    ENDLOOP.


    SELECT usrid AS bname,
           nachn && @space && inits AS name_text "usrname
      FROM pa0105 JOIN pa0002 ON pa0105~pernr = pa0002~pernr
      INTO TABLE @DATA(lt_uname)
        WHERE usrid IN @lr_usrid
          AND pa0105~begda <= @sy-datum
          AND pa0105~endda >= @sy-datum
          AND pa0002~begda <= @sy-datum
          AND pa0002~endda >= @sy-datum.

  LOOP AT lt_uname ASSIGNING FIELD-SYMBOL(<r_uname>).
    APPEND INITIAL LINE TO et_entityset ASSIGNING FIELD-SYMBOL(<entity>).
    <entity>-owner = <r_uname>-bname.
    <entity>-ownertext = <r_uname>-name_text.
  ENDLOOP.

  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->PERNRFILTERSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_PERNRFILTER
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD pernrfilterset_get_entityset.
  DATA: lt_author TYPE TABLE OF zhrt_ui5_authorfilter,
        lr_usrid  TYPE RANGE OF sysid.

  SELECT DISTINCT author FROM zhrt_ui5_request
  INTO TABLE lt_author WHERE author <> ''.

  LOOP AT lt_author ASSIGNING FIELD-SYMBOL(<r_author>).
    APPEND VALUE #( sign   = 'I'
                    option = 'EQ'
                    low    = <r_author>-author ) TO lr_usrid.
  ENDLOOP.


  SELECT pernr, usrid FROM pa0105
    INTO TABLE @DATA(lt_pernr)
      WHERE usrid IN @lr_usrid
        AND pa0105~begda <= @sy-datum
        AND pa0105~endda >= @sy-datum
        AND subty = '0001'.

  LOOP AT lt_pernr ASSIGNING FIELD-SYMBOL(<r_pernr>).
    APPEND INITIAL LINE TO et_entityset ASSIGNING FIELD-SYMBOL(<entity>).
    <entity>-author = <r_pernr>-usrid.
    <entity>-pernr = <r_pernr>-pernr.
  ENDLOOP.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->QUALIFICATIONGRO_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_QUALIFICATIONGROUP
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method QUALIFICATIONGRO_GET_ENTITYSET.
  TYPES: BEGIN OF t_struct,
         objid(10) TYPE c,
       END OF t_struct,
       t_objid TYPE TABLE OF t_struct WITH EMPTY KEY.

  DATA: ls_objid(40) TYPE c,
        tab_objid TYPE t_objid.
  SELECT SINGLE contn INTO ls_objid FROM t7rurptcst00
    WHERE progr = 'ZHR_REQUEST'
      AND param = sy-sysid.
  IF sy-subrc EQ 0.
    SPLIT ls_objid AT ',' INTO TABLE tab_objid.
  ENDIF.

  DATA: r_objid type range of objektid.
        LOOP AT tab_objid ASSIGNING FIELD-SYMBOL(<line>).
          APPEND VALUE #( sign = 'I' option = 'EQ' low = <line>-objid ) TO r_objid.
        ENDLOOP.

  SELECT  hrp1000~objid     AS sobid,
          hrp1000~stext     AS name,
          hrp1033~scale     AS scale_id
  FROM hrp1000 LEFT JOIN hrp1033 ON hrp1000~objid = hrp1033~objid
  INTO CORRESPONDING FIELDS OF TABLE @et_entityset
  WHERE hrp1000~objid IN @r_objid.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->QUALIFICATIONITE_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_QUALIFICATIONITEMS
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD qualificationite_get_entityset.
*Get filter
  DATA(lt_filter) = io_tech_request_context->get_filter( )->get_filter_select_options( ).
  DATA(lr_sobid) = VALUE #( lt_filter[ property = 'SOBID' ]-select_options OPTIONAL ).
  APPEND VALUE #( sign = 'I' option = 'EQ' low = '*' ) TO lr_sobid.
*Get data
  SELECT  hrp1000~objid AS code,
          hrp1000~stext AS name,
          hrp1001~sobid AS sobid
  FROM hrp1000 LEFT JOIN hrp1001 ON hrp1000~objid = hrp1001~objid
  INTO CORRESPONDING FIELDS OF TABLE @et_entityset
  WHERE hrp1001~sobid IN @lr_sobid
    AND hrp1000~otype = 'Q'.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->REGIONSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_REGION
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD regionset_get_entityset.
  CONSTANTS c_region_shlpname TYPE shlpname VALUE 'HRPADRU_REGION'.

  DATA: ls_shlp   TYPE shlp_descr,
        lt_return TYPE TABLE OF ddshretval.

  DATA(lt_filter_selopt) = io_tech_request_context->get_filter( )->get_filter_select_options( ).

  CALL FUNCTION 'F4IF_GET_SHLP_DESCR'
    EXPORTING
      shlpname = c_region_shlpname
    IMPORTING
      shlp     = ls_shlp.

  fill_shlp_selopt(
    EXPORTING
      it_filter_selopt = lt_filter_selopt
      iv_property      = 'COUNTRYCODE'
      iv_shlpname      = c_region_shlpname
      iv_shlpfield     = 'KLAND1'
    CHANGING
      ct_shlp_selopt   = ls_shlp-selopt ).

  CALL FUNCTION 'F4IF_SELECT_VALUES'
    EXPORTING
      shlp           = ls_shlp
*     SORT           = ' '
      call_shlp_exit = abap_true
    TABLES
      return_tab     = lt_return.

  LOOP AT lt_return ASSIGNING FIELD-SYMBOL(<ls_return>) GROUP BY ( key = <ls_return>-recordpos ).
    APPEND INITIAL LINE TO et_entityset ASSIGNING FIELD-SYMBOL(<ls_entity>).
    <ls_entity>-countrycode = VALUE #( lt_filter_selopt[ property = 'COUNTRYCODE' ]-select_options[ 1 ]-low OPTIONAL ).

    LOOP AT GROUP <ls_return> ASSIGNING FIELD-SYMBOL(<ls_member>).
      CASE <ls_member>-fieldname.
        WHEN 'KREGIO'.
          <ls_entity>-regioncode = <ls_member>-fieldval.
        WHEN 'KSOCR_REGION'.
          <ls_entity>-shortname = <ls_member>-fieldval.
        WHEN 'BEZEI'.
          <ls_entity>-formalname = <ls_member>-fieldval.
        WHEN OTHERS.
          CONTINUE.
      ENDCASE.
    ENDLOOP.
  ENDLOOP.
  SORT et_entityset by regioncode ASCENDING.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->RELATIONSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_RELATION
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD relationset_get_entityset.
*    APPEND VALUE #( subty = '5' stext = 'Сын' ) TO et_entityset.
*    APPEND VALUE #( subty = '6' stext = 'Дочь' ) TO et_entityset.
    SELECT subty, stext FROM t591s WHERE sprsl = @sy-langu AND infty = '0021' AND
      subty IN ('1','2','3','4','5','6','7','8','9','10','14','20','21','40','41','42','43','50','51','52','53','54','55','97')
      ORDER BY stext
    INTO CORRESPONDING FIELDS OF TABLE @et_entityset.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->RELATIVE2SET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_RELATIVE2
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method RELATIVE2SET_GET_ENTITYSET.
  DATA: l_uname TYPE uname.
  DATA(lt_filter) = io_tech_request_context->get_filter( )->get_filter_select_options( ).
  DATA(lr_fgbdt) = VALUE #( lt_filter[ property = 'FGBDT' ]-select_options OPTIONAL ).
  DATA(lr_author) = VALUE #( lt_filter[ property = 'AUTHOR' ]-select_options OPTIONAL ).
  TRY.
      l_uname = lr_author[ 1 ]-low.
    CATCH cx_root.
      l_uname = sy-uname.
  ENDTRY.
*  TYPES tyt_famsa TYPE RANGE OF famsa.
*  DATA(lr_famsa) = VALUE tyt_famsa( ( sign = 'I' option = 'EQ' low = '1' )
*                                    ( sign = 'I' option = 'EQ' low = '2' )
*                                    ( sign = 'I' option = 'EQ' low = '5' )
*                                    ( sign = 'I' option = 'EQ' low = '6' )
*                                    ( sign = 'I' option = 'EQ' low = '42' )
*                                    ( sign = 'I' option = 'EQ' low = '43' )
*                                    ( sign = 'I' option = 'EQ' low = '97' )
*                                    ( sign = 'I' option = 'EQ' low = '20' )
*                                    ( sign = 'I' option = 'EQ' low = '21' ) ).
  SELECT  pa0021~uname as author,
          pa0021~subty as subty,
          pa0021~objps as objps,
          pa0021~fanam as fanam,
          pa0021~favor as favor,
          pa0021~fnac2 as fnac2,
          pa0021~fgbdt as fgbdt
  FROM pa0021 LEFT OUTER JOIN pa0105 ON pa0105~pernr = pa0021~pernr
  INTO CORRESPONDING FIELDS OF TABLE @et_entityset
  WHERE pa0105~subty  = '0001'
    AND pa0105~begda <= @sy-datum
    AND pa0105~endda >= @sy-datum
    AND pa0105~usrid  = @l_uname
    AND pa0021~subty IN ('1','2','3','4','5','6','7','8','9','10','14','20','21','40','41','42','43','50','51','52','53','54','55','97')
    AND pa0021~begda <= @sy-datum
    AND pa0021~endda >= @sy-datum
    AND pa0021~fgbdt IN @lr_fgbdt..
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->RELATIVESET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_RELATIVE
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD relativeset_get_entityset.
  DATA: l_uname TYPE uname.
*  DATA(lt_key)    = io_tech_request_context->get_keys( ).
*  DATA(lv_author) = VALUE #( lt_key[ name = 'AUTHOR' ]-value DEFAULT sy-uname ).
*  DATA(lv_subty)  = VALUE #( lt_key[ name = 'SUBTY' ]-value DEFAULT '*' ).
*  DATA(lv_objps)  = VALUE #( lt_key[ name = 'OBJPS' ]-value DEFAULT '*' ).

  DATA(lt_filter) = io_tech_request_context->get_filter( )->get_filter_select_options( ).
  DATA(lr_author) = VALUE #( lt_filter[ property = 'AUTHOR' ]-select_options OPTIONAL ).
  TRY.
      l_uname = lr_author[ 1 ]-low.
    CATCH cx_root.
      l_uname = sy-uname.
  ENDTRY.
  SELECT *
    FROM pa0105 JOIN pa0021 ON pa0105~pernr = pa0021~pernr
    INTO CORRESPONDING FIELDS OF TABLE @et_entityset
      WHERE pa0105~subty  = '0001'
        AND pa0105~begda <= @sy-datum
        AND pa0105~endda >= @sy-datum
        AND pa0105~usrid  = @l_uname
        AND pa0021~begda <= @sy-datum
        AND pa0021~endda >= @sy-datum.
*        AND pa0021~subty <= @lv_subty
*        AND pa0021~objps >= @lv_objps.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->REQSUBTYPESET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_UI5_REQUEST_MPC=>TS_REQSUBTYPE
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD reqsubtypeset_get_entity.
  DATA(lt_key)     = io_tech_request_context->get_keys( ).
  DATA(lv_type)    = VALUE #( lt_key[ name = 'TYPE' ]-value DEFAULT '*' ).
  DATA(lv_subtype) = VALUE #( lt_key[ name = 'SUBTYPE' ]-value DEFAULT '*' ).

  SELECT SINGLE *
    FROM zhrt_ui5_reqsub AS req LEFT JOIN zhrt_ui5_rs_txt AS txt ON req~type = txt~type
                                                                AND req~subtype = txt~subtype
    INTO CORRESPONDING FIELDS OF @er_entity
      WHERE langu = @sy-langu
        AND req~type = @lv_type
        AND req~subtype = @lv_subtype
        AND not_active = @space.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->REQSUBTYPESET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_REQSUBTYPE
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD reqsubtypeset_get_entityset.
  DATA(lt_key)  = io_tech_request_context->get_source_keys( ).
  DATA(lv_type) = VALUE #( lt_key[ name = 'TYPE' ]-value OPTIONAL ).
  DATA(lt_orderby) = io_tech_request_context->get_orderby( ).

  IF lv_type IS INITIAL.
    SELECT *
      FROM zhrt_ui5_reqsub AS req LEFT JOIN zhrt_ui5_rs_txt AS txt ON req~type = txt~type
                                                                  AND req~subtype = txt~subtype
      INTO CORRESPONDING FIELDS OF TABLE @et_entityset
        WHERE langu = @sy-langu
          AND not_active = @space.
  ELSE.
    SELECT *
      FROM zhrt_ui5_reqsub AS req LEFT JOIN zhrt_ui5_rs_txt AS txt ON req~type = txt~type
                                                                  AND req~subtype = txt~subtype
      INTO CORRESPONDING FIELDS OF TABLE @et_entityset
        WHERE langu = @sy-langu
          AND req~type = @lv_type
          AND not_active = @space.
  ENDIF.

  /iwbep/cl_mgw_data_util=>filtering(
    EXPORTING
      it_select_options = it_filter_select_options
    CHANGING
      ct_data           = et_entityset ).

  SORT et_entityset BY text.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->REQTYPESET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_UI5_REQUEST_MPC=>TS_REQTYPE
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD reqtypeset_get_entity.
  DATA(lt_key)  = io_tech_request_context->get_keys( ).
  DATA(lv_type) = VALUE #( lt_key[ name = 'TYPE' ]-value OPTIONAL ).

  SELECT SINGLE *
    FROM zhrt_ui5_reqtype AS req LEFT JOIN zhrt_ui5_rt_txt AS txt ON req~type = txt~type
    INTO CORRESPONDING FIELDS OF @er_entity
      WHERE langu = @sy-langu
        AND req~type = @lv_type.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->REQTYPESET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_REQTYPE
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD reqtypeset_get_entityset.
  SELECT *
    FROM zhrt_ui5_reqtype AS req LEFT JOIN zhrt_ui5_rt_txt AS txt ON req~type = txt~type
    INTO CORRESPONDING FIELDS OF TABLE @et_entityset
      WHERE langu = @sy-langu.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->SCALESET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_SCALE
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method SCALESET_GET_ENTITYSET.
  DATA(lt_filter) = io_tech_request_context->get_filter( )->get_filter_select_options( ).
  DATA(lr_scale) = VALUE #( lt_filter[ property = 'SCALE_ID' ]-select_options OPTIONAL ).
  APPEND VALUE #( sign = 'I' option = 'EQ' low = '00000000' ) TO lr_scale.
  SELECT RATING,PSTEXT,SCALE_ID
    FROM T77TP
    WHERE LANGU = @sy-langu
    AND SCALE_ID IN @lr_scale
    INTO CORRESPONDING FIELDS OF TABLE @et_entityset.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->SOCIALPOSITIONSE_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_SOCIALPOSITION
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD socialpositionse_get_entityset.
* 11.08.2020 Серёгин И.М. 7700132611 Доработка приложения "Мои личные данные"
* исключил детей до 16 лет '0001'
*-----------------------------------------------------------------------
  DATA: ls_entity TYPE zcl_ui5_request_mpc=>ts_socialposition.

  SELECT t~work_num AS code,
         t~work_text AS name
  INTO CORRESPONDING FIELDS OF TABLE @et_entityset
  FROM zhrt_type_work AS t WHERE t~work_num NE '0001'.

  ls_entity-code = '0006'.
  ls_entity-name = 'РАБОТАЕТ'.

  APPEND ls_entity TO et_entityset.
  SORT et_entityset BY code.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->STATUSSET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_UI5_REQUEST_MPC=>TS_STATUS
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD statusset_get_entity.
    DATA(lt_key)  = io_tech_request_context->get_keys( ).
    DATA(lv_stat) = VALUE #( lt_key[ name = 'STATUS' ]-value OPTIONAL ).
    SELECT SINGLE *
      FROM zhrt_ui5_reqstat
      INTO CORRESPONDING FIELDS OF @er_entity
        WHERE status = @lv_stat.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->STATUSSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_STATUS
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD statusset_get_entityset.
    DATA(lv_where) = io_tech_request_context->get_osql_where_clause( ).

    SELECT *
      FROM zhrt_ui5_reqstat
      INTO CORRESPONDING FIELDS OF TABLE @et_entityset
        WHERE (lv_where).

*      IF et_entityset is NOT INITIAL.
*        SELECT COUNT( * ) as count,
*           STATUS from ZHRT_UI5_REQUEST INTO TABLE @data(lt_requests)
*           WHERE author = @sy-uname
*           group by status.
*          IF sy-subrc = '0'.
*            LOOP AT et_entityset ASSIGNING FIELD-SYMBOL(<fs_entset>).
*              READ TABLE lt_requests ASSIGNING FIELD-SYMBOL(<fs_request>) with key status = <fs_entset>-STATUS.
*                IF sy-subrc = 0.
*                  <fs_entset>-req_count = conv #( <fs_request>-count ).
*                ENDIF.
*            ENDLOOP.
*          ENDIF.
*      ENDIF.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->STREETSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_STREET
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD streetset_get_entityset.
  CONSTANTS c_street_shlpname TYPE shlpname VALUE 'HRPADRU_KLADR_STREET'.

  DATA: ls_shlp   TYPE shlp_descr,
        lt_return TYPE TABLE OF ddshretval.

  DATA(lt_filter_selopt) = io_tech_request_context->get_filter( )->get_filter_select_options( ).

  CALL FUNCTION 'F4IF_GET_SHLP_DESCR'
    EXPORTING
      shlpname = c_street_shlpname
    IMPORTING
      shlp     = ls_shlp.

  fill_shlp_selopt(
    EXPORTING
      it_filter_selopt = lt_filter_selopt
      iv_property      = 'COUNTRYCODE'
      iv_shlpname      = c_street_shlpname
      iv_shlpfield     = 'KLAND1'
    CHANGING
      ct_shlp_selopt   = ls_shlp-selopt ).

  fill_shlp_selopt(
    EXPORTING
      it_filter_selopt = lt_filter_selopt
      iv_property      = 'REGIONCODE'
      iv_shlpname      = c_street_shlpname
      iv_shlpfield     = 'KREGIO'
    CHANGING
      ct_shlp_selopt   = ls_shlp-selopt ).

  fill_shlp_selopt(
    EXPORTING
      it_filter_selopt = lt_filter_selopt
      iv_property      = 'AREACODE'
      iv_shlpname      = c_street_shlpname
      iv_shlpfield     = 'KCOUNC'
    CHANGING
      ct_shlp_selopt   = ls_shlp-selopt ).

  fill_shlp_selopt(
    EXPORTING
      it_filter_selopt = lt_filter_selopt
      iv_property      = 'CITYCODE'
      iv_shlpname      = c_street_shlpname
      iv_shlpfield     = 'KCODE_CITY'
    CHANGING
      ct_shlp_selopt   = ls_shlp-selopt ).

  fill_shlp_selopt(
    EXPORTING
      it_filter_selopt = lt_filter_selopt
      iv_property      = 'DISTRICTCODE'
      iv_shlpname      = c_street_shlpname
      iv_shlpfield     = 'KCODE_NP'
    CHANGING
      ct_shlp_selopt   = ls_shlp-selopt ).

  CALL FUNCTION 'F4IF_SELECT_VALUES'
    EXPORTING
      shlp           = ls_shlp
*     SORT           = ' '
      call_shlp_exit = abap_true
    TABLES
      return_tab     = lt_return.

  LOOP AT lt_return ASSIGNING FIELD-SYMBOL(<ls_return>) GROUP BY ( key = <ls_return>-recordpos ).
    APPEND INITIAL LINE TO et_entityset ASSIGNING FIELD-SYMBOL(<ls_entity>).
    <ls_entity>-countrycode  = VALUE #( lt_filter_selopt[ property = 'COUNTRYCODE' ]-select_options[ 1 ]-low OPTIONAL ).
    <ls_entity>-regioncode   = VALUE #( lt_filter_selopt[ property = 'REGIONCODE' ]-select_options[ 1 ]-low OPTIONAL ).
    <ls_entity>-areacode     = VALUE #( lt_filter_selopt[ property = 'AREACODE' ]-select_options[ 1 ]-low OPTIONAL ).
    <ls_entity>-citycode     = VALUE #( lt_filter_selopt[ property = 'CITYCODE' ]-select_options[ 1 ]-low OPTIONAL ).
    <ls_entity>-districtcode = VALUE #( lt_filter_selopt[ property = 'DISTRICTCODE' ]-select_options[ 1 ]-low OPTIONAL ).

    LOOP AT GROUP <ls_return> ASSIGNING FIELD-SYMBOL(<ls_member>).
      CASE <ls_member>-fieldname.
        WHEN 'KCODE'.
          <ls_entity>-streetcode = <ls_member>-fieldval.
        WHEN 'KSOCR_STREET'.
          <ls_entity>-shortname = <ls_member>-fieldval.
        WHEN 'KNAME_STREET'.
          <ls_entity>-formalname = <ls_member>-fieldval.
        WHEN OTHERS.
          CONTINUE.
      ENDCASE.
    ENDLOOP.
  ENDLOOP.
  sort et_entityset by formalname ASCENDING.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->SYSTEMSET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_UI5_REQUEST_MPC=>TS_SYSTEM
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD systemset_get_entity.
*----------------------------------------------------------------------*
* 15.12.2020 Иванов А.А. 7700149002 WRKPL без указания дохода
*----------------------------------------------------------------------*
  DATA(lv_subtype) = VALUE #( it_key_tab[ name = 'Rsubtype' ]-value OPTIONAL ).
  DATA(lv_langu) = VALUE #( it_key_tab[ name = 'Langu' ]-value OPTIONAL ).
  DATA(lv_use_form) = VALUE #( it_key_tab[ name = 'Use_form' ]-value OPTIONAL ).
* { 15.12.2020 Иванов А.А. 7700149002 WRKPL без указания дохода
  DATA(lv_type_sprav) = VALUE #( it_key_tab[ name = 'Type_sprav' ]-value OPTIONAL ).
* } 15.12.2020 Иванов А.А. 7700149002 WRKPL без указания дохода

  er_entity-sid = sy-sysid.
  er_entity-client = sy-mandt.
  er_entity-host = '/H/10.16.69.5/S/3297/H/saphr3 21'.
  er_entity-user = sy-uname.
  CALL FUNCTION 'CREATE_RFC_REENTRANCE_TICKET'
    IMPORTING
      ticket = er_entity-password
    EXCEPTIONS
      OTHERS = 1.


  IF lv_subtype = 'WRKPL'.
* { 15.12.2020 Иванов А.А. 7700149002 WRKPL без указания дохода
    CASE lv_type_sprav.
      WHEN '1'.
* } 15.12.2020 Иванов А.А. 7700149002 WRKPL без указания дохода
        IF lv_langu = 'EN'.
          IF lv_use_form = 'X'.
            er_entity-tcode = 'ZHR_SPWORK_ENL_FIORI'.
          ELSE.
            er_entity-tcode =  'ZHR_SPRAV_WORK_EN'.
          ENDIF.
        ELSE.
          IF lv_use_form = 'X'.
            er_entity-tcode =  'ZHR_SP_WORK_EN_FIORI'.
          ELSE.
            er_entity-tcode =  'ZHR_EBDS_SPRAV_WORK'.
          ENDIF.
        ENDIF.
* { 15.12.2020 Иванов А.А. 7700149002 WRKPL без указания дохода
      WHEN '0'.
        IF lv_langu = 'EN'.
          IF lv_use_form = 'X'.
            er_entity-tcode = 'ZHR_SPRAV_FIORI_WPEN'.
          ELSE.
            er_entity-tcode =  'ZHR_SPRAV_WORK_WP_EN'.
          ENDIF.
        ELSE.
          IF lv_use_form = 'X'.
            er_entity-tcode =  'ZHR_SPRAV_FIORI_WP'.
          ELSE.
            er_entity-tcode =  'ZHR_SPRAV_WORK_WP'.
          ENDIF.
        ENDIF.
    ENDCASE.
* } 15.12.2020 Иванов А.А. 7700149002 WRKPL без указания дохода
  ELSEIF lv_subtype = 'CHLST'.
    er_entity-tcode = 'ZHR_EBDS_SPRAV_CHILD'.
  ELSEIF lv_subtype = 'PAYDT'.
    DATA(lv_typ) = VALUE #( it_key_tab[ name = 'Free' ]-value OPTIONAL ).
    IF lv_typ EQ '0'.
      er_entity-tcode = 'ZHR_FIO_SPR_EVP'.
    ELSEIF lv_typ EQ '1'.
      er_entity-tcode = 'ZHR_FIO_SPR_EMP'.
    ENDIF.
  ENDIF.



*  er_entity-tcode = SWITCH #( lv_subtype
*                              WHEN 'CHLST' THEN 'ZHR_EBDS_SPRAV_CHILD'
*                              WHEN 'WRKPL' THEN 'ZHR_EBDS_SPRAV_WORK' ).

*        copy_data_to_ref( EXPORTING is_data = ls_stream
*                        CHANGING cr_data = er_stream ).
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->SYSTEMSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_SYSTEM
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD systemset_get_entityset.

    DATA(lv_subtype) = VALUE #( it_key_tab[ name = 'Rsubtype' ]-value OPTIONAL ).
    DATA(lv_langu) = VALUE #( it_key_tab[ name = 'Langu' ]-value OPTIONAL ).
    DATA(lv_use_form) = VALUE #( it_key_tab[ name = 'Use_form' ]-value OPTIONAL ).

    DATA: er_entity TYPE zcl_ui5_request_mpc=>ts_system.

    er_entity-sid = sy-sysid.
    er_entity-client = sy-mandt.
    er_entity-host = |/H/10.16.69.5/S/3297/H/{ sy-host } 21|.
    er_entity-user = sy-uname.
    CALL FUNCTION 'CREATE_RFC_REENTRANCE_TICKET'
      IMPORTING
        ticket = er_entity-password
      EXCEPTIONS
        OTHERS = 1.


    IF lv_subtype = 'WRKPL'.
    IF lv_langu = 'EN'.
      IF lv_use_form = 'X'.
        er_entity-tcode = 'ZHR_SPWORK_ENL_FIORI'.
      ELSE.
        er_entity-tcode =  'ZHR_SPRAV_WORK_EN'.
      ENDIF.
    ELSE.
      IF lv_use_form = 'X'.
        er_entity-tcode =  'ZHR_SP_WORK_EN_FIORI'.
      ELSE.
        er_entity-tcode =  'ZHR_EBDS_SPRAV_WORK'.
      ENDIF.
    ENDIF.
  ELSEIF lv_subtype = 'CHLST' OR lv_subtype = 'PAYDT'.
    er_entity-tcode =  'ZHR_EBDS_SPRAV_CHILD'.
  ENDIF.


*
*    er_entity-tcode = SWITCH #( lv_subtype
*                                WHEN 'CHLST' THEN 'ZHR_EBDS_SPRAV_CHILD'
*                                WHEN 'WRKPL' THEN 'ZHR_EBDS_SPRAV_WORK' ).

    APPEND er_entity TO et_entityset.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_UI5_REQUEST_DPC_EXT->VARIANTS_2NDFLSE_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_UI5_REQUEST_MPC=>TT_VARIANTS2NDFL
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD variants_2ndflse_get_entityset.
**TRY.
*CALL METHOD SUPER->VARIANTS_2NDFLSE_GET_ENTITYSET
*  EXPORTING
*    IV_ENTITY_NAME           =
*    IV_ENTITY_SET_NAME       =
*    IV_SOURCE_NAME           =
*    IT_FILTER_SELECT_OPTIONS =
*    IS_PAGING                =
*    IT_KEY_TAB               =
*    IT_NAVIGATION_PATH       =
*    IT_ORDER                 =
*    IV_FILTER_STRING         =
*    IV_SEARCH_STRING         =
**    io_tech_request_context  =
**  IMPORTING
**    et_entityset             =
**    es_response_context      =
*    .
** CATCH /iwbep/cx_mgw_busi_exception .
** CATCH /iwbep/cx_mgw_tech_exception .
**ENDTRY.
    DATA lv_pernr TYPE pernr_d.
    DATA lt_p0001 TYPE STANDARD TABLE OF p0001.

    CALL FUNCTION 'CRIF_GET_EMPLOYEE_FOR_USER'
      EXPORTING
        user_name               = sy-uname
      IMPORTING
        employeenumber          = lv_pernr
      EXCEPTIONS
        no_employeenumber_found = 1
        subtype_not_available   = 2
        OTHERS                  = 3.

    CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
    CALL FUNCTION 'HR_READ_INFOTYPE'
      EXPORTING
        pernr           = lv_pernr
        infty           = '0001'
        begda           = sy-datum
        endda           = sy-datum
      TABLES
        infty_tab       = lt_p0001
      EXCEPTIONS
        infty_not_found = 1
        invalid_input   = 2
        OTHERS          = 3.

    READ TABLE lt_p0001 INTO DATA(ls_p0001) INDEX 1.
    CHECK sy-subrc = 0.

    SELECT
       yeara
       variant
    FROM zhrt_ui5_2ndfl
    INTO CORRESPONDING FIELDS OF TABLE et_entityset
      WHERE persa = ls_p0001-werks.

  ENDMETHOD.
ENDCLASS.