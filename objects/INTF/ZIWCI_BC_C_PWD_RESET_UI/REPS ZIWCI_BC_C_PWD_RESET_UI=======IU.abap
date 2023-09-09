*=====================================================================*
* Intf.: ZIWCI_BC_C_PWD_RESET_UI
* Purp.: programming interface for WebDynpro cross component access of
*        controller:  <COMPONENTCONTROLLER> of
*        component:   <zbc_c_pwd_reset_ui>
* UDate: 20230424 165130
*=====================================================================*
interface ziwci_bc_c_pwd_reset_ui public.

* +-------------------------------------------------------------------+
* |  context type definitions                                         |
* +-------------------------------------------------------------------+

********
* @Returns:  controller runtime interface
********
  methods wd_get_api
    returning
      value(Result) type ref to IF_WD_CONTROLLER.  "#EC NEEDED


endinterface.