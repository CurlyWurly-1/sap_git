ENHANCEMENT 1  .
*
log__method( name = '/ui2/cl_sra_login->init_default_properties' msg = 'iv_context=[&A&]' a = iv_context ).

init_langu_rtl( ).

" Common properties
set_property( iv_name = 'header_visible' iv_value = 'false' ). "#EC NOTEXT
set_property( iv_name = 'img_favicon' iv_value = '/sap/public/bc/ui2/logon/img/favicon.ico' ).
set_property( iv_name = 'img_logo' iv_value = '/sap/public/bc/ui2/logon/img/sap_logo.png' ).
set_property( iv_name = 'img_logo_width' iv_value = '64' ).
set_property( iv_name = 'img_background' iv_value = '/sap/public/bc/ui2/logon/img/login_background.jpg' ).
set_property( iv_name = 'img_background_mobile' iv_value = '/sap/public/bc/ui2/logon/img/login_background_mobile.jpg' ).
set_property( iv_name = 'img_background_mobile_land' iv_value = '/sap/public/bc/ui2/logon/img/login_background_mobile_land.jpg' ).
set_property( iv_name = 'img_background_ie8' iv_value = '/sap/public/bc/ui2/logon/img/login_background_ie8.jpg' ).
set_property( iv_name = 'label_copyright' iv_value = m_txt_copyright ).
set_property( iv_name = 'label_user' iv_value = m_txt_label_user ).
set_property( iv_name = 'script_included' iv_value = '/sap/public/bc/ui2/logon/login.js' ).
set_property( iv_name = 'style_confirmpwd_error' iv_value = 'sapUiSraTextError' ).
set_property( iv_name = 'template_css' iv_value = '/sap/public/bc/ui2/logon/template_css.css' ).
set_property( iv_name = 'template_css_ie8' iv_value = '/sap/public/bc/ui2/logon/template_css_ie8.css' ).
set_property( iv_name = 'ui5_theme' iv_value = 'sap_bluecrystal' ).
set_property( iv_name = 'text_error_user_initial' iv_value = m_txt_login_error_user_initial ).
set_property( iv_name = 'text_error_pwd_initial' iv_value = m_txt_login_error_pw_initial ).
set_property( iv_name = 'text_error_client_initial' iv_value = m_txt_login_error_clnt_init ).
set_property( iv_name = 'button_focus_color' iv_value = '#d0d0d0' ).
set_property( iv_name = 'button_submit_focus_color' iv_value = '#007cc0' ).
set_property( iv_name = 'message_error_background_color' iv_value = '#fad4d4' ).
set_property( iv_name = 'message_error_border_color' iv_value = '#e52929' ).
set_property( iv_name = 'message_error_focus_color' iv_value = '#dab4b4' ).
set_property( iv_name = 'message_info_background_color' iv_value = '#f7f7f7' ).
set_property( iv_name = 'message_info_focus_color' iv_value = '#d0d0d0' ).

CASE iv_context.
WHEN co_context_login.
set_property( iv_name = 'label_button_login' iv_value = m_txt_button_login ).
set_property( iv_name = 'label_button_login_loading' iv_value = m_txt_button_login ).
set_property( iv_name = 'label_change_password' iv_value = m_txt_button_login_change_pwd ).

DATA: lv_url          TYPE string.
DATA: lt_match_result_tab TYPE match_result_tab,
ls_match_result     TYPE match_result.

CALL METHOD cl_wd_utilities=>construct_wd_url
EXPORTING
application_name = 'ZBC_A_PWD_RESET_UI'
IMPORTING
out_absolute_url = lv_url.

FIND ALL OCCURRENCES OF '/' IN lv_url RESULTS lt_match_result_tab.
READ TABLE lt_match_result_tab INTO ls_match_result INDEX 3.


CASE sy-sysid.
WHEN 'A4H'.
CONCATENATE 'https://vhcala4hci:50001' lv_url+ls_match_result-offset INTO lv_url.
WHEN 'NPL'.
CONCATENATE 'https://vhcalnplci:44300' lv_url+ls_match_result-offset INTO lv_url.
WHEN 'DEV'.
CONCATENATE 'https://sapdev.medavie.bluecross.ca' lv_url+ls_match_result-offset INTO lv_url.
WHEN 'QEV'.
CONCATENATE 'https://sapqa.medavie.bluecross.ca' lv_url+ls_match_result-offset INTO lv_url.
WHEN 'PEV'.
CONCATENATE 'https://sap.medavie.bluecross.ca' lv_url+ls_match_result-offset INTO lv_url.
WHEN OTHERS.
ENDCASE.

DATA: lv_value TYPE string.
select single text from t100 into lv_value where sprsl eq sy-langu and ARBGB eq 'ZBC_RESET_PASSWORD' and MSGNR eq '024'.
set_property( iv_name = 'label_forgot_password' iv_value = lv_value ).
set_property( iv_name = 'url_forgot_password' iv_value = lv_url ).

set_property( iv_name = 'label_client' iv_value = m_txt_label_client ).
set_property( iv_name = 'label_language' iv_value = m_txt_label_language ).
set_property( iv_name = 'label_password' iv_value = m_txt_label_password ).
set_property( iv_name = 'label_title_login' iv_value = m_txt_title_login ).
set_property( iv_name = 'template_login' iv_value = '/sap/public/bc/ui2/logon/template_login.html' ).

WHEN co_context_changepwd.
set_property( iv_name = 'label_button_cancel' iv_value = m_txt_button_cancel ).
set_property( iv_name = 'label_button_change' iv_value = m_txt_button_change_passwd ).
set_property( iv_name = 'label_confirm_password' iv_value = m_txt_label_new_password2 ).
set_property( iv_name = 'label_current_password' iv_value = m_txt_label_current_password ).
set_property( iv_name = 'label_new_password' iv_value = m_txt_label_new_password ).
set_property( iv_name = 'label_title_changepwd' iv_value = m_txt_title_change_password ).
set_property( iv_name = 'template_changepwd' iv_value = '/sap/public/bc/ui2/logon/template_changepwd.html' ).

WHEN co_context_changepwd_end.
set_property( iv_name = 'label_button_continue' iv_value = m_txt_button_continue ).
set_property( iv_name = 'label_title_changepwd_end' iv_value = m_txt_title_change_password ).
set_property( iv_name = 'template_changepwd_end' iv_value = '/sap/public/bc/ui2/logon/template_changepwd_end.html' ).

WHEN co_context_changepwd_cancel.
set_property( iv_name = 'label_button_changepwd_not_possible' iv_value = m_txt_button_cancel ).
set_property( iv_name = 'label_title_changepwd_not_possible' iv_value = m_txt_title_change_password ).
set_property( iv_name = 'template_changepwd_cancel' iv_value = '/sap/public/bc/ui2/logon/template_changepwd_cancel.html' ).

WHEN co_context_msg.
set_property( iv_name = 'script_msg_selfsubmit_error' iv_value = '0' ).
set_property( iv_name = 'script_msg_selfsubmit_info' iv_value = '0' ).
set_property( iv_name = 'script_msg_selfsubmit_ok' iv_value = '5000' ).
set_property( iv_name = 'label_msg_class_error' iv_value = 'sapUiSraMessageError' ). "#EC NOTEXT
set_property( iv_name = 'label_msg_class_info' iv_value = 'sapUiSraMessageInfo' ).
set_property( iv_name = 'label_msg_class_ok' iv_value = 'sapUiSraMessageInfo' ).
set_property( iv_name = 'button_msg_class_error' iv_value = 'sapMBtnDefault' ). "#EC NOTEXT
set_property( iv_name = 'button_msg_class_info' iv_value = 'sapMBtnDefault' ). "#EC NOTEXT
set_property( iv_name = 'button_msg_class_ok' iv_value = 'sapMBtnEmphasized' ). "#EC NOTEXT
set_property( iv_name = 'label_button_msg_error' iv_value = m_txt_button_cancel ).
set_property( iv_name = 'label_button_msg_info' iv_value = m_txt_button_continue ).
set_property( iv_name = 'label_button_msg_ok' iv_value = m_txt_button_continue ).
set_property( iv_name = 'label_title_msg_error' iv_value = m_txt_title_error ).
set_property( iv_name = 'label_title_msg_info' iv_value = m_txt_title_login_information ).
set_property( iv_name = 'label_title_msg_ok' iv_value = m_txt_title_login ).
set_property( iv_name = 'template_msg' iv_value = '/sap/public/bc/ui2/logon/template_msg.html' ).
ENDCASE.

log__end_method( ).

exit.
ENDENHANCEMENT.