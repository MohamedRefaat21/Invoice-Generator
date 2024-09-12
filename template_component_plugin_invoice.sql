prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.3'
,p_default_workspace_id=>26486318858433934198
,p_default_application_id=>135053
,p_default_id_offset=>0
,p_default_owner=>'WKSP_TESTFORPROJ'
);
end;
/
 
prompt APPLICATION 135053 - Features
--
-- Application Export:
--   Application:     135053
--   Name:            Features
--   Date and Time:   21:47 Thursday September 12, 2024
--   Exported By:     REFAATSILVA21@GMAIL.COM
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 37951735145332135314
--   Manifest End
--   Version:         24.1.3
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/template_component/invoice
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(37951735145332135314)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '')
,p_name=>'INVOICE'
,p_display_name=>'INVOICE'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="en">',
'<head>',
'  <meta charset="UTF-8" />',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge" />',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />',
'  <link',
'    href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap"',
'    rel="stylesheet"',
'  />',
'  <style>',
'    * {',
'      margin: 0;',
'      padding: 0;',
'      box-sizing: border-box;',
'    }',
'',
'    body {',
'      font-family: "Inter", sans-serif;',
'      background-color: #f4f4f4;',
'      padding: 20px;',
'    }',
'',
'    .wrapper-invoice {',
'      max-width: 900px;',
'      margin: 0 auto;',
'      background-color: #fff;',
'      border: 1px solid #dcdcdc;',
'      padding: 20px;',
'    }',
'',
'    .invoice-header {',
'      text-align: center;',
'      margin-bottom: 20px;',
'      position: relative;',
'    }',
'',
'    .invoice-header img {',
'      position: absolute;',
'      top: 0;',
'      left: 0;',
'      max-width: 100px;',
'      height: auto;',
'    }',
'',
'    .invoice-title {',
'      font-size: 2rem;',
'      font-weight: bold;',
'      color: #00008b;',
'    }',
'',
'    .invoice-details {',
'      display: flex;',
'      justify-content: space-between;',
'      margin-bottom: 20px;',
'    }',
'',
'    .invoice-details div {',
'      font-size: 1rem;',
'      color: gray;',
'    }',
'',
'    .invoice-details div p {',
'      margin-bottom: 5px;',
'    }',
'',
'    .invoice-info {',
'      margin-top: 20px;',
'      background-color: #f9f9f9;',
'      border: 1px solid #e6e6e6;',
'      padding: 10px;',
'      border-radius: 5px;',
'    }',
'',
'    .invoice-info table {',
'      width: 100%;',
'      border-collapse: collapse;',
'    }',
'',
'    .invoice-info th,',
'    .invoice-info td {',
'      padding: 10px;',
'      text-align: left;',
'    }',
'',
'    .invoice-info th {',
'      background-color: #e6e6e6;',
'      color: #333;',
'    }',
'',
'    .invoice-info td {',
'      background-color: #f9f9f9;',
'      border-bottom: 1px solid #e6e6e6;',
'    }',
'',
'    .invoice-table {',
'      width: 100%;',
'      border-collapse: collapse;',
'      margin-top: 20px;',
'    }',
'',
'    .invoice-table thead {',
'      background-color: #007bff;',
'    }',
'',
'    .invoice-table th,',
'    .invoice-table td {',
'      border: 1px solid #dcdcdc;',
'      padding: 10px;',
'      text-align: center;',
'    }',
'',
'    .invoice-table th {',
'      color: white;',
'      font-weight: bold;',
'    }',
'',
'    .invoice-table tbody tr:nth-child(odd) {',
'      background-color: #f9f9f9;',
'    }',
'',
'    .invoice-table tbody tr:nth-child(even) {',
'      background-color: #ffffff;',
'    }',
'',
'    .invoice-signature {',
'      text-align: right;',
'      margin-top: 40px;',
'    }',
'',
'    .invoice-signature img {',
'      max-width: 150px;',
'      width: 100%;',
'    }',
'',
'    .total-amount {',
'      font-weight: bold;',
'      font-size: 1.2rem;',
'    }',
'  </style>',
'</head>',
'<body>',
'  <section class="wrapper-invoice">',
'    <div class="invoice-header">',
'      <img src="#LOGO#" alt="Logo" />',
'      <h3 class="invoice-title">INVOICE</h3>',
'      <p>Invoice No: #INVOICE_NO#</p>',
'      <p>Date: #INVOICE_DATE#</p>',
'    </div>',
'',
'    <div class="invoice-details">',
'      <div>',
'        <p><strong>Invoice To:</strong></p>',
'        <p>#PATIENT_NAME#</p>',
'        <p>#PATIENT_ADDRESS#</p>',
'      </div>',
'      <div>',
'        <p><strong>Invar Hospital:</strong></p>',
'        <p>4510 E 96th St, Indianapolis, IN 46240</p>',
'        <p>info@invarhospital.com</p>',
'        <p>+153 6547 3698</p>',
'      </div>',
'    </div>',
'',
'    <div class="invoice-info">',
'      <p class="title">Patient Information:</p>',
'      <table>',
'        <tr>',
'          <th>Field</th>',
'          <th>Details</th>',
'        </tr>',
'        <tr>',
'          <td><strong>Patient Name:</strong></td>',
'          <td>#PATIENT_NAME#</td>',
'        </tr>',
'        <tr>',
'          <td><strong>Patient ID:</strong></td>',
'          <td>#PATIENT_ID#</td>',
'        </tr>',
'        <tr>',
'          <td><strong>Patient Age:</strong></td>',
'          <td>#PATIENT_AGE#</td>',
'        </tr>',
'        <tr>',
'          <td><strong>Service:</strong></td>',
'          <td>#SERVICE#</td>',
'        </tr>',
'        <tr>',
'          <td><strong>Due Date:</strong></td>',
'          <td>#DUE_DATE#</td>',
'        </tr>',
'        <tr>',
'          <td><strong>Insurance Billed:</strong></td>',
'          <td>#INSURANCE_BILLED#</td>',
'        </tr>',
'        <tr>',
'          <td><strong>Address:</strong></td>',
'          <td>#PATIENT_ADDRESS#</td>',
'        </tr>',
'      </table>',
'    </div>',
'',
'    <table class="invoice-table">',
'      <thead>',
'        <tr>',
'          <th>SL</th>',
'          <th>Item Descriptions</th>',
'          <th>Price</th>',
'          <th>Tax</th>',
'          <th>Amount</th>',
'        </tr>',
'      </thead>',
'      <tbody>',
'',
'        <tr>',
'          <td>01</td>',
'          <td>Blood Test</td>',
'          <td>$250.00</td>',
'          <td>10%</td>',
'          <td>$275.00</td>',
'        </tr>',
'        <tr>',
'          <td>02</td>',
'          <td>Test Kit</td>',
'          <td>$15.00</td>',
'          <td>2%</td>',
'          <td>$15.30</td>',
'        </tr>',
'',
'      </tbody>',
'    </table>',
'',
'    <div class="invoice-signature">',
'      <p class="total-amount">Total Amount: 7000 EGP</p>',
'      <p><strong>Paid:</strong> 6000 EGP</p>',
'      <p><strong>Balance Due:</strong> 1000 EGP</p>',
'      <img src="#SIGNATURE_IMG#" alt="Signature" />',
'    </div>',
'  </section>',
'</body>',
'</html>',
''))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_report_body_template=>'<ul>#APEX$ROWS#</ul>'
,p_report_row_template=>'<li #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>'
,p_report_placeholder_count=>3
,p_standard_attributes=>'REGION_TEMPLATE'
,p_substitute_attributes=>true
,p_version_scn=>15567970676010
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(37951735480480135329)
,p_plugin_id=>wwv_flow_imp.id(37951735145332135314)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'DUE_DATE'
,p_prompt=>'Due Date'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(37951735889100135330)
,p_plugin_id=>wwv_flow_imp.id(37951735145332135314)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'INSURANCE_BILLED'
,p_prompt=>'Insurance Billed'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(37951736248620135330)
,p_plugin_id=>wwv_flow_imp.id(37951735145332135314)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'INVOICE_DATE'
,p_prompt=>'Invoice Date'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(37951736604531135331)
,p_plugin_id=>wwv_flow_imp.id(37951735145332135314)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'INVOICE_NO'
,p_prompt=>'Invoice No'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(37951737030651135331)
,p_plugin_id=>wwv_flow_imp.id(37951735145332135314)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'PATIENT_ADDRESS'
,p_prompt=>'Patient Address'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(37951737428060135331)
,p_plugin_id=>wwv_flow_imp.id(37951735145332135314)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'PATIENT_AGE'
,p_prompt=>'Patient Age'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(37951737856518135332)
,p_plugin_id=>wwv_flow_imp.id(37951735145332135314)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'PATIENT_ID'
,p_prompt=>'Patient Id'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(37951738242403135332)
,p_plugin_id=>wwv_flow_imp.id(37951735145332135314)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'PATIENT_NAME'
,p_prompt=>'Patient Name'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(37951738683438135332)
,p_plugin_id=>wwv_flow_imp.id(37951735145332135314)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_static_id=>'SERVICE'
,p_prompt=>'Service'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(37958319698322264570)
,p_plugin_id=>wwv_flow_imp.id(37951735145332135314)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'SIGNATURE_IMG'
,p_prompt=>'Signature Img'
,p_attribute_type=>'MEDIA'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(37962123671340347965)
,p_plugin_id=>wwv_flow_imp.id(37951735145332135314)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_static_id=>'LOGO'
,p_prompt=>'Logo'
,p_attribute_type=>'MEDIA'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
