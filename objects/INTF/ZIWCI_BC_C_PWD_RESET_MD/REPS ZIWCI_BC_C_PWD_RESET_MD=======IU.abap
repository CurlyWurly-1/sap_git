*=====================================================================*
* Intf.: ZIWCI_BC_C_PWD_RESET_MD
* Purp.: programming interface for WebDynpro cross component access of
*        controller:  <COMPONENTCONTROLLER> of
*        component:   <zbc_c_pwd_reset_md>
* UDate: 20230424 133818
*=====================================================================*
interface ziwci_bc_c_pwd_reset_md public.

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