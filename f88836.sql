set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.4.00.12'
,p_default_workspace_id=>24497178253970750242
,p_default_application_id=>88836
,p_default_owner=>'DB_TESTE'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 88836 - SISADD - Sistema de Apoio ao Desenvolvimento Descentralizado
--
-- Application Export:
--   Application:     88836
--   Name:            SISADD - Sistema de Apoio ao Desenvolvimento Descentralizado
--   Date and Time:   13:30 Wednesday December 14, 2016
--   Exported By:     FILIPEBORGES
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.4.00.12
--   Instance ID:     63113759365424
--

-- Application Statistics:
--   Pages:                     51
--     Items:                  241
--     Computations:             1
--     Validations:             24
--     Processes:               65
--     Regions:                100
--     Buttons:                133
--     Dynamic Actions:         42
--   Shared Components:
--     Logic:
--     Navigation:
--       Lists:                  5
--       Breadcrumbs:            1
--         Entries:              1
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              14
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:              10
--       Shortcuts:              1
--     Globalization:
--     Reports:
--   Supporting Objects:  Included
--     Install scripts:          3

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,88836)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'DB_TESTE')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'SISADD - Sistema de Apoio ao Desenvolvimento Descentralizado')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_88836')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'2D973CC26CFC20B17E6DA5FB219F95E8D9B01F1944C33CA06980E85DFE937E97'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'pt-br'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(39024470523216847663)
,p_application_tab_set=>1
,p_logo_image=>'TEXT:SISADD - Sistema de Apoio ao Desenvolvimento Descentralizado'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_upd_yyyymmddhh24miss=>'20161214132857'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(39024427955459847606)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(39024471776707847666)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Início'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(47080602703595293861)
,p_list_item_display_sequence=>149
,p_list_item_link_text=>'Ciclo de Vida'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(39024471776707847666)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(47079695052566617535)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Etapas Ciclo de Vida'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(39024471776707847666)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(47079818596614266846)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Requisitos'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(47079695052566617535)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(47080658085789301263)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Banco de Dados'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(47079695052566617535)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(47080661422158303354)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'Implementação'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(47079695052566617535)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(47080663798672305157)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'Teste'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(47079695052566617535)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(47080667848817689545)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'Homologação'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(47079695052566617535)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(47080721183358308060)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Implantação'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(47079695052566617535)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(43346823498643535706)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Meus Projetos'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(43347013566663195411)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Listar'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:RP,24:::'
,p_parent_list_item_id=>wwv_flow_api.id(43346823498643535706)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(43347063077600200052)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Cadastrar'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:13:::'
,p_parent_list_item_id=>wwv_flow_api.id(43346823498643535706)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(48495837575129684928)
,p_list_item_display_sequence=>250
,p_list_item_link_text=>'Gerência'
,p_list_item_link_target=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(43346823498643535706)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(48728269945913420602)
,p_list_item_display_sequence=>260
,p_list_item_link_text=>'Modelo de Dados'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:25:::'
,p_parent_list_item_id=>wwv_flow_api.id(43346823498643535706)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(45013245922776729049)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Suporte Geral'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(45013358445602744637)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Gerador de Casos de Teste'
,p_list_item_link_target=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.:57:::'
,p_parent_list_item_id=>wwv_flow_api.id(45013245922776729049)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(45013528534315147042)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Código Reutilizável'
,p_list_item_link_target=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(45013245922776729049)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(45013554605483769163)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Erros Conhecidos'
,p_list_item_link_target=>'f?p=&APP_ID.:62:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(45013245922776729049)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(47079387331621594143)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Escolher Técnica de Elicitação'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:21:::'
,p_parent_list_item_id=>wwv_flow_api.id(45013245922776729049)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(48297582165040966056)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'Consulta Rápida a Informações'
,p_list_item_link_target=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(45013245922776729049)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(45013979254637197339)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Administração'
,p_list_item_icon=>'fa-cog'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(45014120904223211708)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Cadastro de Técnicas (Técnicas de Elicitação)'
,p_list_item_link_target=>'f?p=&APP_ID.:75:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(45013979254637197339)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(48344944094699893925)
,p_list_item_display_sequence=>230
,p_list_item_link_text=>'Cadastro de Parâmetros (Técnicas de Elicitação)'
,p_list_item_link_target=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(45013979254637197339)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(48344973551824898170)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>'Cadastro de Pesos (Técnicas de Elicitação)'
,p_list_item_link_target=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(45013979254637197339)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(45015009593797918423)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Ajuda'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(45015015220116303337)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Tutorial'
,p_list_item_disp_cond_type=>'NEVER'
,p_parent_list_item_id=>wwv_flow_api.id(45015009593797918423)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(45015021738986305758)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Sobre o SISADD'
,p_list_item_link_target=>'f?p=&APP_ID.:76:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(45015009593797918423)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(39024470214228847662)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(45015420106270333427)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Serviços de TI (Sistemas)'
,p_list_item_link_target=>'javascript:window.open(''https://contas.tcu.gov.br/ords/f?p=catalogo_servicos'')'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(45015689168265353214)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Fale Conosco'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(39024470414114847662)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Efetuar Log-Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(40172236701581173821)
,p_name=>'Etapas do desenvolvimento'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(40172236952769173823)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'<a href="f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP::">Requisitos</a>'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(40172237355764173823)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'<a href="f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP::">Banco de Dados</a>'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(40172237741879173825)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'<a href="f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RP::">Implementação</a>'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RP:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(40172238121337173826)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'<a href="f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP::">Teste</a>'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(40172238582081173826)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'<a href="f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP::">Homologação</a>'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(40172279531184181484)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'<a href="f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP::">Implantação</a>'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(44148344909703085521)
,p_name=>'Navegação requisitos'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(44148365123044085522)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Informações <br>do Sistema'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:14:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(44148365523433085523)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Atores do Sistema'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:15:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(44148365905731085524)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Features'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:16:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(44148366339944085524)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Funcionalidades'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:17:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(44148366778847085525)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Requisitos <br>Não-Funcionais'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:18:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(44148672519222112652)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Regras de Negócio'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:19:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(44148672826338112653)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Rastreabilidade<br>dos Requisitos'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(45504516877111282246)
,p_name=>'Teste_Kanban'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT null, nome_funcionalidade',
'FROM tb_sae_funcionalidade',
'WHERE cod_feature',
'IN',
'(',
'    SELECT cod',
'    FROM tb_sae_feature',
'    WHERE cod_projeto = :P24_SELECAO_DO_PROJETO',
')',
'ORDER BY nome_funcionalidade'))
,p_list_status=>'PUBLIC'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(39024427634961847606)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(39024427778103847606)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(39024427844441847606)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
null;
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(39024471671255847666)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(39024472051173847667)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(39024428072634847606)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024428170599847607)
,p_page_template_id=>wwv_flow_api.id(39024428072634847606)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024428234511847607)
,p_page_template_id=>wwv_flow_api.id(39024428072634847606)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024428312344847607)
,p_page_template_id=>wwv_flow_api.id(39024428072634847606)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024428469584847607)
,p_page_template_id=>wwv_flow_api.id(39024428072634847606)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024428549621847607)
,p_page_template_id=>wwv_flow_api.id(39024428072634847606)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024428628858847607)
,p_page_template_id=>wwv_flow_api.id(39024428072634847606)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024428700754847607)
,p_page_template_id=>wwv_flow_api.id(39024428072634847606)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024428803865847607)
,p_page_template_id=>wwv_flow_api.id(39024428072634847606)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(39024428902493847609)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024429037966847609)
,p_page_template_id=>wwv_flow_api.id(39024428902493847609)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024429115000847609)
,p_page_template_id=>wwv_flow_api.id(39024428902493847609)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024429274449847609)
,p_page_template_id=>wwv_flow_api.id(39024428902493847609)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024429347475847609)
,p_page_template_id=>wwv_flow_api.id(39024428902493847609)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024429432041847609)
,p_page_template_id=>wwv_flow_api.id(39024428902493847609)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024429516501847609)
,p_page_template_id=>wwv_flow_api.id(39024428902493847609)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024429606647847609)
,p_page_template_id=>wwv_flow_api.id(39024428902493847609)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024429700658847609)
,p_page_template_id=>wwv_flow_api.id(39024428902493847609)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024429817206847609)
,p_page_template_id=>wwv_flow_api.id(39024428902493847609)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(39024429938678847609)
,p_theme_id=>42
,p_name=>'Login'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="html-login no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="html-login no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="html-login no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024430042289847609)
,p_page_template_id=>wwv_flow_api.id(39024429938678847609)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024430115369847609)
,p_page_template_id=>wwv_flow_api.id(39024429938678847609)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(39024430226844847609)
,p_theme_id=>42
,p_name=>'Master Detail'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024430312651847610)
,p_page_template_id=>wwv_flow_api.id(39024430226844847609)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024430401848847610)
,p_page_template_id=>wwv_flow_api.id(39024430226844847609)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024430556947847610)
,p_page_template_id=>wwv_flow_api.id(39024430226844847609)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024430651185847613)
,p_page_template_id=>wwv_flow_api.id(39024430226844847609)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024430751505847613)
,p_page_template_id=>wwv_flow_api.id(39024430226844847609)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024430802847847613)
,p_page_template_id=>wwv_flow_api.id(39024430226844847609)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024430910156847613)
,p_page_template_id=>wwv_flow_api.id(39024430226844847609)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024431067196847613)
,p_page_template_id=>wwv_flow_api.id(39024430226844847609)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024431121805847613)
,p_page_template_id=>wwv_flow_api.id(39024430226844847609)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(39024431287152847613)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024431323504847613)
,p_page_template_id=>wwv_flow_api.id(39024431287152847613)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024431426140847613)
,p_page_template_id=>wwv_flow_api.id(39024431287152847613)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024431570406847613)
,p_page_template_id=>wwv_flow_api.id(39024431287152847613)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024431684295847613)
,p_page_template_id=>wwv_flow_api.id(39024431287152847613)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024431711249847613)
,p_page_template_id=>wwv_flow_api.id(39024431287152847613)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024431873954847613)
,p_page_template_id=>wwv_flow_api.id(39024431287152847613)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024431926045847613)
,p_page_template_id=>wwv_flow_api.id(39024431287152847613)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(39024432048158847613)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-wrapper">',
'    <div class="t-Dialog-header">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Dialog-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'500'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--standard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024432129433847614)
,p_page_template_id=>wwv_flow_api.id(39024432048158847613)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024432222255847614)
,p_page_template_id=>wwv_flow_api.id(39024432048158847613)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024432311458847614)
,p_page_template_id=>wwv_flow_api.id(39024432048158847613)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(39024432498736847614)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024432516818847614)
,p_page_template_id=>wwv_flow_api.id(39024432498736847614)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024432648171847614)
,p_page_template_id=>wwv_flow_api.id(39024432498736847614)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024432786104847614)
,p_page_template_id=>wwv_flow_api.id(39024432498736847614)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024432805663847614)
,p_page_template_id=>wwv_flow_api.id(39024432498736847614)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024432966766847614)
,p_page_template_id=>wwv_flow_api.id(39024432498736847614)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024433000630847614)
,p_page_template_id=>wwv_flow_api.id(39024432498736847614)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024433178593847614)
,p_page_template_id=>wwv_flow_api.id(39024432498736847614)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024433256469847614)
,p_page_template_id=>wwv_flow_api.id(39024432498736847614)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(39024433371899847614)
,p_theme_id=>42
,p_name=>'Standard'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024433428094847614)
,p_page_template_id=>wwv_flow_api.id(39024433371899847614)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024433584053847614)
,p_page_template_id=>wwv_flow_api.id(39024433371899847614)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024433648654847615)
,p_page_template_id=>wwv_flow_api.id(39024433371899847614)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024433725315847615)
,p_page_template_id=>wwv_flow_api.id(39024433371899847614)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024433843542847615)
,p_page_template_id=>wwv_flow_api.id(39024433371899847614)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024433977305847615)
,p_page_template_id=>wwv_flow_api.id(39024433371899847614)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024434043744847615)
,p_page_template_id=>wwv_flow_api.id(39024433371899847614)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(39024434185888847615)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Wizard t-Wizard--modal">',
'    <div class=" t-Wizard-steps">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Wizard-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Wizard-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'480'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--wizard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024434207368847615)
,p_page_template_id=>wwv_flow_api.id(39024434185888847615)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024434395329847615)
,p_page_template_id=>wwv_flow_api.id(39024434185888847615)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024434492385847615)
,p_page_template_id=>wwv_flow_api.id(39024434185888847615)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(39024465066984847656)
,p_template_name=>'Icon'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(39024465198460847656)
,p_template_name=>'Text'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(39024465202625847656)
,p_template_name=>'Text with Icon'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(39024434502659847615)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #BODY#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024434630936847616)
,p_plug_template_id=>wwv_flow_api.id(39024434502659847615)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(39024436039559847618)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(39024436143615847618)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024436250699847618)
,p_plug_template_id=>wwv_flow_api.id(39024436143615847618)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024436310527847619)
,p_plug_template_id=>wwv_flow_api.id(39024436143615847618)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(39024437081578847619)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024437170654847619)
,p_plug_template_id=>wwv_flow_api.id(39024437081578847619)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024437244079847619)
,p_plug_template_id=>wwv_flow_api.id(39024437081578847619)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(39024440463919847622)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024440537133847623)
,p_plug_template_id=>wwv_flow_api.id(39024440463919847622)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024440662209847623)
,p_plug_template_id=>wwv_flow_api.id(39024440463919847622)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(39024442537966847624)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h2 class="t-HeroRegion-title">#TITLE#</h2>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024442617582847624)
,p_plug_template_id=>wwv_flow_api.id(39024442537966847624)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(39024442761670847624)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-body js-regionDialog-body">',
'#BODY#',
'  </div>',
'  <div class="t-DialogRegion-buttons js-regionDialog-buttons">',
'     <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'       <div class="t-ButtonRegion-wrap">',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'       </div>',
'     </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024442859447847624)
,p_plug_template_id=>wwv_flow_api.id(39024442761670847624)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(39024443613162847625)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(39024443946133847625)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024444079803847625)
,p_plug_template_id=>wwv_flow_api.id(39024443946133847625)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(39024444156989847625)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024444226654847625)
,p_plug_template_id=>wwv_flow_api.id(39024444156989847625)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024444398020847625)
,p_plug_template_id=>wwv_flow_api.id(39024444156989847625)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(39024446290799847629)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024446300806847629)
,p_plug_template_id=>wwv_flow_api.id(39024446290799847629)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024446499068847629)
,p_plug_template_id=>wwv_flow_api.id(39024446290799847629)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(39024447486672847631)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(39024447998768847633)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(39024448036031847633)
,p_plug_template_id=>wwv_flow_api.id(39024447998768847633)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(46685118322448794200)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="sortableRegion" id="#REGION_STATIC_ID#">',
'<h2>#TITLE#</h2>',
'<ul class="connectedSortable">',
'#BODY#',
'</ul>',
'<input type="hidden" name="f01" value="0" />',
'</div>'))
,p_page_plug_template_name=>'Sortable region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(39024456375064847643)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_theme_id=>42
,p_theme_class_id=>3
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(39024458038162847648)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2885322685880632508
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(39024460130596847651)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(39024460952340847651)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2066548068783481421
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(39024461813886847652)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(39024462340341847653)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({ slide: e.hasClass("js-slide")});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(39024462409537847653)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(39024462508443847653)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$(''body'').addClass(''t-PageBody--leftNav'');',
''))
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(39024462606726847654)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_theme_id=>42
,p_theme_class_id=>7
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(39024463571398847654)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(39024464081147847654)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(39024448553968847633)
,p_row_template_name=>'Alerts'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(39024448680522847634)
,p_row_template_name=>'Badge List'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(39024450394631847635)
,p_row_template_name=>'Cards'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(39024452426807847638)
,p_row_template_name=>'Comments'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(39024452829309847639)
,p_row_template_name=>'Search Results'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(39024452959156847639)
,p_row_template_name=>'Standard'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(39024452959156847639)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(39024454249165847641)
,p_row_template_name=>'Timeline'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline">',
''))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(39024454471587847641)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(39024455456819847642)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(46685081511267773623)
,p_row_template_name=>'Sortable report'
,p_row_template1=>'<li class="#CLASS#"><input type="hidden" name="f01" value="#VALUE#" />#DISPLAY#</li>'
,p_row_template_before_rows=>' '
,p_row_template_after_rows=>' '
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>42
,p_theme_class_id=>7
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(39024464579609847655)
,p_template_name=>'Hidden'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(39024464640151847655)
,p_template_name=>'Optional'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(39024464732272847655)
,p_template_name=>'Optional - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(39024464849646847655)
,p_template_name=>'Required'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(39024464994252847656)
,p_template_name=>'Required - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(39024465672457847656)
,p_name=>'Breadcrumb'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><span class="t-Breadcrumb-label">#NAME#</span></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(39024465828098847657)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(39024465770337847657)
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal">',
'<h1 class="uMonth">#IMONTH# <span>#YYYY#</span></h1>'))
,p_cust_day_of_week_format=>'<th scope="col" class="uCalDayCol" id="#DY#">#IDAY#</th>'
,p_cust_month_open_format=>'<table class="uCal" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>',
''))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="uDay today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="uDay nonday" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="uDayTitle weekendday">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="uDay" headers="#DY#">'
,p_cust_weekend_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uDayData">#DATA#</span>',
'</td>'))
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="uCalHour" id="#TIME#">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal uCalWeekly">',
'<h1 class="uMonth">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="uCalDayCol" id="#DY#">',
'  <span class="visible-desktop">#DD# #IDAY#</span>',
'  <span class="hidden-desktop">#DD# <em>#IDY#</em></span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="uCal">'
,p_cust_wk_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_wk_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="uDay today" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_open_format=>'<td class="uDay weekend" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_close_format=>'</div></td>'
,p_agenda_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(39024466279703847659)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(39024433371899847614)
,p_default_dialog_template=>wwv_flow_api.id(39024432048158847613)
,p_error_template=>wwv_flow_api.id(39024429938678847609)
,p_printer_friendly_template=>wwv_flow_api.id(39024433371899847614)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(39024429938678847609)
,p_default_button_template=>wwv_flow_api.id(39024465198460847656)
,p_default_region_template=>wwv_flow_api.id(39024444156989847625)
,p_default_chart_template=>wwv_flow_api.id(39024444156989847625)
,p_default_form_template=>wwv_flow_api.id(39024444156989847625)
,p_default_reportr_template=>wwv_flow_api.id(39024444156989847625)
,p_default_tabform_template=>wwv_flow_api.id(39024444156989847625)
,p_default_wizard_template=>wwv_flow_api.id(39024444156989847625)
,p_default_menur_template=>wwv_flow_api.id(39024447486672847631)
,p_default_listr_template=>wwv_flow_api.id(39024444156989847625)
,p_default_irr_template=>wwv_flow_api.id(39024443613162847625)
,p_default_report_template=>wwv_flow_api.id(39024452959156847639)
,p_default_label_template=>wwv_flow_api.id(39024464640151847655)
,p_default_menu_template=>wwv_flow_api.id(39024465672457847656)
,p_default_calendar_template=>wwv_flow_api.id(39024465770337847657)
,p_default_list_template=>wwv_flow_api.id(39024460130596847651)
,p_default_nav_list_template=>wwv_flow_api.id(39024463571398847654)
,p_default_top_nav_list_temp=>wwv_flow_api.id(39024463571398847654)
,p_default_side_nav_list_temp=>wwv_flow_api.id(39024462508443847653)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(39024436143615847618)
,p_default_dialogr_template=>wwv_flow_api.id(39024436039559847618)
,p_default_option_label=>wwv_flow_api.id(39024464640151847655)
,p_default_required_label=>wwv_flow_api.id(39024464849646847655)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(39024462409537847653)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.0/')
,p_files_version=>62
,p_icon_library=>'FONTAWESOME'
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.regionDisplaySelector#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#tooltipManager#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/hammer/2.0.3/hammer#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.0/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(39024465959553847658)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(39024466039925847658)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(39024466106640847658)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024434894666847617)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024435043826847618)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024435277395847618)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024436406591847619)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024436611119847619)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024437343488847619)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024437776664847620)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024438342774847620)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024438940112847621)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024439122215847621)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024440064640847622)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024441688612847623)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024443015453847624)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024446588278847629)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024446789528847629)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024447165630847629)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024447558383847633)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024448168804847633)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024448735664847634)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024448946483847634)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024450550437847635)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the amount of text to display for the Card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024451256436847636)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the style and design of the cards in the report.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024451571370847636)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024452219065847638)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024452566742847639)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024453081848847641)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024453329573847641)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024453578513847641)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024454573317847642)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024456402227847644)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024457232654847647)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024458287054847648)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024458918991847648)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024459219609847648)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024459956534847651)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024460687130847651)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024463053253847654)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024464112774847655)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024465311726847656)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024466380458847659)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024466583384847660)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024466708671847660)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024466995890847660)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024467321215847660)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024467515637847660)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024467708929847660)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024467912590847660)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024468197139847661)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024468374087847661)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024468851035847661)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024469451637847661)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(39024469640711847661)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024434775155847616)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(39024434502659847615)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024434984664847618)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(39024434502659847615)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(39024434894666847617)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024435107151847618)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(39024434502659847615)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(39024435043826847618)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024435319291847618)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(39024434502659847615)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(39024435277395847618)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024435465370847618)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(39024434502659847615)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(39024434894666847617)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024435555949847618)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(39024434502659847615)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(39024435043826847618)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024435666927847618)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(39024434502659847615)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(39024434894666847617)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024435766837847618)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(39024434502659847615)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(39024435043826847618)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024435864434847618)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(39024434502659847615)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(39024434894666847617)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024435992589847618)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(39024434502659847615)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(39024435277395847618)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024436529135847619)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(39024436143615847618)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(39024436406591847619)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024436794494847619)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(39024436143615847618)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(39024436611119847619)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024436851491847619)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(39024436143615847618)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(39024436406591847619)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024436915808847619)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(39024436143615847618)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(39024436611119847619)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024437460713847619)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(39024437081578847619)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(39024437343488847619)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024437557924847619)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(39024437081578847619)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(39024437343488847619)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024437607139847620)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(39024437081578847619)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(39024437343488847619)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024437895999847620)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(39024437081578847619)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(39024437776664847620)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024437996783847620)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(39024437081578847619)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(39024437776664847620)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024438035373847620)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(39024437081578847619)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(39024437776664847620)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024438149977847620)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(39024437081578847619)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(39024437343488847619)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024438219506847620)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(39024437081578847619)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(39024437776664847620)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024438430430847620)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(39024437081578847619)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(39024438342774847620)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024438535119847621)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(39024437081578847619)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(39024438342774847620)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024438637400847621)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(39024437081578847619)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(39024438342774847620)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024438713625847621)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(39024437081578847619)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(39024438342774847620)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024438899818847621)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(39024437081578847619)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(39024438342774847620)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024439051456847621)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(39024437081578847619)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(39024438940112847621)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024439218618847621)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(39024437081578847619)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(39024439122215847621)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024439309581847621)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(39024437081578847619)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(39024438940112847621)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024439471156847621)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(39024437081578847619)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024439516532847621)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(39024437081578847619)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(39024436406591847619)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024439699958847621)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(39024437081578847619)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024439789492847621)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(39024437081578847619)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(39024439122215847621)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024439824293847621)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(39024437081578847619)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024439997398847621)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(39024437081578847619)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024440191555847622)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(39024437081578847619)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(39024440064640847622)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024440237314847622)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(39024437081578847619)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(39024440064640847622)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024440309944847622)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(39024437081578847619)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(39024436406591847619)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024440738615847623)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(39024440463919847622)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(39024437776664847620)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024440869312847623)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(39024440463919847622)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(39024437776664847620)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024440969171847623)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(39024440463919847622)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(39024437776664847620)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024441006085847623)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(39024440463919847622)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(39024437776664847620)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024441138435847623)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(39024440463919847622)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(39024438342774847620)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024441233012847623)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(39024440463919847622)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(39024438342774847620)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024441326970847623)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(39024440463919847622)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(39024438342774847620)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024441464234847623)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(39024440463919847622)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(39024438342774847620)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024441532653847623)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(39024440463919847622)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(39024438342774847620)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024441774376847623)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(39024440463919847622)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(39024441688612847623)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024441818263847624)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(39024440463919847622)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(39024441688612847623)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024441998255847624)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(39024440463919847622)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(39024439122215847621)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024442005849847624)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(39024440463919847622)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024442154003847624)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(39024440463919847622)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(39024436406591847619)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024442295799847624)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(39024440463919847622)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(39024436406591847619)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024442329529847624)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(39024440463919847622)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(39024439122215847621)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024442432532847624)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(39024440463919847622)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(39024436406591847619)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024442955623847624)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(39024442761670847624)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024443136428847624)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(39024442761670847624)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(39024443015453847624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024443204896847624)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(39024442761670847624)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(39024443015453847624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024443387394847625)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(39024442761670847624)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024443444793847625)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(39024442761670847624)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024443529990847625)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(39024442761670847624)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(39024443015453847624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024443773558847625)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(39024443613162847625)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024443816815847625)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(39024443613162847625)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024444486169847625)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(39024444156989847625)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(39024437776664847620)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024444555245847625)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(39024444156989847625)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(39024437776664847620)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024444674740847626)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(39024444156989847625)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(39024437776664847620)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024444721105847626)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(39024444156989847625)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(39024437776664847620)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024444846817847626)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(39024444156989847625)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(39024438342774847620)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024444938845847626)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(39024444156989847625)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(39024438342774847620)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024445032176847626)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(39024444156989847625)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(39024438342774847620)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024445157117847626)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(39024444156989847625)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(39024438342774847620)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024445276812847626)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(39024444156989847625)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(39024438342774847620)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024445308521847626)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(39024444156989847625)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(39024438940112847621)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024445438750847626)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(39024444156989847625)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(39024439122215847621)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024445543330847626)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(39024444156989847625)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(39024438940112847621)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024445662691847626)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(39024444156989847625)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024445750644847626)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(39024444156989847625)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(39024436406591847619)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024445865914847626)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(39024444156989847625)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(39024436406591847619)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024445901752847626)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(39024444156989847625)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(39024439122215847621)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024446077026847627)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(39024444156989847625)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024446195093847629)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(39024444156989847625)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(39024436406591847619)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024446628722847629)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(39024446290799847629)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(39024446588278847629)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024446807825847629)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(39024446290799847629)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(39024446789528847629)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024446937097847629)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(39024446290799847629)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024447048859847629)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(39024446290799847629)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(39024446789528847629)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024447216392847629)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(39024446290799847629)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(39024447165630847629)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024447358408847631)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(39024446290799847629)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(39024447165630847629)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024447670630847633)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(39024447486672847631)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(39024447558383847633)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024447704275847633)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(39024447486672847631)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024447814488847633)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(39024447486672847631)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(39024447558383847633)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024448260156847633)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(39024447998768847633)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(39024448168804847633)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024448325860847633)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(39024447998768847633)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(39024448168804847633)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024448440052847633)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(39024447998768847633)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024448816924847634)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(39024448680522847634)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(39024448735664847634)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024449053341847634)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(39024448680522847634)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(39024448946483847634)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024449132022847634)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(39024448680522847634)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(39024448735664847634)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024449275765847634)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(39024448680522847634)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(39024448946483847634)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024449318374847634)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(39024448680522847634)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(39024448735664847634)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024449493963847634)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(39024448680522847634)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(39024448946483847634)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024449546312847634)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(39024448680522847634)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(39024448946483847634)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024449681738847634)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(39024448680522847634)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(39024448735664847634)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024449717261847635)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(39024448680522847634)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(39024448735664847634)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024449838072847635)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(39024448680522847634)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(39024448946483847634)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024449908529847635)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(39024448680522847634)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(39024448946483847634)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024450020113847635)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(39024448680522847634)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(39024448946483847634)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024450176658847635)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(39024448680522847634)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024450235289847635)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(39024448680522847634)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(39024448946483847634)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024450451829847635)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(39024450394631847635)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(39024448946483847634)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024450608486847635)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(39024450394631847635)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(39024450550437847635)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024450718514847635)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(39024450394631847635)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(39024448946483847634)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024450817707847635)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(39024450394631847635)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(39024450550437847635)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024450940929847635)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(39024450394631847635)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(39024448946483847634)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024451014099847635)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(39024450394631847635)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(39024450550437847635)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024451120956847635)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(39024450394631847635)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(39024448946483847634)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024451389097847636)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(39024450394631847635)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(39024451256436847636)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024451429748847636)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(39024450394631847635)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(39024451256436847636)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024451657890847636)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(39024450394631847635)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(39024451571370847636)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024451723008847638)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(39024450394631847635)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(39024451571370847636)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024451852724847638)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(39024450394631847635)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(39024451256436847636)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024451944420847638)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(39024450394631847635)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(39024448946483847634)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024452045250847638)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(39024450394631847635)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(39024450550437847635)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024452106588847638)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(39024450394631847635)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(39024448946483847634)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024452322614847638)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(39024450394631847635)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(39024452219065847638)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024452679374847639)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(39024452426807847638)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(39024452566742847639)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024452700677847639)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(39024452426807847638)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(39024452566742847639)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024453121706847641)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(39024452959156847639)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(39024453081848847641)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024453217308847641)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(39024452959156847639)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(39024453081848847641)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024453419457847641)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(39024452959156847639)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(39024453329573847641)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024453660813847641)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(39024452959156847639)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(39024453578513847641)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024453746528847641)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(39024452959156847639)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(39024453578513847641)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024453870304847641)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(39024452959156847639)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(39024453578513847641)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024453963051847641)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(39024452959156847639)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(39024453329573847641)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024454041896847641)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(39024452959156847639)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024454100693847641)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(39024452959156847639)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(39024453578513847641)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024454326386847641)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(39024454249165847641)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(39024451256436847636)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact video of timeline with smaller font-sizes and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024454644599847642)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(39024454471587847641)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(39024454573317847642)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024454726107847642)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(39024454471587847641)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(39024454573317847642)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024454885205847642)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(39024454471587847641)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(39024454573317847642)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024454925806847642)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(39024454471587847641)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(39024448946483847634)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024455031978847642)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(39024454471587847641)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(39024448946483847634)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024455130698847642)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(39024454471587847641)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(39024454573317847642)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024455242235847642)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(39024454471587847641)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(39024454573317847642)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024455399432847642)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(39024454471587847641)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(39024454573317847642)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024455514850847642)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(39024455456819847642)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(39024454573317847642)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024455659359847642)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(39024455456819847642)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(39024454573317847642)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024455772533847642)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(39024455456819847642)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(39024454573317847642)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024455814754847642)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(39024455456819847642)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(39024448946483847634)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024455942961847643)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(39024455456819847642)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(39024448946483847634)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024456005008847643)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(39024455456819847642)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(39024454573317847642)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024456175961847643)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(39024455456819847642)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(39024454573317847642)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024456298403847643)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(39024455456819847642)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(39024454573317847642)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024456563618847645)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(39024456375064847643)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(39024456402227847644)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024456694989847645)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(39024456375064847643)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(39024456402227847644)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024456764920847645)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(39024456375064847643)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(39024456402227847644)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024456802681847645)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(39024456375064847643)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(39024456402227847644)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024456993506847647)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(39024456375064847643)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(39024456402227847644)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024457007600847647)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(39024456375064847643)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(39024456402227847644)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024457194770847647)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(39024456375064847643)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(39024456402227847644)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024457369939847647)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(39024456375064847643)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(39024457232654847647)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024457447859847647)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(39024456375064847643)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(39024457232654847647)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024457578506847647)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(39024456375064847643)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024457684473847647)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(39024456375064847643)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(39024457232654847647)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024457709001847647)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(39024456375064847643)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(39024456402227847644)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024457849231847647)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(39024456375064847643)
,p_css_classes=>'.t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(39024457232654847647)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024457996700847647)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(39024456375064847643)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(39024457232654847647)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024458161514847648)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(39024458038162847648)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(39024456402227847644)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024458348623847648)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(39024458038162847648)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(39024458287054847648)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024458441766847648)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(39024458038162847648)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(39024456402227847644)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024458528623847648)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(39024458038162847648)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(39024458287054847648)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024458630669847648)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(39024458038162847648)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(39024456402227847644)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024458788047847648)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(39024458038162847648)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(39024458287054847648)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024458819331847648)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(39024458038162847648)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(39024456402227847644)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024459044244847648)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(39024458038162847648)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(39024458918991847648)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024459171975847648)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(39024458038162847648)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(39024458918991847648)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024459392438847648)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(39024458038162847648)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(39024459219609847648)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024459492988847649)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(39024458038162847648)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(39024459219609847648)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024459558850847650)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(39024458038162847648)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(39024458918991847648)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024459603156847650)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(39024458038162847648)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(39024456402227847644)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024459735616847650)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(39024458038162847648)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(39024458287054847648)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024459824975847651)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(39024458038162847648)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(39024456402227847644)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024460049982847651)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(39024458038162847648)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(39024459956534847651)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024460222014847651)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(39024460130596847651)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(39024458918991847648)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024460304196847651)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(39024460130596847651)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024460432140847651)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(39024460130596847651)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024460576705847651)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(39024460130596847651)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024460705091847651)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(39024460130596847651)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(39024460687130847651)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024460827104847651)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(39024460130596847651)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(39024460687130847651)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024461094947847651)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(39024460952340847651)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(39024456402227847644)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024461139475847652)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(39024460952340847651)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(39024456402227847644)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024461222473847652)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(39024460952340847651)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(39024456402227847644)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024461390405847652)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(39024460952340847651)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(39024456402227847644)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024461489647847652)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(39024460952340847651)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024461506243847652)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(39024460952340847651)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024461687728847652)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(39024460952340847651)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Shows an icon for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024461722015847652)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(39024460952340847651)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(39024456402227847644)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024461937618847652)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(39024461813886847652)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024462053753847652)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(39024461813886847652)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024462184233847652)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(39024461813886847652)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024462224679847652)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(39024461813886847652)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024462779953847654)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(39024462606726847654)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(39024459219609847648)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024462823492847654)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(39024462606726847654)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(39024456402227847644)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024462991918847654)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(39024462606726847654)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(39024459219609847648)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024463155674847654)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(39024462606726847654)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(39024463053253847654)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024463298908847654)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(39024462606726847654)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(39024458918991847648)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024463367602847654)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(39024462606726847654)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(39024458918991847648)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024463404210847654)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(39024462606726847654)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(39024463053253847654)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024463629030847654)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(39024463571398847654)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024463722473847654)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(39024463571398847654)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024463870672847654)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(39024463571398847654)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024463909223847654)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(39024463571398847654)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024464239070847655)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(39024464081147847654)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(39024464112774847655)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024464346726847655)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(39024464081147847654)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(39024464112774847655)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024464499229847655)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(39024464081147847654)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(39024464112774847655)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024465438369847656)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(39024465202625847656)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(39024465311726847656)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024465591396847656)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(39024465202625847656)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(39024465311726847656)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024466410217847660)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(39024466380458847659)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024466642305847660)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(39024466583384847660)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024466856321847660)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(39024466708671847660)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024467072870847660)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(39024466995890847660)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024467152130847660)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(39024466995890847660)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024467267288847660)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(39024466708671847660)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024467473259847660)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(39024467321215847660)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024467646035847660)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large Left Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(39024467515637847660)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024467835165847660)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large Right Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(39024467708929847660)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024468093161847660)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(39024467912590847660)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024468284092847661)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(39024468197139847661)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024468452569847661)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(39024468374087847661)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024468570984847661)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(39024468374087847661)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024468646358847661)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(39024468374087847661)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024468730029847661)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(39024466380458847659)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024468991904847661)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(39024468851035847661)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024469069038847661)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(39024468197139847661)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024469180885847661)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(39024467321215847660)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024469281640847661)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small Left Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(39024467515637847660)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024469307515847661)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small Right Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(39024467708929847660)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024469546472847661)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(39024469451637847661)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024469707928847662)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(39024469640711847661)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024469888042847662)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024469980375847662)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(39024466380458847659)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024470098992847662)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(39024466380458847659)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39024470199571847662)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(39024467912590847660)
,p_template_types=>'FIELD'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(42402959101404278957)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(39024470523216847663)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(39024470336011847662)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(39024427955459847606)
,p_navigation_list_position=>'TOP'
,p_navigation_list_template_id=>wwv_flow_api.id(39024463571398847654)
,p_nav_list_template_options=>'#DEFAULT#:js-showSubMenuIcons'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(39024470214228847662)
,p_nav_bar_list_template_id=>wwv_flow_api.id(39024462409537847653)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Global Page - Desktop'
,p_page_mode=>'NORMAL'
,p_step_title=>'Global Page - Desktop'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'D'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_upd_yyyymmddhh24miss=>'20161004005458'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_html_page_header=>'<link rel="stylesheet" href="#WORKSPACE_IMAGES#eud_estilos.css" type="text/css">'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_upd_yyyymmddhh24miss=>'20161208154837'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39024472182977847667)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39024447486672847631)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(39024471671255847666)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(39024465672457847656)
,p_plug_query_row_template=>1
,p_plug_display_condition_type=>'NEVER'
,p_plug_read_only_when_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40172238901305173827)
,p_plug_name=>'Etapas do desenvolvimento'
,p_region_template_options=>'t-Wizard--hideStepsSmall'
,p_component_template_options=>'t-WizardSteps--displayLabels'
,p_plug_template=>wwv_flow_api.id(39024447998768847633)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(40172236701581173821)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(39024464081147847654)
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41102557611349348921)
,p_plug_name=>'Informações'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(47673056371624299450)
,p_plug_name=>'<b>Ciclo de Vida</b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44149980305196529699)
,p_plug_name=>'Ciclo de vida'
,p_parent_plug_id=>wwv_flow_api.id(47673056371624299450)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(45032317060304978705)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(44149980305196529699)
,p_button_name=>'IMPLANTACAO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img class="display_image_centralizar" src="#WORKSPACE_IMAGES#eud_p1_ciclo_implan.png">'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>6
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(45021347815505025136)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(44149980305196529699)
,p_button_name=>'REQUISITOS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p1_ciclo_req.png">'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_button_cattributes=>'style="position:relative;right:80px"'
,p_grid_new_row=>'N'
,p_grid_column=>5
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(45032316962153978704)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(44149980305196529699)
,p_button_name=>'HOMOLOGACAO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img class="display_image_centralizar" src="#WORKSPACE_IMAGES#eud_p1_ciclo_homo.png">'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_button_cattributes=>'style="position:relative;left:80px"'
,p_grid_new_row=>'N'
,p_grid_column=>7
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47672951961062299406)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(44149980305196529699)
,p_button_name=>'BACKLOG'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p1_ciclo_backlog.png">'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>3
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(45032316638257978701)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_api.id(44149980305196529699)
,p_button_name=>'BANCO_DE_DADOS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img class="display_image_centralizar" src="#WORKSPACE_IMAGES#eud_p1_ciclo_bd.png">'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_button_cattributes=>'style="position:relative;right:80px"'
,p_grid_new_row=>'N'
,p_grid_column=>5
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(45032316802510978703)
,p_button_sequence=>180
,p_button_plug_id=>wwv_flow_api.id(44149980305196529699)
,p_button_name=>'TESTE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img class="display_image_centralizar" src="#WORKSPACE_IMAGES#eud_p1_ciclo_teste.png">'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_button_cattributes=>'style="position:relative;left:80px"'
,p_grid_new_row=>'N'
,p_grid_column=>7
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(45032316786323978702)
,p_button_sequence=>210
,p_button_plug_id=>wwv_flow_api.id(44149980305196529699)
,p_button_name=>'IMPLEMENTACAO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img class="display_image_centralizar" src="#WORKSPACE_IMAGES#eud_p1_ciclo_implem.png">'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>6
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41102747990521985253)
,p_name=>'P1_INFORMACOES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(41102557611349348921)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Este é um sistema de apoio, com o objetivo de proporcionar ajuda ao desenvolvimento de sistemas.',
'Você poderá ter acesso as fases de desenvolvimento de software específico para apex.'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41832038238193452614)
,p_name=>'P1_CICLO_VIDA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(44149980305196529699)
,p_prompt=>'<img class="display_image_centralizar" src="#WORKSPACE_IMAGES#eud_p1_ciclo_vida.png" />'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when_type=>'NEVER'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45197567046394108744)
,p_name=>'P1_SETA_BAIXO_ESQUERDA'
,p_item_sequence=>21
,p_item_plug_id=>wwv_flow_api.id(44149980305196529699)
,p_prompt=>'<img style="position:relative;right:50px" src="#WORKSPACE_IMAGES#eud_p1_seta_baixo_esquerda.png">'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>1
,p_grid_column=>6
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45197567187026108745)
,p_name=>'P1_SETA_BAIXO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(44149980305196529699)
,p_prompt=>'<img style="position:relative;right:105px" src="#WORKSPACE_IMAGES#eud_p1_seta_baixo.png">'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_column=>6
,p_display_when_type=>'NEVER'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45197567253458108746)
,p_name=>'P1_SETA_BAIXO_DIREITA'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(44149980305196529699)
,p_prompt=>'<img style="position:relative;right:60px" src="#WORKSPACE_IMAGES#eud_p1_seta_baixo_direita.png">'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>1
,p_grid_column=>6
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45197567387688108747)
,p_name=>'P1_SETA_CIMA_ESQUERDA'
,p_item_sequence=>41
,p_item_plug_id=>wwv_flow_api.id(44149980305196529699)
,p_prompt=>'<img style="position:relative;left:95px" src="#WORKSPACE_IMAGES#eud_p1_seta_cima_esquerda.png">'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_column=>7
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45197567413050108748)
,p_name=>'P1_SETA_CIMA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(44149980305196529699)
,p_prompt=>'<img style="position:relative;left:60px" src="#WORKSPACE_IMAGES#eud_p1_seta_cima.png">'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_column=>8
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45197567524805108749)
,p_name=>'P1_SETA_CIMA_DIREITA'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(44149980305196529699)
,p_prompt=>'<img  style="position:relative;left:95px" src="#WORKSPACE_IMAGES#eud_p1_seta_cima_direita.png">'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_column=>7
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46074303631165346402)
,p_name=>'P1_BACKLOG'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(44149980305196529699)
,p_prompt=>'<img src="#WORKSPACE_IMAGES#eud_p1_ciclo_backlog.png">'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>1
,p_grid_column=>2
,p_display_when_type=>'NEVER'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46074303749184346403)
,p_name=>'P1_SETA_BACKLOG_BAIXO_ESQUERDA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(44149980305196529699)
,p_prompt=>'<img style="position:relative;left:65px;top:33px" src="#WORKSPACE_IMAGES#eud_p1_seta_baixo_esquerda.png">'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>1
,p_grid_column=>3
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46074303925261346405)
,p_name=>'P1_SETA_BACKLOG_BAIXO_DIREITA'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(44149980305196529699)
,p_prompt=>'<img style="position:relative;left:65px;bottom:1px" src="#WORKSPACE_IMAGES#eud_p1_seta_baixo_direita.png">'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>1
,p_grid_column=>3
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46074304078138346406)
,p_name=>'P1_CICLO_FLUXO_ICONE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(44149980305196529699)
,p_prompt=>'<img style="position:relative;right:97px" src="#WORKSPACE_IMAGES#eud_p1_ciclo_fluxo_icone.png">'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_column=>7
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Requisitos'
,p_page_mode=>'NORMAL'
,p_step_title=>'Requisitos'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_html_page_header=>'<link rel="stylesheet" href="#WORKSPACE_IMAGES#eud_estilos.css" type="text/css">'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_upd_yyyymmddhh24miss=>'20161209015758'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40179016155082984749)
,p_plug_name=>'<b>Fluxo Requisitos</b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40319267215086957265)
,p_plug_name=>'Etapas Desenvolvimento'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39024447998768847633)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(40172236701581173821)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(39024464081147847654)
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41105520866977117956)
,p_plug_name=>'Elicitação de Requisitos'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40179016060541984748)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(40179016155082984749)
,p_button_name=>'P2_REQ_ATIV_1_BOTAO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img class="display_image_centralizar" src="#WORKSPACE_IMAGES#eud_p2_req_ativ_1.png">'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::'
,p_button_cattributes=>'style="display:block;margin-left:auto;margin-right:auto"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40179016232592984750)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(40179016155082984749)
,p_button_name=>'P2_REQ_GUIA_FUNC_1_BOTAO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p2_req_guia_func_1.png">'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:RP,21::'
,p_button_cattributes=>'style="display: block;margin-left: auto;margin-right: auto"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41714417268596813706)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(40179016155082984749)
,p_button_name=>'P2_REQ_GUIA_FUNC_2_BOTAO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p2_req_guia_func_2.png">'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:RP,58::'
,p_button_cattributes=>'style="display: block;margin-left: auto;margin-right: auto"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41714417393034813707)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(40179016155082984749)
,p_button_name=>'P2_REQ_ATIV_2_BOTAO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img class="display_image_centralizar" src="#WORKSPACE_IMAGES#eud_p2_req_ativ_2.png">'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:20::'
,p_button_cattributes=>'style="display:block;margin-left:auto;margin-right:auto"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41714417422748813708)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(40179016155082984749)
,p_button_name=>'P2_REQ_ATIV_3_BOTAO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p2_req_ativ_3.png">'
,p_button_position=>'BODY'
,p_button_execute_validations=>'N'
,p_button_cattributes=>'style="display:block;margin-left:auto;margin-right:auto"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41714417562802813709)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(40179016155082984749)
,p_button_name=>'P2_REQ_GUIA_FUNC_3_BOTAO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p2_req_guia_func_3.png">'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.:RP::'
,p_button_cattributes=>'style="display: block;margin-left: auto;margin-right: auto"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41105592161814500372)
,p_name=>'P2_ELICITACAO_REQUISITOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(41105520866977117956)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Primeiramente faz-se necessário saber o que é um requisito:',
'- É uma condição ou necessidade de um usuário para resolver um problema ou alcançar um objetivo.',
'- Uma condição ou capacidade que deve possuir um sistema ou componentes de sistema par satisfazer um contrato, norma, especificação ou outro documento formal.',
'- Uma representação documentada de uma condição, ou capacidade satisfazendo usuário e o sistema que se pretende criar.',
'',
'Os requisitos especificam "o quê" o sistema deve fazer e não como fazer.',
'',
'Tipos de requisitos:',
'- Requisitos funcionais: São diretamente ligados a funcionalidade do sistema.',
'- Requisitos não funcionais: São requisitos que expressam restrições que o sistema deve atender ou qualidades específicas que o sistema deve ter.',
'- Requisitos inversos: Estabelecem condições que nunca podem ocorrer.',
'',
'Exemplos:',
'Requisito funcional: O sistema deve prover um formulário de entrada para a entrada dos resultados dos testes clínicos de um paciente.',
'Requisito não funcional: O sistema deve emitir um recibo para o cliente, com tempo máximo de 8 segundos após a transação (requisito não funcional de performance)',
'Requisito inverso: O sistema não pode permitir que os dados básicos de um cliente sejam apagados.',
'',
'Requisitos quanto a qualidade',
'A qualidade dos requisitos é um fator fundamental para o sucesso do produto de sistema a ser construído.',
'',
'Assim, quanto as qualidades dos requisito, elas devem ser:',
'- Verificável',
'- Rastreável',
'- Inteligível',
'- Correto',
'- Completo',
'- Consistente',
'- Não-ambíguo',
'',
'Elicitação de requisitos',
'É uma atividade que pode ser considerada a mais importante do processo de engenharia de requisitos e requer forte comunicação entre quem desenvolve o sistema e os envolvidos (stakeholders), principalmente com que irá utilizar o sistema.',
'',
'Para que se possa realizar uma elicitação de requisitos para o sistema existem várias técnicas que dependendo do projeto e dos envolvidos haverá uma técnica mais adaptada para obtenção dos requisitos do sistema.',
'',
'As técnicas de levantamento de requisitos têm por objetivo superar as dificuldades relativas a esta fase. Todas as técnicas possuem um conceito próprio e suas respectivas vantagens e desvantagens, que podem ser utilizadas em conjunto ao realizar o le'
||'vantamento.'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Banco de Dados'
,p_page_mode=>'NORMAL'
,p_step_title=>'Banco de Dados'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_upd_yyyymmddhh24miss=>'20161021135243'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40320041607458036263)
,p_plug_name=>'Etapas Desenvolvimento'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39024447998768847633)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(40172236701581173821)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(39024464081147847654)
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41714417831685813712)
,p_plug_name=>'<b>Fluxo Banco de Dados</b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41714418023027813714)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(41714417831685813712)
,p_button_name=>'P2_BD_ATIV_1_BOTAO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p3_bd_ativ_1.png">'
,p_button_position=>'BODY'
,p_button_execute_validations=>'N'
,p_button_cattributes=>'style="display:block;margin-left:auto;margin-right:auto"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41714418144677813715)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(41714417831685813712)
,p_button_name=>'P2_BD_GUIA_FUNC_1_BOTAO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p3_bd_guia_func_1.png">'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:RP::'
,p_button_cattributes=>'style="display:block;margin-left:auto;margin-right:auto"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41714418267588813716)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(41714417831685813712)
,p_button_name=>'P2_BD_GUIA_FUNC_2_BOTAO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p3_bd_guia_func_2.png">'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.:RP::'
,p_button_cattributes=>'style="display:block;margin-left:auto;margin-right:auto"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41714418368774813717)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(41714417831685813712)
,p_button_name=>'P2_BD_GUIA_FUNC_3_BOTAO'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p3_bd_guia_func_3.png">'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:51:&APP_SESSION.::::P51_TIPO_DESCRICAO_VIDEO,P51_TITULO_REGIAO:P50_SCRIPT_SQL,Usando o Oracle SQL Data Developer para gerar scripts SQL de criação (DDL) a partir de um ML'
,p_button_cattributes=>'style="display:block;margin-left:auto;margin-right:auto"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41714418431547813718)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(41714417831685813712)
,p_button_name=>'P2_BD_ATIV_2_BOTAO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p3_bd_ativ_2.png">'
,p_button_position=>'BODY'
,p_button_execute_validations=>'N'
,p_button_cattributes=>'style="display:block;margin-left:auto;margin-right:auto"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41714418504618813719)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(41714417831685813712)
,p_button_name=>'P2_BD_ATIV_3_BOTAO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p3_bd_ativ_3.png">'
,p_button_position=>'BODY'
,p_button_execute_validations=>'N'
,p_button_cattributes=>'style="display:block;margin-left:auto;margin-right:auto"'
,p_grid_new_row=>'Y'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Implementação'
,p_page_mode=>'NORMAL'
,p_step_title=>'Implementação'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_upd_yyyymmddhh24miss=>'20161207212256'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40320122115112042226)
,p_plug_name=>'Etapas Desenvolvimento'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39024447998768847633)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(40172236701581173821)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(39024464081147847654)
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41714418616915813720)
,p_plug_name=>'<b>Fluxo Implementação</b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41714418823155813722)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(41714418616915813720)
,p_button_name=>'P4_IMP_ATIV_1_BOTAO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p4_imp_ativ_1.png">'
,p_button_position=>'BODY'
,p_button_execute_validations=>'N'
,p_button_cattributes=>'style="display:block;margin-left:auto;margin-right:auto"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41714418948248813723)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(41714418616915813720)
,p_button_name=>'P4_IMP_GUIA_FUNC_1_BOTAO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p4_imp_guia_func_1.png">'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:55:&SESSION.::&DEBUG.:RP::'
,p_button_cattributes=>'style="display:block;margin-left:auto;margin-right:auto"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41714419143937813725)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(41714418616915813720)
,p_button_name=>'P4_IMP_ATIV_2_BOTAO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p4_imp_ativ_2.png">'
,p_button_position=>'BODY'
,p_button_execute_validations=>'N'
,p_button_cattributes=>'style="display:block;margin-left:auto;margin-right:auto"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41714419248716813726)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(41714418616915813720)
,p_button_name=>'P4_IMP_GUIA_FUNC_2_BOTAO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p4_imp_guia_func_1.png">'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:55:&SESSION.::&DEBUG.:RP,55::'
,p_button_cattributes=>'style="display:block;margin-left:auto;margin-right:auto"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41714419339332813727)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(41714418616915813720)
,p_button_name=>'P4_IMP_ATIV_3_BOTAO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p4_imp_ativ_3.png">'
,p_button_position=>'BODY'
,p_button_execute_validations=>'N'
,p_button_cattributes=>'style="display:block;margin-left:auto;margin-right:auto"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41714419489065813728)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(41714418616915813720)
,p_button_name=>'P4_IMP_GUIA_FUNC_3_BOTAO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p4_imp_guia_func_3.png">'
,p_button_position=>'BODY'
,p_button_execute_validations=>'N'
,p_button_cattributes=>'style="display:block;margin-left:auto;margin-right:auto"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41714419548413813729)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(41714418616915813720)
,p_button_name=>'P4_IMP_GUIA_FUNC_4_BOTAO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p4_imp_guia_func_4.png">'
,p_button_position=>'BODY'
,p_button_execute_validations=>'N'
,p_button_cattributes=>'style="display:block;margin-left:auto;margin-right:auto"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41714419635554813730)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(41714418616915813720)
,p_button_name=>'P4_IMP_GUIA_FUNC_5_BOTAO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p4_imp_guia_func_5.png">'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.:RP,53::'
,p_button_cattributes=>'style="display:block;margin-left:auto;margin-right:auto"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41714419732380813731)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_api.id(41714418616915813720)
,p_button_name=>'P4_IMP_GUIA_FUNC_6_BOTAO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p4_imp_guia_func_6.png">'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.:RP::'
,p_button_cattributes=>'style="display:block;margin-left:auto;margin-right:auto"'
,p_grid_new_row=>'Y'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Teste'
,p_page_mode=>'NORMAL'
,p_step_title=>'Teste'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_upd_yyyymmddhh24miss=>'20161201122132'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40320126146898047362)
,p_plug_name=>'Etapas Desenvolvimento'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39024447998768847633)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(40172236701581173821)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(39024464081147847654)
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41714419899389813732)
,p_plug_name=>'<b>Fluxo Teste</b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41714420059875813734)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(41714419899389813732)
,p_button_name=>'P5_TESTE_ATIV_1_BOTAO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p5_teste_ativ_1.png" />'
,p_button_position=>'BODY'
,p_button_execute_validations=>'N'
,p_button_cattributes=>'style="display:block;margin-left:auto;margin-right:auto"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41714420165462813735)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(41714419899389813732)
,p_button_name=>'P5_TESTE_ATIV_2_BOTAO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p5_teste_ativ_2.png" />'
,p_button_position=>'BODY'
,p_button_execute_validations=>'N'
,p_button_cattributes=>'style="display:block;margin-left:auto;margin-right:auto"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41714420232350813736)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(41714419899389813732)
,p_button_name=>'P5_TESTE_GUIA_FUNC_1_BOTAO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p5_teste_guia_func_1.png" />'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.:RP,57::'
,p_button_cattributes=>'style="display:block;margin-left:auto;margin-right:auto"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41714420366027813737)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(41714419899389813732)
,p_button_name=>'P5_TESTE_ATIV_3_BOTAO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p5_teste_ativ_3.png" />'
,p_button_position=>'BODY'
,p_button_execute_validations=>'N'
,p_button_cattributes=>'style="display:block;margin-left:auto;margin-right:auto"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41714420467952813738)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(41714419899389813732)
,p_button_name=>'P5_TESTE_GUIA_FUNC_2_BOTAO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p5_teste_guia_func_2.png" />'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.:RP,56::'
,p_button_cattributes=>'style="display:block;margin-left:auto;margin-right:auto"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41714420569528813739)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(41714419899389813732)
,p_button_name=>'P5_TESTE_GUIA_FUNC_3_BOTAO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p5_teste_guia_func_3.png" />'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:62:&SESSION.::&DEBUG.:RP::'
,p_button_cattributes=>'style="display:block;margin-left:auto;margin-right:auto"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41714420604361813740)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(41714419899389813732)
,p_button_name=>'P5_TESTE_GUIA_FUNC_4_BOTAO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p5_teste_guia_func_4.png" />'
,p_button_position=>'BODY'
,p_button_execute_validations=>'N'
,p_button_cattributes=>'style="display:block;margin-left:auto;margin-right:auto"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41714420771911813741)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(41714419899389813732)
,p_button_name=>'P5_TESTE_GUIA_FUNC_5_BOTAO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p5_teste_guia_func_5.png" />'
,p_button_position=>'BODY'
,p_button_execute_validations=>'N'
,p_button_cattributes=>'style="display:block;margin-left:auto;margin-right:auto"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41714420926338813743)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_api.id(41714419899389813732)
,p_button_name=>'P5_TESTE_ATIV_4_BOTAO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p5_teste_ativ_4.png" />'
,p_button_position=>'BODY'
,p_button_execute_validations=>'N'
,p_button_cattributes=>'style="display:block;margin-left:auto;margin-right:auto"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41714421155100813745)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_api.id(41714419899389813732)
,p_button_name=>'P5_TESTE_GUIA_FUNC_6_BOTAO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p5_teste_guia_func_6.png" />'
,p_button_position=>'BODY'
,p_button_execute_validations=>'N'
,p_button_cattributes=>'style="display:block;margin-left:auto;margin-right:auto"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41714421066882813744)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_api.id(41714419899389813732)
,p_button_name=>'P5_TESTE_ATIV_5_BOTAO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p5_teste_ativ_5.png" />'
,p_button_position=>'BODY'
,p_button_execute_validations=>'N'
,p_button_cattributes=>'style="display:block;margin-left:auto;margin-right:auto"'
,p_grid_new_row=>'Y'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Homologação'
,p_page_mode=>'NORMAL'
,p_step_title=>'Homologação'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_html_page_header=>'<link rel="stylesheet" href="#WORKSPACE_IMAGES#eud_estilos.css" type="text/css">'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_upd_yyyymmddhh24miss=>'20161021160815'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40320156387384053246)
,p_plug_name=>'Etapas Desenvolvimento'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39024447998768847633)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(40172236701581173821)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(39024464081147847654)
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41714420867416813742)
,p_plug_name=>'<b>Fluxo Homologação</b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41714421388515813747)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(41714420867416813742)
,p_button_name=>'P6_HOMO_ATIV_1_BOTAO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p6_homo_ativ_1.png" />'
,p_button_position=>'BODY'
,p_button_execute_validations=>'N'
,p_button_cattributes=>'style="display:block;margin-left:auto;margin-right:auto"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41714421412594813748)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(41714420867416813742)
,p_button_name=>'P6_HOMO_ATIV_2_BOTAO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p6_homo_ativ_2.png" />'
,p_button_position=>'BODY'
,p_button_execute_validations=>'N'
,p_button_cattributes=>'style="display:block;margin-left:auto;margin-right:auto"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41714421514142813749)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(41714420867416813742)
,p_button_name=>'P6_HOMO_GUIA_FUNC_1_BOTAO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p6_homo_guia_func_1.png" />'
,p_button_position=>'BODY'
,p_button_execute_validations=>'N'
,p_button_cattributes=>'style="display:block;margin-left:auto;margin-right:auto"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41831987444421452606)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(41714420867416813742)
,p_button_name=>'P6_HOMO_RESULT_DECISAO_1_BOTAO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p6_homo_result_decisao_1.png" />'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>3
,p_grid_column=>4
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41831987580328452607)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(41714420867416813742)
,p_button_name=>'P6_HOMO_RESULT_DECISAO_2_BOTAO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p6_homo_result_decisao_2.png" />'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP,7::'
,p_grid_new_row=>'N'
,p_grid_column_span=>3
,p_grid_column=>7
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41831986982384452601)
,p_name=>'P6_HOMO_DECISAO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(41714420867416813742)
,p_prompt=>'<img class="display_image_centralizar" src="#WORKSPACE_IMAGES#eud_p6_homo_decisao.png" />'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Implantação'
,p_page_mode=>'NORMAL'
,p_step_title=>'Implantação'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_upd_yyyymmddhh24miss=>'20161201113855'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40320132222402432161)
,p_plug_name=>'Etapas Desenvolvimento'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39024447998768847633)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(40172236701581173821)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(39024464081147847654)
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41831987606847452608)
,p_plug_name=>'<b>Fluxo Implantação</b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41831987880582452610)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(41831987606847452608)
,p_button_name=>'P7_IMPLAN_ATIV_1_BOTAO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p7_implan_ativ_1.png" />'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:68:&SESSION.::&DEBUG.:RP::'
,p_button_cattributes=>'style="display:block;margin-left:auto;margin-right:auto"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41831987945863452611)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(41831987606847452608)
,p_button_name=>'P7_IMPLAN_GUIA_FUNC_1_BOTAO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p7_implan_guia_func_1.png" />'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.:RP::'
,p_button_cattributes=>'style="display:block;margin-left:auto;margin-right:auto"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41832038050756452612)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(41831987606847452608)
,p_button_name=>'P7_IMPLAN_ATIV_2_BOTAO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p7_implan_ativ_2.png" />'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:69:&SESSION.::&DEBUG.:RP::'
,p_button_cattributes=>'style="display:block;margin-left:auto;margin-right:auto"'
,p_grid_new_row=>'Y'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Relatorio de Tecnicas'
,p_page_mode=>'NORMAL'
,p_step_title=>'Relatorio de Tecnicas'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FAGNER128@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20161106195154'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(42403230903882752000)
,p_name=>'Relatorio de Tecnicas'
,p_template=>wwv_flow_api.id(39024444156989847625)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "COD", ',
'"NOME_TECNICA",',
'"DESCR_TECNICA",',
'"OBJETIVO",',
'"LINK_DINAMICA"',
'from "#OWNER#"."TB_SAE_TECNICA_ELICITACAO" ',
'  ',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(39024452959156847639)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(42403231578942752003)
,p_query_column_id=>1
,p_column_alias=>'COD'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_column_link=>'f?p=#APP_ID#:9:#APP_SESSION#::::P9_COD:#COD#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_TECNICA_ELICITACAO'
,p_ref_column_name=>'COD'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(42403231964613752004)
,p_query_column_id=>2
,p_column_alias=>'NOME_TECNICA'
,p_column_display_sequence=>2
,p_column_heading=>'Nome Tecnica'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_TECNICA_ELICITACAO'
,p_ref_column_name=>'NOME_TECNICA'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(42403232347688752004)
,p_query_column_id=>3
,p_column_alias=>'DESCR_TECNICA'
,p_column_display_sequence=>3
,p_column_heading=>'Descr Tecnica'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_TECNICA_ELICITACAO'
,p_ref_column_name=>'DESCR_TECNICA'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(42403232799990752004)
,p_query_column_id=>4
,p_column_alias=>'OBJETIVO'
,p_column_display_sequence=>4
,p_column_heading=>'Objetivo'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_TECNICA_ELICITACAO'
,p_ref_column_name=>'OBJETIVO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(42403233170517752005)
,p_query_column_id=>5
,p_column_alias=>'LINK_DINAMICA'
,p_column_display_sequence=>5
,p_column_heading=>'Link Dinamica'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_TECNICA_ELICITACAO'
,p_ref_column_name=>'LINK_DINAMICA'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(42496208674126956472)
,p_name=>'Relatorio de Pesos'
,p_template=>wwv_flow_api.id(39024444156989847625)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select peso."COD", ',
'peso."COD_TECNICA_ELICITACAO",',
'peso."COD_PARAMETRO",',
'peso."VALOR_PESO",',
'tecnica."NOME_TECNICA",',
'parametro."NOME_PARAMETRO"',
'from "#OWNER#"."TB_SAE_PESO" peso,',
'     "#OWNER#"."TB_SAE_TECNICA_ELICITACAO" tecnica,',
'     "#OWNER#"."TB_SAE_PARAMETRO" parametro',
'  ',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(39024452959156847639)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(42496208990359956475)
,p_query_column_id=>1
,p_column_alias=>'COD'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_column_link=>'f?p=#APP_ID#:9:#APP_SESSION#::::P9_COD:#COD#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_TECNICA_ELICITACAO'
,p_ref_column_name=>'COD'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(42496256329286978581)
,p_query_column_id=>2
,p_column_alias=>'COD_TECNICA_ELICITACAO'
,p_column_display_sequence=>2
,p_column_heading=>'Cod Tecnica Elicitacao'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(42496256753706978581)
,p_query_column_id=>3
,p_column_alias=>'COD_PARAMETRO'
,p_column_display_sequence=>3
,p_column_heading=>'Cod Parametro'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(42496257175583978582)
,p_query_column_id=>4
,p_column_alias=>'VALOR_PESO'
,p_column_display_sequence=>4
,p_column_heading=>'Valor Peso'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(42497196005444529230)
,p_query_column_id=>5
,p_column_alias=>'NOME_TECNICA'
,p_column_display_sequence=>5
,p_column_heading=>'Nome Tecnica'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(42497196496912529230)
,p_query_column_id=>6
,p_column_alias=>'NOME_PARAMETRO'
,p_column_display_sequence=>6
,p_column_heading=>'Nome Parametro'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(42497553990241244073)
,p_name=>'Relatorio de Parametros'
,p_template=>wwv_flow_api.id(39024444156989847625)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'"COD",',
'"NOME_PARAMETRO"',
'from "#OWNER#"."TB_SAE_PARAMETRO"'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(39024452959156847639)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(42497554274068244077)
,p_query_column_id=>1
,p_column_alias=>'COD'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::P10_COD:#COD#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_PARAMETRO'
,p_ref_column_name=>'COD'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(42497643382944250678)
,p_query_column_id=>2
,p_column_alias=>'NOME_PARAMETRO'
,p_column_display_sequence=>2
,p_column_heading=>'Nome Parametro'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42403235927986752010)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(42403230903882752000)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nova Técnica'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:9::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42497556297081244080)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(42497553990241244073)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Novo Parâmetro'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42496210918311956478)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(42496208674126956472)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Adicionar Pesos aos Parâmetros das Técnicas'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:11::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42403235039051752009)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(42403230903882752000)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42403235586228752010)
,p_event_id=>wwv_flow_api.id(42403235039051752009)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(42403230903882752000)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42403236342108752011)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(42403235927986752010)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42403236877678752011)
,p_event_id=>wwv_flow_api.id(42403236342108752011)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(42403230903882752000)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Cadastro de Tecnicas'
,p_page_mode=>'MODAL'
,p_step_title=>'Cadastro de Tecnicas'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FAGNER128@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20161010165457'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42403222607014751880)
,p_plug_name=>'Cadastro de Tecnicas'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39024436039559847618)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42403223321468751880)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39024436143615847618)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42403223702182751881)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(42403223321468751880)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42403223205364751880)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(42403223321468751880)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Excluir'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P9_COD'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42403223185309751880)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(42403223321468751880)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salvar'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P9_COD'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42403223041429751880)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(42403223321468751880)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Adicionar'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P9_COD'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(42480527485883482312)
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>9
,p_branch_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42403226293774751947)
,p_name=>'P9_COD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(42403222607014751880)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cod'
,p_source=>'COD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42403226523187751961)
,p_name=>'P9_NOME_TECNICA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(42403222607014751880)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nome da Técnica'
,p_source=>'NOME_TECNICA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(39024464849646847655)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42403226986183751961)
,p_name=>'P9_DESCR_TECNICA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(42403222607014751880)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Descrição'
,p_source=>'DESCR_TECNICA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(39024464849646847655)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42403227314592751962)
,p_name=>'P9_OBJETIVO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(42403222607014751880)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Objetivo'
,p_source=>'OBJETIVO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(39024464849646847655)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42403227747621751963)
,p_name=>'P9_LINK_DINAMICA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(42403222607014751880)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Link da Dinâmica'
,p_source=>'LINK_DINAMICA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(39024464849646847655)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42403558708049570063)
,p_validation_name=>'Valida tecnica igual'
,p_validation_sequence=>10
,p_validation=>'P9_NOME_TECNICA'
,p_validation2=>'NOME_TECNICA'
,p_validation_type=>'ITEM_IN_VALIDATION_NOT_EQ_STRING2'
,p_error_message=>'Técnica já existe'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(42403223041429751880)
,p_only_for_changed_rows=>'Y'
,p_associated_item=>wwv_flow_api.id(42403226523187751961)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42403223826886751881)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(42403223702182751881)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42403224611064751882)
,p_event_id=>wwv_flow_api.id(42403223826886751881)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42403228518597751964)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from TB_SAE_TECNICA_ELICITACAO'
,p_attribute_02=>'TB_SAE_TECNICA_ELICITACAO'
,p_attribute_03=>'P9_COD'
,p_attribute_04=>'COD'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42403228950583751965)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin ',
'    if :P9_COD is null then',
'        select "#OWNER#"."SEQ_SAE_TECNICA_ELICITACAO".nextval',
'          into :P9_COD',
'          from sys.dual;',
'    end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(42403223041429751880)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42403229348590751965)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TB_SAE_TECNICA_ELICITACAO'
,p_attribute_02=>'TB_SAE_TECNICA_ELICITACAO'
,p_attribute_03=>'P9_COD'
,p_attribute_04=>'COD'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42403229722284751965)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(42403223205364751880)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42403230254569751966)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Cadastro de Parametro'
,p_page_mode=>'MODAL'
,p_step_title=>'Cadastro de Parametro'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FAGNER128@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20161106201114'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42477897924603514195)
,p_plug_name=>'Cadastro de Parametros'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39024436039559847618)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42478322230869620718)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39024436143615847618)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42478322588288620719)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(42478322230869620718)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42478322968893620720)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(42478322230869620718)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Excluir'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P10_COD'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42478323347092620721)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(42478322230869620718)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salvar'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P10_COD'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42478323734946620721)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(42478322230869620718)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Adicionar'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P10_COD'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(42477782630741122906)
,p_branch_action=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42478529080562266824)
,p_name=>'P10_COD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(42477897924603514195)
,p_use_cache_before_default=>'NO'
,p_source=>'COD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42479151903296670720)
,p_name=>'P10_NOME_PARAMETRO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(42477897924603514195)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nome do Parâmetro'
,p_source=>'NOME_PARAMETRO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(39024464849646847655)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44949780499501631769)
,p_name=>'P10_SE_EXCLUIR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(42477897924603514195)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Excluir?'
,p_source=>'SE_EXCLUIR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Sim;S,Não;N'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42480174980314399860)
,p_validation_name=>'Valida parametro igual'
,p_validation_sequence=>10
,p_validation=>'P9_NOME_TECNICA'
,p_validation2=>'NOME_TECNICA'
,p_validation_type=>'ITEM_IN_VALIDATION_NOT_EQ_STRING2'
,p_error_message=>'Técnica já existe'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(42478323734946620721)
,p_only_for_changed_rows=>'Y'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42479633647589713932)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(42478322588288620719)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42479634179278713955)
,p_event_id=>wwv_flow_api.id(42479633647589713932)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44950087121658695009)
,p_name=>'Esconder Se_excluir_do_cadastro'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>'P10_COD'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44950087587224695010)
,p_event_id=>wwv_flow_api.id(44950087121658695009)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_SE_EXCLUIR'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42479525053022693102)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from TB_SAE_PARAMETRO'
,p_attribute_02=>'TB_SAE_PARAMETRO'
,p_attribute_03=>'P10_COD'
,p_attribute_04=>'COD'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42479824456168360243)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin ',
'    if :P10_COD is null then',
'        select "#OWNER#"."SEQ_SAE_PARAMETRO".nextval',
'          into :P10_COD',
'          from sys.dual;',
'    end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(42478323734946620721)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42479849136532370882)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TB_SAE_PARAMETRO'
,p_attribute_02=>'TB_SAE_PARAMETRO'
,p_attribute_03=>'P10_COD'
,p_attribute_04=>'COD'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42480073379967388090)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(42478322968893620720)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42480076763585392216)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_api.create_page(
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Cadastro de Pesos'
,p_page_mode=>'MODAL'
,p_step_title=>'Cadastro de Pesos'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FAGNER128@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20161010205730'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42490236829759419123)
,p_plug_name=>'Cadastro de Pesos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39024436039559847618)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42494617249337672791)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39024436143615847618)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42494617535333672792)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(42494617249337672791)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42494617977630672793)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(42494617249337672791)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Excluir'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P11_COD'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42494638375691672794)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(42494617249337672791)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salvar'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P11_COD'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42494638752810672794)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(42494617249337672791)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Adicionar'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P11_COD'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(42489571799287023315)
,p_branch_action=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42490237102752419125)
,p_name=>'P11_COD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(42490236829759419123)
,p_use_cache_before_default=>'NO'
,p_source=>'COD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42490237583628419126)
,p_name=>'P11_COD_TECNICA_ELICITACAO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(42490236829759419123)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nome da Técnica'
,p_source=>'COD_TECNICA_ELICITACAO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select NOME_TECNICA as display_value, COD as return_value ',
'  from TB_SAE_TECNICA_ELICITACAO',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Selecione--'
,p_lov_null_value=>'null'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(39024464849646847655)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42491609972186546700)
,p_name=>'P11_COD_PARAMETRO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(42490236829759419123)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nome do Parâmetro'
,p_source=>'COD_PARAMETRO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select NOME_PARAMETRO as display_value, COD as return_value ',
'  from TB_SAE_PARAMETRO',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Selecione--'
,p_lov_null_value=>'null'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(39024464849646847655)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42493258210431324004)
,p_name=>'P11_VALOR_PESO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(42490236829759419123)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Peso'
,p_source=>'VALOR_PESO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(39024464849646847655)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42495504353591222567)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(42494617535333672792)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42495504752696222569)
,p_event_id=>wwv_flow_api.id(42495504353591222567)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42495436286159203972)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from TB_SAE_PESO'
,p_attribute_02=>'TB_SAE_PESO'
,p_attribute_03=>'P11_COD'
,p_attribute_04=>'COD'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42495724355269870247)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin ',
'    if :P11_COD is null then',
'        select "#OWNER#"."SEQ_SAE_PESO".nextval',
'          into :P11_COD',
'          from sys.dual;',
'    end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(42494638752810672794)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42495782344870876451)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TB_SAE_PESO'
,p_attribute_02=>'TB_SAE_PESO'
,p_attribute_03=>'P11_COD'
,p_attribute_04=>'COD'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42495785537917880282)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(42494617977630672793)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42495787586157886140)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Elicitar Requisitos Junto ao Cliente'
,p_page_mode=>'NORMAL'
,p_step_title=>'Elicitar Requisitos Junto ao Cliente'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_upd_yyyymmddhh24miss=>'20161207213337'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43262958496982150919)
,p_plug_name=>'Elicitação'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43266573028274485300)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(43262958496982150919)
,p_button_name=>'CADASTRAR_PROJETO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cadastrar Projeto'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:13::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43263172437682188931)
,p_name=>'P12_ELICITACAO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(43262958496982150919)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Primeiramente faz-se necess&aacute;rio saber o que &eacute; um requisito:</p>',
'<ul>',
'<li>&Eacute; uma condi&ccedil;&atilde;o ou necessidade de um usu&aacute;rio para resolver um problema ou alcan&ccedil;ar um objetivo.</li>',
'<li>Uma condi&ccedil;&atilde;o ou capacidade que deve possuir um sistema ou componentes de sistema par satisfazer um contrato, norma, especifica&ccedil;&atilde;o ou outro documento formal.</li>',
'<li>Uma representa&ccedil;&atilde;o documentada de uma condi&ccedil;&atilde;o, ou capacidade satisfazendo usu&aacute;rio e o sistema que se pretende criar.</li>',
'<li>Os requisitos especificam "o qu&ecirc;" o sistema deve fazer e n&atilde;o como fazer.</li>',
'</ul>',
'<p>Tipos de requisitos:</p>',
'<ul>',
'<li>Requisitos funcionais: S&atilde;o diretamente ligados a funcionalidade do sistema.</li>',
'<li>Requisitos n&atilde;o funcionais: S&atilde;o requisitos que expressam restri&ccedil;&otilde;es que o sistema deve atender ou qualidades espec&iacute;ficas que o sistema deve ter.</li>',
'<li>Requisitos inversos: Estabelecem condi&ccedil;&otilde;es que nunca podem ocorrer.</li>',
'</ul>',
'<p>Exemplos:</p>',
'<p>Requisito funcional: O sistema deve prover um formul&aacute;rio de entrada para a entrada dos resultados dos testes cl&iacute;nicos de um paciente.<br />Requisito n&atilde;o funcional: O sistema deve emitir um recibo para o cliente, com tempo m&aa'
||'cute;ximo de 8 segundos ap&oacute;s a transa&ccedil;&atilde;o (requisito n&atilde;o funcional de performance)<br />Requisito inverso: O sistema n&atilde;o pode permitir que os dados b&aacute;sicos de um cliente sejam apagados.</p>',
'<p>Requisitos quanto a qualidade<br />A qualidade dos requisitos &eacute; um fator fundamental para o sucesso do produto de sistema a ser constru&iacute;do.</p>',
'<p>Assim, quanto as qualidades dos requisito, elas devem ser:</p>',
'<ul>',
'<li>Verific&aacute;vel</li>',
'<li>Rastre&aacute;vel</li>',
'<li>Intelig&iacute;vel</li>',
'<li>Correto</li>',
'<li>Completo</li>',
'<li>Consistente</li>',
'<li>N&atilde;o-amb&iacute;guo</li>',
'</ul>',
'<p style="text-align: center;"><strong>Elicita&ccedil;&atilde;o de requisitos </strong></p>',
'<p>&Eacute; uma atividade que pode ser considerada a mais importante do processo de engenharia de requisitos e requer forte comunica&ccedil;&atilde;o entre quem desenvolve o sistema e os envolvidos (stakeholders), principalmente com que ir&aacute; ut'
||'ilizar o sistema. Para que se possa realizar uma elicita&ccedil;&atilde;o de requisitos para o sistema existem v&aacute;rias t&eacute;cnicas que dependendo do projeto e dos envolvidos haver&aacute; uma t&eacute;cnica mais adaptada para obten&ccedil;&'
||'atilde;o dos requisitos do sistema.</p>',
'<p>As t&eacute;cnicas de levantamento de requisitos t&ecirc;m por objetivo superar as dificuldades relativas a esta fase. Todas as t&eacute;cnicas possuem um conceito pr&oacute;prio e suas respectivas vantagens e desvantagens, que podem ser utilizada'
||'s em conjunto ao realizar o levantamento.</p>',
'<p>Antes de iniciar o processo de elicita&ccedil;&atilde;o, cadastre o seu projeto:</p>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_grid_label_column_span=>0
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(39024464579609847655)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Cadastro de Projeto'
,p_page_mode=>'MODAL'
,p_step_title=>'Cadastro de Projeto'
,p_step_sub_title=>'Cadastro do Projeto'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FAGNER128@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20161208151350'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43261842390798639550)
,p_plug_name=>'Cadastro do Projeto'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39024436039559847618)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43261843997452639564)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39024436143615847618)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43261844338302639564)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(43261843997452639564)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43261844793871639566)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(43261843997452639564)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salvar'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P13_COD'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43261845154825639567)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(43261843997452639564)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Adicionar'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P13_COD'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43261842760060639558)
,p_name=>'P13_COD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(43261842390798639550)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cod'
,p_source=>'COD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43261843183981639560)
,p_name=>'P13_NOME_PROJETO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(43261842390798639550)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nome do projeto'
,p_source=>'NOME_PROJETO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43261843507178639562)
,p_name=>'P13_DESCR_PROJETO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(43261842390798639550)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Descrição do Projeto'
,p_source=>'DESCR_PROJETO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(39024464849646847655)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43692240806508135071)
,p_name=>'P13_OBJETIVO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(43261842390798639550)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Objetivo'
,p_source=>'OBJETIVO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(39024464849646847655)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43692456685642169558)
,p_name=>'P13_BENEFICIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(43261842390798639550)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Beneficios do projeto'
,p_source=>'BENEFICIO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43692545117345177890)
,p_name=>'P13_ENVOLVIDO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(43261842390798639550)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Envolvidos no projeto'
,p_source=>'ENVOLVIDO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(39024464849646847655)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47672951482375299401)
,p_name=>'P13_CADASTRADO_POR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(43261842390798639550)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&APP_USER.'
,p_source=>'CADASTRADO_POR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43261847521371639576)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(43261844338302639564)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43261848019336639577)
,p_event_id=>wwv_flow_api.id(43261847521371639576)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43261845562072639573)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from TB_SAE_PROJETO'
,p_attribute_02=>'TB_SAE_PROJETO'
,p_attribute_03=>'P13_COD'
,p_attribute_04=>'COD'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43261845992417639574)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin ',
'    if :P13_COD is null then',
'        select "#OWNER#"."SEQ_SAE_PROJETO".nextval',
'          into :P13_COD',
'          from sys.dual;',
'    end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(43261845154825639567)
,p_process_success_message=>'Projeto cadastrado com sucesso.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43261846342373639574)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TB_SAE_PROJETO'
,p_attribute_02=>'TB_SAE_PROJETO'
,p_attribute_03=>'P13_COD'
,p_attribute_04=>'COD'
,p_attribute_11=>'I:U'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43261846746087639575)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43261847194759639575)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_api.create_page(
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Cadastro de informações do sistema'
,p_page_mode=>'NORMAL'
,p_step_title=>'Cadastro de informações do sistema'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FAGNER128@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20161109164009'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43696312696785486428)
,p_plug_name=>'Cadastro de informações do sistema'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44148367140340085525)
,p_plug_name=>'Navegação requisitos'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsSmall'
,p_component_template_options=>'#DEFAULT#:t-Cards--colorize:t-Cards--displayInitials:t-Cards--spanHorizontally:t-Cards--compact'
,p_plug_template=>wwv_flow_api.id(39024447998768847633)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(44148344909703085521)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(39024458038162847648)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44186531370548120107)
,p_plug_name=>'Relatório de informações'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39024443613162847625)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select COD,',
'       COD_PROJETO,',
'       INFORMACAO_LEVANTADA,',
'       DATA_INFORMACAO,',
'       PROBLEMA,',
'       PROVAVEL_SOLUCAO,',
'       LIMITE_APLICACAO,',
'       OBSERVACAO',
'  from TB_SAE_INFORMACAO_OBTIDA',
'where cod_projeto = :P14_COD_PROJETO',
'order by data_informacao'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(44186531498680120107)
,p_name=>'Relatório de informações'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'Não há dados cadastrados ainda.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::P14_COD:#COD#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif" alt="">'
,p_icon_view_columns_per_row=>1
,p_owner=>'FAGNER128@GMAIL.COM'
,p_internal_uid=>44186531498680120107
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44186531754132120111)
,p_db_column_name=>'COD'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Cod'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44186532019332120113)
,p_db_column_name=>'COD_PROJETO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Cod Projeto'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44186532406403120113)
,p_db_column_name=>'INFORMACAO_LEVANTADA'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Informações Levantada'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44186532815150120113)
,p_db_column_name=>'DATA_INFORMACAO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Data das Informações'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44186533250906120114)
,p_db_column_name=>'PROBLEMA'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Problemas'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44186533646736120115)
,p_db_column_name=>'PROVAVEL_SOLUCAO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Provavel Solução'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44186534029722120116)
,p_db_column_name=>'LIMITE_APLICACAO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Limites da Aplicação'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44186534471513120116)
,p_db_column_name=>'OBSERVACAO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Observações'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(44186546098883121468)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'441865461'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'COD:COD_PROJETO:INFORMACAO_LEVANTADA:DATA_INFORMACAO:PROBLEMA:PROVAVEL_SOLUCAO:LIMITE_APLICACAO:OBSERVACAO'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43696313265009486429)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(43696312696785486428)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:14::'
,p_button_condition=>'P14_COD'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43696313190753486429)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(43696312696785486428)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Deletar'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P14_COD'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43696313087998486429)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(43696312696785486428)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salvar'
,p_button_position=>'BOTTOM'
,p_button_condition=>'P14_COD'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43696312989534486429)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(43696312696785486428)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Incluir informações'
,p_button_position=>'BOTTOM'
,p_button_condition=>'P14_COD'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(43696314829396486432)
,p_branch_action=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(43696312989534486429)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(44210624789816023972)
,p_branch_action=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:14::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(43696313087998486429)
,p_branch_sequence=>2
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43696355427331486507)
,p_name=>'P14_COD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(43696312696785486428)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cod'
,p_source=>'COD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43696355736240486522)
,p_name=>'P14_COD_PROJETO'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(43696312696785486428)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
':P24_SELECAO_DO_PROJETO',
''))
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Projeto'
,p_source=>'COD_PROJETO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select NOME_PROJETO as display_value, COD as return_value ',
'  from TB_SAE_PROJETO',
' order by 1'))
,p_cSize=>30
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(39024464732272847655)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43696356102046486523)
,p_name=>'P14_INFORMACAO_LEVANTADA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(43696312696785486428)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Informações levantadas'
,p_source=>'INFORMACAO_LEVANTADA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(39024464994252847656)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43696356526098486525)
,p_name=>'P14_DATA_INFORMACAO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(43696312696785486428)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SYSDATE'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Data das informações'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'DATA_INFORMACAO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(39024464732272847655)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43696356903589486526)
,p_name=>'P14_PROBLEMA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(43696312696785486428)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Problema'
,p_source=>'PROBLEMA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(39024464994252847656)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43696357309598486526)
,p_name=>'P14_PROVAVEL_SOLUCAO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(43696312696785486428)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Provável solução'
,p_source=>'PROVAVEL_SOLUCAO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(39024464732272847655)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43696357780979486526)
,p_name=>'P14_LIMITE_APLICACAO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(43696312696785486428)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Limites da aplicação'
,p_source=>'LIMITE_APLICACAO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(39024464994252847656)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43696358158219486528)
,p_name=>'P14_OBSERVACAO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(43696312696785486428)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Observações'
,p_source=>'OBSERVACAO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(39024464732272847655)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(45080425828181047112)
,p_name=>'DESABILITAR INPUT POPUP LOV'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45080425950667047113)
,p_event_id=>wwv_flow_api.id(45080425828181047112)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var arrowNode = $x_ByClass("a-Button--popupLOV");',
'$x_Hide(arrowNode);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(45167745795677414066)
,p_name=>'marcar botão'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45167746137098414068)
,p_event_id=>wwv_flow_api.id(45167745795677414066)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_CSS'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(44148367140340085525)
,p_attribute_01=>'t-Card'
,p_attribute_02=>'text-decoration: underline'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45171260070966217232)
,p_event_id=>wwv_flow_api.id(45167745795677414066)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_CSS'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(44148367140340085525)
,p_attribute_01=>'display'
,p_attribute_02=>'flex'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43696358945696486529)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from TB_SAE_INFORMACAO_OBTIDA'
,p_attribute_02=>'TB_SAE_INFORMACAO_OBTIDA'
,p_attribute_03=>'P14_COD'
,p_attribute_04=>'COD'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43696359303551486530)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin ',
'    if :P14_COD is null then',
'        select "#OWNER#"."SEQ_SAE_INFORMACAO_OBTIDA".nextval',
'          into :P14_COD',
'          from sys.dual;',
'    end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(43696312989534486429)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43696359785639486531)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TB_SAE_INFORMACAO_OBTIDA'
,p_attribute_02=>'TB_SAE_INFORMACAO_OBTIDA'
,p_attribute_03=>'P14_COD'
,p_attribute_04=>'COD'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43696360186523486531)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(43696313190753486429)
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_api.create_page(
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Cadastro de atores do sistema'
,p_page_mode=>'NORMAL'
,p_step_title=>'Cadastro de atores do sistema'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FAGNER128@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20161109144538'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(43778700384495810574)
,p_name=>'Relatório dos atores do sistema'
,p_template=>wwv_flow_api.id(39024444156989847625)
,p_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_column=>false
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'"COD",',
'"COD" COD_DISPLAY,',
'"COD_PROJETO",',
'"NOME_ATOR",',
'"DESCR_ATOR",',
'"TIPO_INTERACAO"',
'from "#OWNER#"."TB_SAE_ATOR_SISTEMA"',
'where',
'COD_PROJETO = :P15_XCOD_TB_SAE_PROJETO',
''))
,p_source_type=>'NATIVE_TABFORM'
,p_display_when_condition=>'P15_XCOD_TB_SAE_PROJETO'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'N'
,p_query_row_template=>wwv_flow_api.id(39024452959156847639)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>1000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43778714208890810588)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_use_as_row_header=>'N'
,p_display_as=>'CHECKBOX'
,p_report_column_width=>5
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43778701273195810575)
,p_query_column_id=>2
,p_column_alias=>'COD'
,p_column_display_sequence=>2
,p_column_heading=>'Cod'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_pk_col_source_type=>'S'
,p_pk_col_source=>'SEQ_SAE_ATOR_SISTEMA'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_ATOR_SISTEMA'
,p_ref_column_name=>'COD'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43778701974201810576)
,p_query_column_id=>3
,p_column_alias=>'COD_DISPLAY'
,p_column_display_sequence=>3
,p_column_heading=>'Cod'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_column_width=>16
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_ATOR_SISTEMA'
,p_ref_column_name=>'COD_DISPLAY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43778702317690810576)
,p_query_column_id=>4
,p_column_alias=>'COD_PROJETO'
,p_column_display_sequence=>4
,p_column_heading=>'Cod Projeto'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_column_default=>'P15_XCOD_TB_SAE_PROJETO'
,p_column_default_type=>'ITEM'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_ATOR_SISTEMA'
,p_ref_column_name=>'COD_PROJETO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43778702700273810576)
,p_query_column_id=>5
,p_column_alias=>'NOME_ATOR'
,p_column_display_sequence=>5
,p_column_heading=>'Nome do ator'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>40
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_ATOR_SISTEMA'
,p_ref_column_name=>'NOME_ATOR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43778703176381810577)
,p_query_column_id=>6
,p_column_alias=>'DESCR_ATOR'
,p_column_display_sequence=>6
,p_column_heading=>'Descrição do ator'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXTAREA'
,p_lov_show_nulls=>'YES'
,p_report_column_width=>100
,p_column_width=>70
,p_column_height=>3
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_ATOR_SISTEMA'
,p_ref_column_name=>'DESCR_ATOR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43778703900468810577)
,p_query_column_id=>7
,p_column_alias=>'TIPO_INTERACAO'
,p_column_display_sequence=>7
,p_column_heading=>'Tipo de interação com a aplicação'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXTAREA'
,p_lov_show_nulls=>'YES'
,p_report_column_width=>100
,p_column_width=>70
,p_column_height=>3
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_ATOR_SISTEMA'
,p_ref_column_name=>'TIPO_INTERACAO'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43779590721089912856)
,p_plug_name=>'seleção do projeto'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44149052768759236988)
,p_plug_name=>'Navegação requisitos'
,p_region_template_options=>'t-Wizard--hideStepsSmall'
,p_component_template_options=>'#DEFAULT#:t-Cards--colorize:t-Cards--displayInitials:t-Cards--spanHorizontally:t-Cards--compact'
,p_plug_template=>wwv_flow_api.id(39024447998768847633)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(44148344909703085521)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(39024458038162847648)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43778707536555810582)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(43778700384495810574)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43778707754102810582)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(43778700384495810574)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Deletar'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43778707608522810582)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(43778700384495810574)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salvar'
,p_button_position=>'BOTTOM'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43778707843136810582)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(43778700384495810574)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(39024465202625847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Adicionar novo ator'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-plus'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(43699852601143454870)
,p_branch_action=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(43778707608522810582)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43776042464116205266)
,p_name=>'P15_XCOD_TB_SAE_PROJETO'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(43779590721089912856)
,p_item_default=>':P24_SELECAO_DO_PROJETO'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Projeto'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select NOME_PROJETO as display_value, COD as return_value ',
'  from TB_SAE_PROJETO',
' order by 1'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(39024464732272847655)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(43778710950541810584)
,p_tabular_form_region_id=>wwv_flow_api.id(43778700384495810574)
,p_validation_name=>'COD_PROJETO not null'
,p_validation_sequence=>30
,p_validation=>'COD_PROJETO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(43778707608522810582)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'COD_PROJETO'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(43778711313473810585)
,p_tabular_form_region_id=>wwv_flow_api.id(43778700384495810574)
,p_validation_name=>'COD_PROJETO must be numeric'
,p_validation_sequence=>30
,p_validation=>'COD_PROJETO'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(43778707608522810582)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'COD_PROJETO'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(45157015257236570054)
,p_name=>'DESABILITAR INPUT POPUP LOV'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45157015607443570056)
,p_event_id=>wwv_flow_api.id(45157015257236570054)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var arrowNode = $x_ByClass("a-Button--popupLOV");',
'$x_Hide(arrowNode);'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43778711601982810585)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(43778700384495810574)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'TB_SAE_ATOR_SISTEMA'
,p_attribute_03=>'COD'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(43778707608522810582)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43778712039187810585)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(43778700384495810574)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'TB_SAE_ATOR_SISTEMA'
,p_attribute_03=>'COD'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_api.create_page(
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Cadastro de Features'
,p_page_mode=>'NORMAL'
,p_step_title=>'Cadastro de Features'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FAGNER128@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20161109144605'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(43789894992246940847)
,p_name=>'Cadastro de Features'
,p_template=>wwv_flow_api.id(39024444156989847625)
,p_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'"COD",',
'"COD" COD_DISPLAY,',
'"COD_PROJETO",',
'"NOME_FEATURE",',
'"DESCR_FEATURE"',
'from "#OWNER#"."TB_SAE_FEATURE"',
'where',
'COD_PROJETO = :P16_XCOD_TB_SAE_PROJETO'))
,p_source_type=>'NATIVE_TABFORM'
,p_display_when_condition=>'P16_XCOD_TB_SAE_PROJETO'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'N'
,p_query_row_template=>wwv_flow_api.id(39024452959156847639)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43789913937364940864)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_use_as_row_header=>'N'
,p_display_as=>'CHECKBOX'
,p_report_column_width=>5
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43789905587246940852)
,p_query_column_id=>2
,p_column_alias=>'COD'
,p_column_display_sequence=>2
,p_column_heading=>'Cod'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_pk_col_source_type=>'S'
,p_pk_col_source=>'SEQ_SAE_FEATURE'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_FEATURE'
,p_ref_column_name=>'COD'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43789905936626940853)
,p_query_column_id=>3
,p_column_alias=>'COD_DISPLAY'
,p_column_display_sequence=>3
,p_column_heading=>'Cod'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_column_width=>16
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_FEATURE'
,p_ref_column_name=>'COD_DISPLAY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43789906334858940853)
,p_query_column_id=>4
,p_column_alias=>'COD_PROJETO'
,p_column_display_sequence=>4
,p_column_heading=>'Cod Projeto'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_column_default=>'P16_XCOD_TB_SAE_PROJETO'
,p_column_default_type=>'ITEM'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_FEATURE'
,p_ref_column_name=>'COD_PROJETO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43789906767273940853)
,p_query_column_id=>5
,p_column_alias=>'NOME_FEATURE'
,p_column_display_sequence=>5
,p_column_heading=>'Nome da feature'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_report_column_width=>20
,p_column_width=>40
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_FEATURE'
,p_ref_column_name=>'NOME_FEATURE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43789907164523940854)
,p_query_column_id=>6
,p_column_alias=>'DESCR_FEATURE'
,p_column_display_sequence=>6
,p_column_heading=>'Descrição da feature'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXTAREA'
,p_lov_show_nulls=>'YES'
,p_report_column_width=>100
,p_column_width=>160
,p_column_height=>3
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_FEATURE'
,p_ref_column_name=>'DESCR_FEATURE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43790276899219001420)
,p_plug_name=>'seleção do projeto'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44149053363638240031)
,p_plug_name=>'Navegação requisitos'
,p_region_template_options=>'t-Wizard--hideStepsSmall'
,p_component_template_options=>'#DEFAULT#:t-Cards--colorize:t-Cards--displayInitials:t-Cards--spanHorizontally:t-Cards--compact'
,p_plug_template=>wwv_flow_api.id(39024447998768847633)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(44148344909703085521)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(39024458038162847648)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43789909063746940857)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(43789894992246940847)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43789909261084940857)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(43789894992246940847)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Deletar'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43789909134923940857)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(43789894992246940847)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salvar'
,p_button_position=>'BOTTOM'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43789909378543940857)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(43789894992246940847)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(39024465202625847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Adicionar nova feature'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-plus'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(43789914336833940865)
,p_branch_action=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(43789909134923940857)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43790277178607001424)
,p_name=>'P16_XCOD_TB_SAE_PROJETO'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(43790276899219001420)
,p_item_default=>':P24_SELECAO_DO_PROJETO'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Projeto'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select NOME_PROJETO as display_value, COD as return_value ',
'  from TB_SAE_PROJETO',
' order by 1'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(39024464732272847655)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(43789910999252940859)
,p_tabular_form_region_id=>wwv_flow_api.id(43789894992246940847)
,p_validation_name=>'COD_PROJETO not null'
,p_validation_sequence=>30
,p_validation=>'COD_PROJETO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(43789909134923940857)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'COD_PROJETO'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(43789911307680940860)
,p_tabular_form_region_id=>wwv_flow_api.id(43789894992246940847)
,p_validation_name=>'COD_PROJETO must be numeric'
,p_validation_sequence=>30
,p_validation=>'COD_PROJETO'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(43789909134923940857)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'COD_PROJETO'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(45157762240403592178)
,p_name=>'DESABILITAR INPUT POPUP LOV'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45157762689414592179)
,p_event_id=>wwv_flow_api.id(45157762240403592178)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var arrowNode = $x_ByClass("a-Button--popupLOV");',
'$x_Hide(arrowNode);'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43789911696731940860)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(43789894992246940847)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'TB_SAE_FEATURE'
,p_attribute_03=>'COD'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(43789909134923940857)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43789912016766940862)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(43789894992246940847)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'TB_SAE_FEATURE'
,p_attribute_03=>'COD'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_api.create_page(
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Cadastro de Funcionalidades'
,p_page_mode=>'NORMAL'
,p_step_title=>'Cadastro de Funcionalidades'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FAGNER128@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20161109144644'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(44083307998181919689)
,p_name=>'Cadastro de Funcionalidades'
,p_template=>wwv_flow_api.id(39024444156989847625)
,p_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'"COD",',
'"COD" COD_DISPLAY,',
'"COD_FEATURE",',
'"NOME_FUNCIONALIDADE",',
'"DESCR_FUNCIONALIDADE",',
'"CRITERIO_ACEITACAO"',
'from "#OWNER#"."TB_SAE_FUNCIONALIDADE"',
'where',
'COD_FEATURE = :P17_XCOD_TB_SAE_FEATURE',
''))
,p_source_type=>'NATIVE_TABFORM'
,p_display_when_condition=>'P17_XCOD_TB_SAE_FEATURE'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'N'
,p_query_row_template=>wwv_flow_api.id(39024452959156847639)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44083317933811919712)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_report_column_width=>5
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44083308532623919695)
,p_query_column_id=>2
,p_column_alias=>'COD'
,p_column_display_sequence=>2
,p_column_heading=>'Cod'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_pk_col_source_type=>'S'
,p_pk_col_source=>'SEQ_SAE_FUNCIONALIDADE'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_FUNCIONALIDADE'
,p_ref_column_name=>'COD'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44083308932480919696)
,p_query_column_id=>3
,p_column_alias=>'COD_DISPLAY'
,p_column_display_sequence=>3
,p_column_heading=>'Cod'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_column_width=>16
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_FUNCIONALIDADE'
,p_ref_column_name=>'COD_DISPLAY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44083309329176919696)
,p_query_column_id=>4
,p_column_alias=>'COD_FEATURE'
,p_column_display_sequence=>4
,p_column_heading=>'Cod Feature'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_column_default=>'P17_XCOD_TB_SAE_FEATURE'
,p_column_default_type=>'ITEM'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_FUNCIONALIDADE'
,p_ref_column_name=>'COD_FEATURE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44083309776971919696)
,p_query_column_id=>5
,p_column_alias=>'NOME_FUNCIONALIDADE'
,p_column_display_sequence=>5
,p_column_heading=>'Nome da funcionalidade'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_report_column_width=>20
,p_column_width=>40
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_FUNCIONALIDADE'
,p_ref_column_name=>'NOME_FUNCIONALIDADE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44083310170352919697)
,p_query_column_id=>6
,p_column_alias=>'DESCR_FUNCIONALIDADE'
,p_column_display_sequence=>6
,p_column_heading=>'Descrição da funcionalidade'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXTAREA'
,p_lov_show_nulls=>'YES'
,p_report_column_width=>100
,p_column_width=>50
,p_column_height=>3
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_FUNCIONALIDADE'
,p_ref_column_name=>'DESCR_FUNCIONALIDADE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44083310574414919697)
,p_query_column_id=>7
,p_column_alias=>'CRITERIO_ACEITACAO'
,p_column_display_sequence=>7
,p_column_heading=>'Criterios de aceitação'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXTAREA'
,p_lov_show_nulls=>'YES'
,p_report_column_width=>100
,p_column_width=>50
,p_column_height=>3
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_FUNCIONALIDADE'
,p_ref_column_name=>'CRITERIO_ACEITACAO'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44083413270231966973)
,p_plug_name=>'seleção do projeto'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44149055756871243287)
,p_plug_name=>'Navegação requisitos'
,p_region_template_options=>'t-Wizard--hideStepsSmall'
,p_component_template_options=>'#DEFAULT#:t-Cards--colorize:t-Cards--displayInitials:t-Cards--spanHorizontally:t-Cards--compact'
,p_plug_template=>wwv_flow_api.id(39024447998768847633)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(44148344909703085521)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(39024458038162847648)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44083312778875919703)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(44083307998181919689)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44083312944926919703)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(44083307998181919689)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Deletar'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44083312829755919703)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(44083307998181919689)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salvar'
,p_button_position=>'BOTTOM'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44083313064877919703)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(44083307998181919689)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(39024465202625847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Adicionar nova funcionalidade'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-plus'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(44083318315361919713)
,p_branch_action=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(44083312829755919703)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44083413581610966975)
,p_name=>'P17_XCOD_TB_SAE_PROJETO'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(44083413270231966973)
,p_item_default=>':P24_SELECAO_DO_PROJETO'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Projeto'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select NOME_PROJETO as display_value, COD as return_value ',
'  from TB_SAE_PROJETO',
' order by 1'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(39024464732272847655)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44086790098032310855)
,p_name=>'P17_XCOD_TB_SAE_FEATURE'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(44083413270231966973)
,p_prompt=>'Nome da feature'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'   NOME_FEATURE as display_value, ',
'   COD as return_value ',
'from ',
'   TB_SAE_FEATURE',
'where',
'   COD_PROJETO = :P17_XCOD_TB_SAE_PROJETO',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Selecione--'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(39024464994252847656)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'REDIRECT_SET_VALUE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(44083314605801919707)
,p_tabular_form_region_id=>wwv_flow_api.id(44083307998181919689)
,p_validation_name=>'COD_FEATURE not null'
,p_validation_sequence=>30
,p_validation=>'COD_FEATURE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(44083312829755919703)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'COD_FEATURE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(44083315081432919708)
,p_tabular_form_region_id=>wwv_flow_api.id(44083307998181919689)
,p_validation_name=>'COD_FEATURE must be numeric'
,p_validation_sequence=>30
,p_validation=>'COD_FEATURE'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(44083312829755919703)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'COD_FEATURE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(45158117090713244023)
,p_name=>'DESABILITAR INPUT POPUP LOV'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45158117404285244025)
,p_event_id=>wwv_flow_api.id(45158117090713244023)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var arrowNode = $x_ByClass("a-Button--popupLOV");',
'$x_Hide(arrowNode);'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44083315386506919708)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(44083307998181919689)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'TB_SAE_FUNCIONALIDADE'
,p_attribute_03=>'COD'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(44083312829755919703)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44083315753910919709)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(44083307998181919689)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'TB_SAE_FUNCIONALIDADE'
,p_attribute_03=>'COD'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_api.create_page(
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Cadastro de Requisitos Não Funcionais'
,p_page_mode=>'NORMAL'
,p_step_title=>'Cadastro de Requisitos Não Funcionais'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FAGNER128@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20161109144725'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(44097488386843329080)
,p_name=>'Cadastro de Requisitos Não Funcionais'
,p_template=>wwv_flow_api.id(39024444156989847625)
,p_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'"COD",',
'"COD" COD_DISPLAY,',
'"COD_PROJETO",',
'"NOME_REQ_NAO_FUNCIONAL",',
'"DESCR_REQ_NAO_FUNCIONAL"',
'from "#OWNER#"."TB_SAE_REQUISITO_NAO_FUNCIONAL"',
'where',
'COD_PROJETO = :P18_XCOD_TB_SAE_PROJETO'))
,p_source_type=>'NATIVE_TABFORM'
,p_display_when_condition=>'P18_XCOD_TB_SAE_PROJETO'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'N'
,p_query_row_template=>wwv_flow_api.id(39024452959156847639)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44097497373165329111)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_report_column_width=>5
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44097488901171329086)
,p_query_column_id=>2
,p_column_alias=>'COD'
,p_column_display_sequence=>2
,p_column_heading=>'Cod'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_pk_col_source_type=>'S'
,p_pk_col_source=>'SEQ_SAE_REQ_NAO_FUNCIONAL'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_REQUISITO_NAO_FUNCIONAL'
,p_ref_column_name=>'COD'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44097489303626329087)
,p_query_column_id=>3
,p_column_alias=>'COD_DISPLAY'
,p_column_display_sequence=>3
,p_column_heading=>'Cod'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_column_width=>16
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_REQUISITO_NAO_FUNCIONAL'
,p_ref_column_name=>'COD_DISPLAY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44097489713394329087)
,p_query_column_id=>4
,p_column_alias=>'COD_PROJETO'
,p_column_display_sequence=>4
,p_column_heading=>'Cod Projeto'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_column_default=>'P18_XCOD_TB_SAE_PROJETO'
,p_column_default_type=>'ITEM'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_REQUISITO_NAO_FUNCIONAL'
,p_ref_column_name=>'COD_PROJETO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44097490156870329087)
,p_query_column_id=>5
,p_column_alias=>'NOME_REQ_NAO_FUNCIONAL'
,p_column_display_sequence=>5
,p_column_heading=>'Nome do requisito não-funcional'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_report_column_width=>20
,p_column_width=>40
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_REQUISITO_NAO_FUNCIONAL'
,p_ref_column_name=>'NOME_REQ_NAO_FUNCIONAL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44097490519852329088)
,p_query_column_id=>6
,p_column_alias=>'DESCR_REQ_NAO_FUNCIONAL'
,p_column_display_sequence=>6
,p_column_heading=>'Descrição do requisito Nao-funcional'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXTAREA'
,p_lov_show_nulls=>'YES'
,p_report_column_width=>100
,p_column_width=>100
,p_column_height=>3
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_REQUISITO_NAO_FUNCIONAL'
,p_ref_column_name=>'DESCR_REQ_NAO_FUNCIONAL'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44097641685004067910)
,p_plug_name=>'seleção do projeto'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44149076995055245965)
,p_plug_name=>'Navegação requisitos'
,p_region_template_options=>'t-Wizard--hideStepsSmall'
,p_component_template_options=>'#DEFAULT#:t-Cards--colorize:t-Cards--displayInitials:t-Cards--spanHorizontally:t-Cards--compact'
,p_plug_template=>wwv_flow_api.id(39024447998768847633)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(44148344909703085521)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(39024458038162847648)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44097492414266329101)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(44097488386843329080)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44097492613199329101)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(44097488386843329080)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Deletar'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44097492594758329101)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(44097488386843329080)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salvar'
,p_button_position=>'BELOW_BOX'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44097492748302329101)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(44097488386843329080)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(39024465202625847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Adicionar novo requisito não-funcional'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-plus'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(44097497780300329111)
,p_branch_action=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(44097492594758329101)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44097641919204067910)
,p_name=>'P18_XCOD_TB_SAE_PROJETO'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(44097641685004067910)
,p_item_default=>':P24_SELECAO_DO_PROJETO'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Projeto'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select NOME_PROJETO as display_value, COD as return_value ',
'  from TB_SAE_PROJETO',
' order by 1'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(39024464732272847655)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(44097494361813329105)
,p_tabular_form_region_id=>wwv_flow_api.id(44097488386843329080)
,p_validation_name=>'COD_PROJETO not null'
,p_validation_sequence=>30
,p_validation=>'COD_PROJETO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(44097492594758329101)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'COD_PROJETO'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(44097494739429329106)
,p_tabular_form_region_id=>wwv_flow_api.id(44097488386843329080)
,p_validation_name=>'COD_PROJETO must be numeric'
,p_validation_sequence=>30
,p_validation=>'COD_PROJETO'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(44097492594758329101)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'COD_PROJETO'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(45158912644631684573)
,p_name=>'DESABILITAR INPUT POPUP LOV'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45158913017355684575)
,p_event_id=>wwv_flow_api.id(45158912644631684573)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var arrowNode = $x_ByClass("a-Button--popupLOV");',
'$x_Hide(arrowNode);'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44097495049767329106)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(44097488386843329080)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'TB_SAE_REQUISITO_NAO_FUNCIONAL'
,p_attribute_03=>'COD'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(44097492594758329101)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44097495444495329107)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(44097488386843329080)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'TB_SAE_REQUISITO_NAO_FUNCIONAL'
,p_attribute_03=>'COD'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_api.create_page(
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Cadastro de Regras de Negócio'
,p_page_mode=>'NORMAL'
,p_step_title=>'Cadastro de Regras de Negócio'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FAGNER128@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20161109144742'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(44101658746721256803)
,p_name=>'Cadastro de Regras de Negócio'
,p_template=>wwv_flow_api.id(39024444156989847625)
,p_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'"COD",',
'"COD" COD_DISPLAY,',
'"COD_PROJETO",',
'"NOME_REGRA_NEGOCIO",',
'"DESCR_REGRA_NEGOCIO"',
'from "#OWNER#"."TB_SAE_REGRA_NEGOCIO"',
'where',
'COD_PROJETO = :P19_XCOD_TB_SAE_PROJETO',
''))
,p_source_type=>'NATIVE_TABFORM'
,p_display_when_condition=>'P19_XCOD_TB_SAE_PROJETO'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'N'
,p_query_row_template=>wwv_flow_api.id(39024452959156847639)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44101667873967256829)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_report_column_width=>5
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44101659347660256811)
,p_query_column_id=>2
,p_column_alias=>'COD'
,p_column_display_sequence=>2
,p_column_heading=>'Cod'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_pk_col_source_type=>'S'
,p_pk_col_source=>'SEQ_SAE_REGRA_NEGOCIO'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_REGRA_NEGOCIO'
,p_ref_column_name=>'COD'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44101659778272256812)
,p_query_column_id=>3
,p_column_alias=>'COD_DISPLAY'
,p_column_display_sequence=>3
,p_column_heading=>'Cod'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_column_width=>16
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_REGRA_NEGOCIO'
,p_ref_column_name=>'COD_DISPLAY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44101660114871256813)
,p_query_column_id=>4
,p_column_alias=>'COD_PROJETO'
,p_column_display_sequence=>4
,p_column_heading=>'Cod Projeto'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_column_default=>'P19_XCOD_TB_SAE_PROJETO'
,p_column_default_type=>'ITEM'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_REGRA_NEGOCIO'
,p_ref_column_name=>'COD_PROJETO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44101660523405256813)
,p_query_column_id=>5
,p_column_alias=>'NOME_REGRA_NEGOCIO'
,p_column_display_sequence=>5
,p_column_heading=>'Nome da regra de negócio'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_report_column_width=>20
,p_column_width=>40
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_REGRA_NEGOCIO'
,p_ref_column_name=>'NOME_REGRA_NEGOCIO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44101660904310256814)
,p_query_column_id=>6
,p_column_alias=>'DESCR_REGRA_NEGOCIO'
,p_column_display_sequence=>6
,p_column_heading=>'Descrição da regra de negócio'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXTAREA'
,p_lov_show_nulls=>'YES'
,p_report_column_width=>100
,p_column_width=>100
,p_column_height=>3
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_REGRA_NEGOCIO'
,p_ref_column_name=>'DESCR_REGRA_NEGOCIO'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44101673433448268864)
,p_plug_name=>'seleção do projeto'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44149077656163248937)
,p_plug_name=>'Navegação requisitos'
,p_region_template_options=>'t-Wizard--hideStepsSmall'
,p_component_template_options=>'#DEFAULT#:t-Cards--colorize:t-Cards--displayInitials:t-Cards--spanHorizontally:t-Cards--compact'
,p_plug_template=>wwv_flow_api.id(39024447998768847633)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(44148344909703085521)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(39024458038162847648)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44101662870026256821)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(44101658746721256803)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44101663089109256821)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(44101658746721256803)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Deletar'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44101662938791256821)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(44101658746721256803)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salvar'
,p_button_position=>'BELOW_BOX'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44101663106807256821)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(44101658746721256803)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(39024465202625847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Adicionar nova regra de negócio'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-plus'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(44101668222364256829)
,p_branch_action=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(44101662938791256821)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44101673760908268867)
,p_name=>'P19_XCOD_TB_SAE_PROJETO'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(44101673433448268864)
,p_item_default=>':P24_SELECAO_DO_PROJETO'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Projeto'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select NOME_PROJETO as display_value, COD as return_value ',
'  from TB_SAE_PROJETO',
' order by 1'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(39024464732272847655)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(44101664728225256824)
,p_tabular_form_region_id=>wwv_flow_api.id(44101658746721256803)
,p_validation_name=>'COD_PROJETO not null'
,p_validation_sequence=>30
,p_validation=>'COD_PROJETO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(44101662938791256821)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'COD_PROJETO'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(44101665166831256825)
,p_tabular_form_region_id=>wwv_flow_api.id(44101658746721256803)
,p_validation_name=>'COD_PROJETO must be numeric'
,p_validation_sequence=>30
,p_validation=>'COD_PROJETO'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(44101662938791256821)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'COD_PROJETO'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(45159057889704319279)
,p_name=>'DESABILITAR INPUT POPUP LOV'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45159058233544319280)
,p_event_id=>wwv_flow_api.id(45159057889704319279)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var arrowNode = $x_ByClass("a-Button--popupLOV");',
'$x_Hide(arrowNode);'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44101665455317256826)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(44101658746721256803)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'TB_SAE_REGRA_NEGOCIO'
,p_attribute_03=>'COD'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(44101662938791256821)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44101665853988256826)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(44101658746721256803)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'TB_SAE_REGRA_NEGOCIO'
,p_attribute_03=>'COD'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Rastreabilidade de Requisitos'
,p_page_mode=>'NORMAL'
,p_step_title=>'Rastreabilidade de Requisitos'
,p_step_sub_title=>'Rastreabilidade de Requisitos'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_upd_yyyymmddhh24miss=>'20161209102436'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44131146063524586133)
,p_plug_name=>'Rastreabilidade dos Requisitos'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select case when connect_by_isleaf = 1 then 0',
'            when level = 1             then 1',
'            else                           -1',
'       end as status, ',
'       level, ',
'       label||'': ''||name as title, ',
'       case when item_type = ''P'' then ''fa-file-text-o''',
'            when item_type = ''F'' then ''fa-caret-right''',
'            when item_type = ''Fe'' then ''fa-sign-in''',
'       else null',
'       end as icon, ',
'       id as value, ',
'       case when tooltip is not null then name||'' - ''||tooltip||''% complete''',
'            else name',
'       end as tooltip,',
'       case when item_type = ''P'' then ',
'               apex_util.prepare_url(''f?p=''||:app_id||'':13:''||:app_session||'':Fe:::P20_NO_SELECIONADO,P13_COD:''||id||'',''||id)',
'            when item_type = ''Fe'' then',
'               apex_util.prepare_url(''f?p=''||:app_id||'':16:''||:app_session||'':Fe:::P20_NO_SELECIONADO,P16_XCOD_TB_SAE_PROJETO:''||id||'',''||link)',
'            when item_type = ''F'' then ',
'               apex_util.prepare_url(''f?p=''||:app_id||'':17:''||:app_session||'':Fe:::P20_NO_SELECIONADO,P17_XCOD_TB_SAE_PROJETO,P17_XCOD_TB_SAE_FEATURE:''||id||'',''||link)',
'       end as link ',
'from (',
'select ''P'' item_type,',
'       t.label label,',
'       to_char(projeto.COD) id,',
'       null parent,',
'       projeto.NOME_PROJETO name,',
'       null tooltip,',
'       null link',
'  from TB_SAE_PROJETO projeto, (select wwv_flow_lang.system_message(''-PROJETO'') label from dual) t',
'union all',
'select ''Fe'' item_type,',
'       u.label label,',
'       to_char(feature.COD_PROJETO)||''-''||to_char(feature.COD) id,',
'       to_char(feature.COD_PROJETO) parent,',
'       feature.NOME_FEATURE name,',
'       null tooltip,',
'       feature.COD_PROJETO||'',''||feature.COD link',
'  from TB_SAE_FEATURE feature, (select wwv_flow_lang.system_message(''-FEATURE'') label from dual) u',
'union all',
'select distinct ''F'' item_type,',
'       v.label label,',
'       to_char(feature.COD_PROJETO)||''-''||to_char(funcionalidade.COD_FEATURE)||''-''||to_char(funcionalidade.COD) id,',
'       to_char(feature.COD_PROJETO)||''-''||to_char(funcionalidade.COD_FEATURE) parent,',
'       funcionalidade.NOME_FUNCIONALIDADE name,',
'       null tooltip,',
'       feature.COD_PROJETO||'',''||funcionalidade.COD_FEATURE link',
'  from TB_SAE_FUNCIONALIDADE funcionalidade, TB_SAE_FEATURE feature, (select wwv_flow_lang.system_message(''-FUNCIONALIDADE'') label from dual) v',
')',
'start with parent is null',
'connect by prior id = parent',
'order siblings by name'))
,p_plug_source_type=>'NATIVE_JSTREE'
,p_plug_query_row_template=>1
,p_plug_query_no_data_found=>'No data found.'
,p_attribute_02=>'S'
,p_attribute_04=>'DB'
,p_attribute_07=>'APEX_TREE'
,p_plug_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select case when connect_by_isleaf = 1 then 0',
'            when level = 1             then 1',
'            else                           -1',
'       end as status, ',
'       level, ',
'       "NOME_PROJETO" as title, ',
'       null as icon, ',
'       "COD" as value, ',
'       "COD" as tooltip, ',
'       null as link ',
'from "#OWNER#"."TB_SAE_PROJETO"',
'start with "COD" = 1',
'connect by prior "COD" = "COD"',
'order siblings by "NOME_PROJETO"',
'',
'            when item_type = ''P'' then ''fa-file-text-o''',
'            when item_type = ''F'' then ''fa-caret-square-o-right''',
'            when item_type = ''Fe'' then ''fa-minus-square-o'''))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44149078760613253635)
,p_plug_name=>'Navegação requisitos'
,p_region_template_options=>'t-Wizard--hideStepsSmall'
,p_component_template_options=>'#DEFAULT#:t-Cards--colorize:t-Cards--displayInitials:t-Cards--spanHorizontally:t-Cards--compact'
,p_plug_template=>wwv_flow_api.id(39024447998768847633)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(44148344909703085521)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(39024458038162847648)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44131146347260586134)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(44131146063524586133)
,p_button_name=>'CONTRACT_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(39024465202625847656)
,p_button_image_alt=>'Comprimir tudo'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_icon_css_classes=>'fa-compress'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44131147695326586138)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(44131146063524586133)
,p_button_name=>'EXPAND_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(39024465202625847656)
,p_button_image_alt=>'Expandir tudo'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_icon_css_classes=>'fa-expand'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44146201963741580238)
,p_name=>'P20_NO_SELECIONADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(44131146063524586133)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44131146771546586135)
,p_name=>'CONTRACT_ALL'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(44131146347260586134)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44131147297117586136)
,p_event_id=>wwv_flow_api.id(44131146771546586135)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_TREE_COLLAPSE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(44131146063524586133)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44131148056035586138)
,p_name=>'EXPAND_ALL'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(44131147695326586138)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44131148570246586139)
,p_event_id=>wwv_flow_api.id(44131148056035586138)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_TREE_EXPAND'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(44131146063524586133)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(48495488179658029804)
,p_name=>'P66_MUDAR_ICONE_CURSOR'
,p_event_sequence=>20
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document.getElementsByClassName("t-Region-body");'
,p_bind_type=>'bind'
,p_bind_event_type=>'mousemove'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(48495488241695029805)
,p_event_id=>wwv_flow_api.id(48495488179658029804)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var treeElements = document.getElementsByClassName("a-TreeView-label");',
'',
'for(i = 0; i < treeElements.length; i++) {',
'    if(treeElements[i].style.getPropertyValue("cursor") == "") {',
'        treeElements[i].style.cursor = "pointer";    ',
'    }',
'}'))
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Escolher Técnica de Elicitação'
,p_page_mode=>'NORMAL'
,p_step_title=>'Escolher Técnica de Elicitação'
,p_step_sub_title=>'Pergunta aos Parametros'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FAGNER128@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20161209025425'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45503121512908362315)
,p_plug_name=>'Escolha da Técnica de Elicitação'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(45503121974645362316)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(45503121512908362315)
,p_button_name=>'SUBMETER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submeter'
,p_button_position=>'BELOW_BOX'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(45921472924953513382)
,p_branch_action=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(45503121974645362316)
,p_branch_sequence=>10
,p_branch_condition_type=>'ITEM_IS_NOT_NULL'
,p_branch_condition=>'P21_XTECNICA_ESCOLHIDA'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45503122397825362318)
,p_name=>'P21_XQUALIDADE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(45503121512908362315)
,p_prompt=>'Qualidade'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:0;0,1;1,2;2,3;3,4;4,5;5'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'6'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45503122792502362320)
,p_name=>'P21_XTEMPO_GASTO'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(45503121512908362315)
,p_prompt=>'Tempo Gasto'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:0;0,1;1,2;2,3;3,4;4,5;5'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'6'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45503123190836362320)
,p_name=>'P21_XCUSTO'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(45503121512908362315)
,p_prompt=>'Custo'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:0;0,1;1,2;2,3;3,4;4,5;5'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'6'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45503123570517362320)
,p_name=>'P21_XCONFIABILIDADE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(45503121512908362315)
,p_prompt=>'Confiabilidade'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:0;0,1;1,2;2,3;3,4;4,5;5'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'6'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45503123931078362321)
,p_name=>'P21_XCONTEXTO'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(45503121512908362315)
,p_prompt=>'Contexto'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:0;0,1;1,2;2,3;3,4;4,5;5'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'6'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45503124369132362321)
,p_name=>'P21_XVALIDAR_REQUISITOS'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(45503121512908362315)
,p_prompt=>'Validar Requisitos'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:0;0,1;1,2;2,3;3,4;4,5;5'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'6'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45503124785960362321)
,p_name=>'P21_XESFORCO_TREINAMENTO'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(45503121512908362315)
,p_prompt=>'Esforço Despendido com Treinamento'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:0;0,1;1,2;2,3;3,4;4,5;5'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'6'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45503145121661362323)
,p_name=>'P21_XTECNICA_ESCOLHIDA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(45503121512908362315)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48631626587672394725)
,p_name=>'P21_EXPLICACAO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(45503121512908362315)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Dentre os parâmetros apresentados, estão relacionados os que geralmente impactam nos projetos independente da estrutura da organização. Os parâmetros selecionados e suas definições são apresentados a seguir:',
'<ul><li>Qualidade: Indica se a técnica permite um aprendizado mútuo, resolução de conflito e identificação dos requisitos; </li><li>Tempo: Indica o tempo despendido para a elicitação de requisitos;</li><li>Custo: Indica o custo (relacionado a pessoas'
||' e capital) necessário;</li><li>Confiabilidade: Indica se as informações coletadas são confiáveis para o desenvolvimento do projeto; </li><li>Contexto: Indica se a técnica leva em conta o ambiente onde está se realizando a elicitação, ou seja, se a t'
||'écnica permite que o Analista de Requisitos considere efetivamente o domínio do negócio sobre o qual o sistema será desenvolvido; </li><li>Validação dos requisitos: Indica se a técnica permite validação dos requisitos;</li><li>Necessidade de treiname'
||'nto: Indica o nível de necessidade de treinamento que o Analista de Requisitos precisará para conhecer e aplicar a técnica na elicitação.</li></ul>Assim, deve ser definido quais parâmetros devem ser priorizados na escolha da técnica que será utilizad'
||'a para elicitação dos requisitos de acordo com características do projeto. Esta definição é realizada através da atribuição do grau de relevância (nota) para cada um dos parâmetros. Este valor pode variar de 0 a 5 pontos. Os  valores entre 0 e 2 indi'
||'cam uma relevância baixa do parâmetro para o projeto. Os valores entre 3 e 5 indicam que o parâmetro apresenta alta relevância.',
'',
'O resultado é gerado através do cálculo relacionado a essas pontuações obtidas para cada  técnica. Estas pontuações são calculadas através da multiplicação dos peso pela nota e do somatório dos resultados de cada parâmetro para cada técnica. A técnic'
||'a mais adequada será a que obtiver a maior pontuação total.',
'',
'Dê as notas aos parâmetros segundo seu projeto:'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(45503145577815362328)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Calcula Nota'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'	qualidade constant number := 1;',
'	tempo_gasto constant number := 2;',
'	custo constant number := 3;',
'	confiabilidade constant number := 4;',
'	contexto constant number := 5;',
'	validar_requisitos constant number := 6;',
'	esforco_despendido_treinamento constant number := 7;',
'	nome_collection constant varchar2(200) := ''TECNICA_ELICITACAO_COLLECTION'';',
'	tecnica_escolhida_cod number;',
'',
'begin',
'	apex_collection.create_or_truncate_collection(nome_collection);',
'',
'	for c_cod_parametro in (select cod',
'							from tb_sae_parametro',
'							where se_excluir = ''N''',
'							order by cod)',
'	loop',
'		for peso_parametro in (select *',
'							   from tb_sae_peso',
'							   where cod_parametro = c_cod_parametro.cod',
'							   order by cod_tecnica_elicitacao)',
'		loop',
'			case c_cod_parametro.cod',
'				when qualidade then',
'					apex_collection.add_member(p_collection_name => nome_collection, ',
'											  p_c001 => peso_parametro.cod_tecnica_elicitacao,',
'						                      p_c002 => :P21_XQUALIDADE * peso_parametro.valor_peso);',
'				when tempo_gasto then',
'					apex_collection.add_member(p_collection_name => nome_collection, ',
'											  p_c001 => peso_parametro.cod_tecnica_elicitacao,',
'						                      p_c002 => :P21_XTEMPO_GASTO * peso_parametro.valor_peso);',
'				when custo then',
'					apex_collection.add_member(p_collection_name => nome_collection, ',
'											  p_c001 => peso_parametro.cod_tecnica_elicitacao,',
'						                      p_c002 => :P21_XCUSTO * peso_parametro.valor_peso);',
'				when confiabilidade then',
'					apex_collection.add_member(p_collection_name => nome_collection, ',
'											  p_c001 => peso_parametro.cod_tecnica_elicitacao,',
'						                      p_c002 => :P21_XCONFIABILIDADE * peso_parametro.valor_peso);',
'				when contexto then',
'					apex_collection.add_member(p_collection_name => nome_collection, ',
'											  p_c001 => peso_parametro.cod_tecnica_elicitacao,',
'						                      p_c002 => :P21_XCONTEXTO * peso_parametro.valor_peso);',
'				when validar_requisitos then',
'					apex_collection.add_member(p_collection_name => nome_collection, ',
'											  p_c001 => peso_parametro.cod_tecnica_elicitacao,',
'						                      p_c002 => :P21_XVALIDAR_REQUISITOS * peso_parametro.valor_peso);',
'				when esforco_despendido_treinamento then',
'					apex_collection.add_member(p_collection_name => nome_collection, ',
'											  p_c001 => peso_parametro.cod_tecnica_elicitacao,',
'						                      p_c002 => :P21_XESFORCO_TREINAMENTO * peso_parametro.valor_peso);',
'                                              ',
'			end case;',
'		end loop;',
'	end loop;',
'',
'	for totais in (select sum(C002) somatorio,',
'				   c001',
'				   from apex_collections',
'				   where collection_name = nome_collection',
'				   group by c001',
'				   order by c001)',
'	loop',
'		apex_collection.add_member(p_collection_name => nome_collection,',
'								   p_c003 => totais.c001, ',
'						           p_c004 => totais.somatorio);',
'	end loop;',
'',
'	select u1.c003',
'	into tecnica_escolhida_cod',
'    from APEX_COLLECTIONS u1',
'    where u1.c004 = (select max (u2.c004)',
'                     from APEX_COLLECTIONS u2)',
'    and rownum = 1;',
'',
'    apex_util.set_session_state(''P21_XTECNICA_ESCOLHIDA'', tecnica_escolhida_cod);',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'	qualidade constant number := 1;',
'	tempo_gasto constant number := 2;',
'	custo constant number := 3;',
'	confiabilidade constant number := 4;',
'	contexto constant number := 5;',
'	validar_requisitos constant number := 6;',
'	esforco_despendido_treinamento constant number := 7;',
'	nome_collection constant varchar2(200) := ''TECNICA_ELICITACAO_COLLECTION'';',
'	v_peso number;',
'	variavel_cod_tecnica number;',
'	tecnica_escolhida_cod number;',
'	somatorio_antigo number;',
'	somatorio number := 0;',
'',
'begin',
'	apex_collection.create_or_truncate_collection(nome_collection);',
'',
'	for c_tecnica in (select *',
'						  from tb_sae_tecnica_elicitacao',
'						  order by cod)',
'	loop',
'		apex_collection.add_member(p_collection_name => nome_collection, p_n001 => c_tecnica.cod);',
'	end loop;',
'',
'	for c_cod_parametro in (select cod',
'							from tb_sae_parametro',
'							where se_excluir = ''N''',
'							order by cod)',
'	loop',
'		for c_tecnica in (select * ',
'							from apex_collections',
'							where collection_name = nome_collection)',
'		loop',
'			select valor_peso',
'			into v_peso',
'			from tb_sae_peso',
'			where c_tecnica.n001 = cod_tecnica_elicitacao',
'			and c_cod_parametro.cod = cod_parametro;',
'',
'			case c_cod_parametro.cod',
'				when qualidade then',
'					apex_collection.update_member(p_collection_name => nome_collection, ',
'						p_seq => c_tecnica.seq_id, p_c001 => :P21_XQUALIDADE * v_peso);',
'				when tempo_gasto then',
'					apex_collection.update_member(p_collection_name => nome_collection, ',
'						p_seq => c_tecnica.seq_id, p_c002 => :P21_XTEMPO_GASTO * v_peso);',
'				when custo then',
'					apex_collection.update_member(p_collection_name => nome_collection, ',
'						p_seq => c_tecnica.seq_id, p_c003 => :P21_XCUSTO * v_peso);',
'				when confiabilidade then',
'					apex_collection.update_member(p_collection_name => nome_collection, ',
'						p_seq => c_tecnica.seq_id, p_c004 => :P21_XCONFIABILIDADE * v_peso);',
'				when contexto then',
'					apex_collection.update_member(p_collection_name => nome_collection, ',
'						p_seq => c_tecnica.seq_id, p_c005 => :P21_XCONTEXTO * v_peso);',
'				when validar_requisitos then',
'					apex_collection.update_member(p_collection_name => nome_collection, ',
'						p_seq => c_tecnica.seq_id, p_c006 => :P21_XVALIDAR_REQUISITOS * v_peso);',
'				when esforco_despendido_treinamento then',
'					apex_collection.update_member(p_collection_name => nome_collection, ',
'						p_seq => c_tecnica.seq_id, p_c007 => :P21_XESFORCO_TREINAMENTO * v_peso);',
'			end case;',
'		end loop;',
'	end loop;',
'',
'	for c_tecnica in (select * ',
'							from apex_collections',
'							where collection_name = nome_collection)',
'	loop',
'		variavel_cod_tecnica := c_tecnica.n001;',
'		somatorio_antigo := somatorio;',
'		somatorio := to_number(c_tecnica.c001) + to_number(c_tecnica.c002) + to_number(c_tecnica.c003) +',
'			to_number(c_tecnica.c004) + to_number(c_tecnica.c005) + to_number(c_tecnica.c006) +',
'			to_number(c_tecnica.c007);',
'',
'		if somatorio > somatorio_antigo',
'		then',
'			tecnica_escolhida_cod := variavel_cod_tecnica;',
'		end if;',
'	end loop;',
'	apex_util.set_session_state(''P21_XTECNICA_ESCOLHIDA'', tecnica_escolhida_cod);',
'end;'))
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_api.create_page(
 p_id=>22
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Relatório de Técnica Indicada'
,p_page_mode=>'NORMAL'
,p_step_title=>'Relatório de Técnica Indicada'
,p_step_sub_title=>'Relatório de Técnica Indicada'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FAGNER128@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20161209025135'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(45921278252443491722)
,p_name=>'A técnica escolhida foi:'
,p_template=>wwv_flow_api.id(39024444156989847625)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select COD,',
'       NOME_TECNICA,',
'       DESCR_TECNICA,',
'       OBJETIVO,',
'       LINK_DINAMICA',
'  from TB_SAE_TECNICA_ELICITACAO',
'where COD = :P21_XTECNICA_ESCOLHIDA'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(39024452959156847639)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45921278979256491728)
,p_query_column_id=>1
,p_column_alias=>'COD'
,p_column_display_sequence=>1
,p_column_heading=>'Cod'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45921279338727491729)
,p_query_column_id=>2
,p_column_alias=>'NOME_TECNICA'
,p_column_display_sequence=>2
,p_column_heading=>'Nome da Técnica'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45921279751625491729)
,p_query_column_id=>3
,p_column_alias=>'DESCR_TECNICA'
,p_column_display_sequence=>3
,p_column_heading=>'Descrição da Técnica'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45921280128362491729)
,p_query_column_id=>4
,p_column_alias=>'OBJETIVO'
,p_column_display_sequence=>4
,p_column_heading=>'Objetivo'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45921280520193491730)
,p_query_column_id=>5
,p_column_alias=>'LINK_DINAMICA'
,p_column_display_sequence=>5
,p_column_heading=>'Dinâmica da Técnica'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(45922962121880667038)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(45921278252443491722)
,p_button_name=>'REPETIR_TESTE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--danger'
,p_button_template_id=>wwv_flow_api.id(39024465202625847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Repetir Teste'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:21::'
,p_icon_css_classes=>'fa-repeat'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(45923432901114730347)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(45921278252443491722)
,p_button_name=>'VISUALIZAR_TODAS_AS_TECNICAS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(39024465202625847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Visualizar Todas as Técnicas'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-eye'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_api.create_page(
 p_id=>23
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Relatório de todas as Técnicas'
,p_page_mode=>'NORMAL'
,p_step_title=>'Relatório de todas as Técnicas'
,p_step_sub_title=>'Relatório de todas as Técnicas'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FAGNER128@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20161117165624'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(45922550301724615247)
,p_name=>'Relatório de todas as Técnicas'
,p_template=>wwv_flow_api.id(39024444156989847625)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select COD,',
'       NOME_TECNICA,',
'       DESCR_TECNICA,',
'       OBJETIVO,',
'       LINK_DINAMICA',
'  from TB_SAE_TECNICA_ELICITACAO'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(39024452959156847639)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45922551006165615249)
,p_query_column_id=>1
,p_column_alias=>'COD'
,p_column_display_sequence=>1
,p_column_heading=>'Cod'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45922551477809615250)
,p_query_column_id=>2
,p_column_alias=>'NOME_TECNICA'
,p_column_display_sequence=>2
,p_column_heading=>'Nome da Técnica'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45922551805003615251)
,p_query_column_id=>3
,p_column_alias=>'DESCR_TECNICA'
,p_column_display_sequence=>3
,p_column_heading=>'Descrição da Técnica'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45922552230758615251)
,p_query_column_id=>4
,p_column_alias=>'OBJETIVO'
,p_column_display_sequence=>4
,p_column_heading=>'Objetivo'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45922552620116615251)
,p_query_column_id=>5
,p_column_alias=>'LINK_DINAMICA'
,p_column_display_sequence=>5
,p_column_heading=>'Dinâmica da Técnica'
,p_disable_sort_column=>'N'
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_api.create_page(
 p_id=>24
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Relatório de Projetos'
,p_page_mode=>'NORMAL'
,p_step_title=>'Relatório de Projetos'
,p_step_sub_title=>'Relatório de Projetos'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FAGNER128@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20161208171746'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44363208029721414679)
,p_plug_name=>'Relatório de Projetos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39024443613162847625)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select COD,',
'       NOME_PROJETO,',
'       DESCR_PROJETO,',
'       OBJETIVO,',
'       BENEFICIO,',
'       ENVOLVIDO',
'  from TB_SAE_PROJETO',
'  where cadastrado_por = :APP_USER'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(44363208177464414679)
,p_name=>'Relatório de Projetos'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_icon_view_columns_per_row=>1
,p_owner=>'FAGNER128@GMAIL.COM'
,p_internal_uid=>44363208177464414679
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44363208560046414683)
,p_db_column_name=>'COD'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Cod'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44363208967666414684)
,p_db_column_name=>'NOME_PROJETO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nome do Projeto'
,p_column_link=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::P13_COD:#COD#'
,p_column_linktext=>'#NOME_PROJETO#'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44363209345361414686)
,p_db_column_name=>'DESCR_PROJETO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Descrição'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44363209722473414686)
,p_db_column_name=>'OBJETIVO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Objetivo'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44363210120389414687)
,p_db_column_name=>'BENEFICIO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Beneficios'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44363210585168414687)
,p_db_column_name=>'ENVOLVIDO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Envolvidos'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(44363211117669415512)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'443632112'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'COD:NOME_PROJETO:DESCR_PROJETO:OBJETIVO:BENEFICIO:ENVOLVIDO'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(45038643211246441015)
,p_branch_name=>'Direcionar página'
,p_branch_action=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:14::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'ITEM_IS_NOT_NULL'
,p_branch_condition=>'P24_SELECAO_DO_PROJETO'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45036193882381097701)
,p_name=>'P24_SELECAO_DO_PROJETO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(44363208029721414679)
,p_prompt=>'Selecione o Projeto'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select NOME_PROJETO as display_value, COD as return_value ',
'  from TB_SAE_PROJETO',
'  where cadastrado_por = :APP_USER',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Selecione--'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(39024464994252847656)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_api.create_page(
 p_id=>25
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Cadastro de Modelo de Dados'
,p_page_mode=>'NORMAL'
,p_step_title=>'Cadastro de Modelo de Dados'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FAGNER128@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20161209122908'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44365564603987996782)
,p_plug_name=>'Cadastro de Modelo de dados'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(44365596126894996907)
,p_name=>'Relatório de Modelos de BD'
,p_template=>wwv_flow_api.id(39024444156989847625)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select projeto."NOME_PROJETO",',
'modelo_dados."COD", ',
'modelo_dados."COD_PROJETO",',
'modelo_dados."NOME_MODELO",',
'modelo_dados."DESCR_MODELO",',
'modelo_dados."DATA_CADASTRO_EM",',
'modelo_dados."DATA_ATUALIZADO_EM",',
'modelo_dados."UPADO_POR",',
'modelo_dados."ATUALIZADO_POR",',
'modelo_dados."OBSERVACAO",',
'modelo_dados."SE_VALIDA"',
'from "#OWNER#"."TB_SAE_MODELO_DADOS" modelo_dados,',
'TB_SAE_PROJETO projeto',
'where modelo_dados.cod_projeto = :P25_COD_PROJETO',
'  ',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'P25_COD_PROJETO'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'N'
,p_query_row_template=>wwv_flow_api.id(39024452959156847639)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(48502595772477362765)
,p_query_column_id=>1
,p_column_alias=>'NOME_PROJETO'
,p_column_display_sequence=>3
,p_column_heading=>'Projeto'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44365596875725996911)
,p_query_column_id=>2
,p_column_alias=>'COD'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_column_link=>'f?p=#APP_ID#:25:#APP_SESSION#::::P25_COD:#COD#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44365597255010996912)
,p_query_column_id=>3
,p_column_alias=>'COD_PROJETO'
,p_column_display_sequence=>2
,p_column_heading=>'Cod Projeto'
,p_hidden_column=>'Y'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_MODELO_DADOS'
,p_ref_column_name=>'COD_PROJETO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44365597696704996912)
,p_query_column_id=>4
,p_column_alias=>'NOME_MODELO'
,p_column_display_sequence=>4
,p_column_heading=>'Nome do Modelo'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_MODELO_DADOS'
,p_ref_column_name=>'NOME_MODELO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44365598022951996912)
,p_query_column_id=>5
,p_column_alias=>'DESCR_MODELO'
,p_column_display_sequence=>5
,p_column_heading=>'Descrição do Modelo'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_MODELO_DADOS'
,p_ref_column_name=>'DESCR_MODELO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44365598426204996913)
,p_query_column_id=>6
,p_column_alias=>'DATA_CADASTRO_EM'
,p_column_display_sequence=>6
,p_column_heading=>'Cadastro em'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_MODELO_DADOS'
,p_ref_column_name=>'DATA_CADASTRO_EM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44365598893340996913)
,p_query_column_id=>7
,p_column_alias=>'DATA_ATUALIZADO_EM'
,p_column_display_sequence=>7
,p_column_heading=>'Atualizado em'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_MODELO_DADOS'
,p_ref_column_name=>'DATA_ATUALIZADO_EM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44365599222918996913)
,p_query_column_id=>8
,p_column_alias=>'UPADO_POR'
,p_column_display_sequence=>8
,p_column_heading=>'Upado por'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_MODELO_DADOS'
,p_ref_column_name=>'UPADO_POR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44365599688415996914)
,p_query_column_id=>9
,p_column_alias=>'ATUALIZADO_POR'
,p_column_display_sequence=>9
,p_column_heading=>'Atualizado por'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_MODELO_DADOS'
,p_ref_column_name=>'ATUALIZADO_POR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44365600009011996914)
,p_query_column_id=>10
,p_column_alias=>'OBSERVACAO'
,p_column_display_sequence=>10
,p_column_heading=>'Observação'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_MODELO_DADOS'
,p_ref_column_name=>'OBSERVACAO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44365600440739996914)
,p_query_column_id=>11
,p_column_alias=>'SE_VALIDA'
,p_column_display_sequence=>11
,p_column_heading=>'Validado'
,p_ref_schema=>'DB_TESTE'
,p_ref_table_name=>'TB_SAE_MODELO_DADOS'
,p_ref_column_name=>'SE_VALIDA'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44365585392409996783)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(44365564603987996782)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:25::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44365585228160996783)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(44365564603987996782)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Deletar'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P25_COD'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44365585147658996783)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(44365564603987996782)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salvar'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P25_COD'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44365603561884996918)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(44365596126894996907)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Adicionar Modelo'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:25::'
,p_button_condition_type=>'NEVER'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44365585049302996783)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(44365564603987996782)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Adicionar Modelo'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P25_COD'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(44365586902861996786)
,p_branch_action=>'f?p=&APP_ID.:25:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44365587398026996861)
,p_name=>'P25_COD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(44365564603987996782)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cod'
,p_source=>'COD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44365587623810996862)
,p_name=>'P25_COD_PROJETO'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(44365564603987996782)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Projeto'
,p_source=>'COD_PROJETO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select NOME_PROJETO as display_value, COD as return_value ',
'  from TB_SAE_PROJETO',
'  where cadastrado_por = :APP_USER',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Selecione--'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(39024464849646847655)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44365588076515996863)
,p_name=>'P25_NOME_MODELO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(44365564603987996782)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nome Modelo'
,p_source=>'NOME_MODELO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44365588461812996863)
,p_name=>'P25_DESCR_MODELO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(44365564603987996782)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Descr Modelo'
,p_source=>'DESCR_MODELO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44365588815756996863)
,p_name=>'P25_ARQUIVO_MODELO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(44365564603987996782)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Arquivo Modelo'
,p_source=>'ARQUIVO_MODELO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'MIMETYPE'
,p_attribute_03=>'FILENAME'
,p_attribute_04=>'NOME_ARQUIVO'
,p_attribute_05=>'DATA_CADASTRO_EM'
,p_attribute_06=>'Y'
,p_attribute_07=>'Download'
,p_attribute_08=>'attachment'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44365589253209996865)
,p_name=>'P25_DATA_CADASTRO_EM'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(44365564603987996782)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'return to_char(localtimestamp,''DD'')||''.''||',
'to_char(localtimestamp,''MON'')||''.''||',
'to_char(localtimestamp,''YYYY'')||''.''||',
'to_char(localtimestamp,''HH24:MI'');'))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Data Cadastro Em'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_source=>'DATA_CADASTRO_EM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44365590076300996866)
,p_name=>'P25_DATA_ATUALIZADO_EM'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(44365564603987996782)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'return to_char(localtimestamp,''DD'')||''.''||',
'to_char(localtimestamp,''MON'')||''.''||',
'to_char(localtimestamp,''YYYY'')||''.''||',
'to_char(localtimestamp,''HH24:MI'');'))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Data Atualizado Em'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_source=>'DATA_ATUALIZADO_EM'
,p_source_type=>'DB_COLUMN'
,p_source_post_computation=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'to_char(localtimestamp,''DD'')||''.''||',
'to_char(localtimestamp,''MON'')||''.''||',
'to_char(localtimestamp,''YYYY'')||''.''||',
'to_char(localtimestamp,''HH24:MI'')'))
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>'P25_COD'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44365590873574996866)
,p_name=>'P25_UPADO_POR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(44365564603987996782)
,p_use_cache_before_default=>'NO'
,p_item_default=>'nvl(wwv_flow.g_user,user)'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Upado Por'
,p_source=>'UPADO_POR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>55
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44365591297281996867)
,p_name=>'P25_ATUALIZADO_POR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(44365564603987996782)
,p_use_cache_before_default=>'NO'
,p_item_default=>'nvl(wwv_flow.g_user,user)'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Atualizado Por'
,p_source=>'ATUALIZADO_POR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>55
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>'P25_COD'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44365591673428996869)
,p_name=>'P25_OBSERVACAO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(44365564603987996782)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Observacao'
,p_source=>'OBSERVACAO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44365592057232996869)
,p_name=>'P25_SE_VALIDA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(44365564603987996782)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Se Valida'
,p_source=>'SE_VALIDA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>1
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(44365589765690996865)
,p_validation_name=>'P25_DATA_CADASTRO_EM must be timestamp'
,p_validation_sequence=>90
,p_validation=>'P25_DATA_CADASTRO_EM'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_always_execute=>'N'
,p_associated_item=>wwv_flow_api.id(44365589253209996865)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(44365590503003996866)
,p_validation_name=>'P25_DATA_ATUALIZADO_EM must be timestamp'
,p_validation_sequence=>100
,p_validation=>'P25_DATA_ATUALIZADO_EM'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_always_execute=>'N'
,p_associated_item=>wwv_flow_api.id(44365590076300996866)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44365594660678996874)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from TB_SAE_MODELO_DADOS'
,p_attribute_02=>'TB_SAE_MODELO_DADOS'
,p_attribute_03=>'P25_COD'
,p_attribute_04=>'COD'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44365595072295996876)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin ',
'    if :P25_COD is null then',
'        select "#OWNER#"."SEQ_SAE_MODELO_DADOS".nextval',
'          into :P25_COD',
'          from sys.dual;',
'    end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(44365585049302996783)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44365595478968996876)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TB_SAE_MODELO_DADOS'
,p_attribute_02=>'TB_SAE_MODELO_DADOS'
,p_attribute_03=>'P25_COD'
,p_attribute_04=>'COD'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44365595851654996877)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(44365585228160996783)
);
end;
/
prompt --application/pages/page_00050
begin
wwv_flow_api.create_page(
 p_id=>50
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Guia de Criação e Padrões de Banco de Dados'
,p_page_mode=>'NORMAL'
,p_step_title=>'Guia de Criação e Padrões de Banco de Dados'
,p_step_sub_title=>'Guia de criação e padrões de BD'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_html_page_header=>'<link rel="stylesheet" href="#WORKSPACE_IMAGES#eud_estilos.css" type="text/css">'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_upd_yyyymmddhh24miss=>'20161207213453'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40172656267064975144)
,p_plug_name=>'<b> Guia de criação e padrões de Banco de Dados</b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40172657017235975148)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_api.id(40172656267064975144)
,p_button_name=>'P50_MER_TUTORIAL_BOTAO'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Acesse o tutorial'
,p_button_position=>'BODY'
,p_button_redirect_url=>'javascript:w=window.open(''f?p=&APP_ID.:51:&SESSION.::::P51_TIPO_DESCRICAO_VIDEO,P51_TITULO_REGIAO:P50_MER,&P50_MER_TUTORIAL_TITULO.'', "width=1000 height=700");'
,p_grid_new_row=>'Y'
,p_button_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'APEX_UTIL.SET_SESSION_STATE(''P3_VIDEO_LINK'', ''#WORKSPACE_IMAGES#eud_tutorial_mer.webm'');',
'APEX_UTIL.SET_SESSION_STATE(''P3_TIPO_DESCRICAO_VIDEO'', ''P2_MER'');'))
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40172657457759975149)
,p_button_sequence=>190
,p_button_plug_id=>wwv_flow_api.id(40172656267064975144)
,p_button_name=>'P50_ML_TUTORIAL_BOTAO'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Acesse o tutorial'
,p_button_position=>'BODY'
,p_button_redirect_url=>'javascript:w=window.open(''f?p=&APP_ID.:51:&SESSION.::::P51_TIPO_DESCRICAO_VIDEO,P51_TITULO_REGIAO:P50_ML,&P50_ML_TUTORIAL_TITULO.'');'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40172656666755975147)
,p_button_sequence=>220
,p_button_plug_id=>wwv_flow_api.id(40172656267064975144)
,p_button_name=>'P50_SCRIPTS_SQL_TUTORIAL_BOTAO'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Acesse o tutorial'
,p_button_position=>'BODY'
,p_button_redirect_url=>'javascript:w=window.open(''f?p=&APP_ID.:51:&SESSION.::::P51_TIPO_DESCRICAO_VIDEO,P51_TITULO_REGIAO:P50_SCRIPT_SQL,&P50_SCRIPTS_SQL_TUTORIAL_TITULO.'');'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40172657845130975150)
,p_name=>'P50_INDICE_TITULO'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(40172656267064975144)
,p_source=>'Índice'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only_titulo'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40172668274012975151)
,p_name=>'P50_INDICE'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(40172656267064975144)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#P50_MER_CONCEITOS_TITULO_DISPLAY">Conceitos Modelo Entidade Relacionamento (MER)</a>',
'<a href="#P50_MER_NORMALIZACAO_TITULO_DISPLAY">Normalização de Dados</a>',
'<a href="#P50_MER_TUTORIAL_TITULO_DISPLAY">Usando o Oracle SQL Data Developer na construção de um MER</a>',
'<a href="#P50_ML_CONCEITOS_TITULO_DISPLAY">Conceitos Modelo Lógico (ML)</a>',
'<a href="#P50_ML_TUTORIAL_TITULO_DISPLAY">Usando o Oracle SQL Data Developer para gerar um ML a partir de um MER</a>',
'<a href="#P50_SCRIPTS_SQL_TUTORIAL_TITULO_DISPLAY">Usando o Oracle SQL Data Developer para gerar scripts SQL de criação (DDL) a partir de um ML</a>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_tag_css_classes=>'display_only_indice'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40172668667124975151)
,p_name=>'P50_MER_CONCEITOS_TITULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(40172656267064975144)
,p_source=>'Conceitos Modelo Entidade Relacionamento (MER)'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only_titulo'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40172669078255975152)
,p_name=>'P50_MER_CONCEITOS_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(40172656267064975144)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<i>Consulte a <a target="_blank" href="https://contas.tcu.gov.br/ead/mod/book/view.php?id=12246&chapterid=7277">seção de modelagem de banco de dados no curso APEX</a> para maiores informações.</i>',
'',
'',
'O Modelo Entidade Relacionamento (MER) é a técnica de modelagem conceitual de banco de dados mais difundida e o seu objetivo é descrever o banco de dados de forma independente da implementação do SGBD (Sistema Gerenciador de Banco de Dados), ou seja,'
||' ele registra que dados podem aparecer no banco mas não dá detalhes de como eles são armazenados dentro do SGBD.',
'',
'Considere a figura a seguir, que representa um MER simples elaborado na ferramenta Oracle SQL Developer Data Modeler. ',
'OBS: Sempre use o guia de nomenclatura [TODO: COLOCAR LINK AQUI].',
'',
' <img class="display_image_centralizar" src="#WORKSPACE_IMAGES#eud_p50_guia_criacao_bd_mer.png">'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40172670279010975153)
,p_name=>'P50_MER_CONCEITOS_2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(40172656267064975144)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Este modelo fictício armazena informações de duas entidades do mundo real: Funcionario e Empresa. Um Funcionario é composto dos atributos: Nome, CPF e Salario. Já uma Empresa é composta dos atributos: Nome, CNPJ e Endereco. Um Funcionario se relacion'
||'a com a Empresa da seguinte forma: Uma empresa possui um ou mais funcionarios (representado pela notacao do pé de galinha ao lado da entidade Funcionario), e um Funcionario trabalha em uma única empresa (representado pela notação pontilhada ao lado d'
||'a entidade Empresa). Dessa forma, temos uma modelagem conceitual de um banco de dados simples, representado pelo MER. OBS: A notação usada para representar o modelo pode variar conforme a implementação do mesmo.',
'',
'Entidade: É uma representação de um objeto ou coisa da realidade a ser modelada, sobre o qual se deseja manter informações no banco de dados. No modelo acima, Funcionario e Empresa são duas entidades do mundo real das quais desejamos armazenar inform'
||'ações.',
'',
'Atributo: É uma informação associada a uma entidade, ou seja, uma informação que é desejável armazenar referente a entidade. No modelo acima, os atributos da entidade Funcionario sao: cod, nome, cpf e salario. Já os atributos da entidade Empresa são:'
||' cod, nome, cnpj e endereco. Um atributo também pode estar associado a um relacionamento, ou seja, aquele atributo só existe a partir da relação entre as entidades. É necessário que cada entidade possua um atributo identificador, que identifica unica'
||'mente uma instância (registro) da entidade. No caso das entidades Funcionario e Empresa, apesar de CPF e CNPJ serem candidatos a atributo identificador em ambas as entidades, optou-se por COD pois é o padrão adotado pelo tribunal. Maiores informações'
||' sobre o atributo identificador podem ser consultadas na seção <a target="_blank" href="https://contas.tcu.gov.br/ead/mod/book/view.php?id=12246&chapterid=7277">c. Nomenclatura e Constraints - Chave Primária (PK)</a> do curso APEX.',
'',
'Relacionamento: Um relacionamento é uma propriedade que especifica uma associação entre entidades. No modelo acima, o relacionamento é representado pela linha que liga as duas entidades. Através desse relacionamento, duas possíveis informações que po'
||'demos obter é: todos os funcionários de uma empresa, e a empresa que um determinado funcionário trabalha. Um relacionamento é classificado de acordo com a sua cardinalidade: 1:1, 1:N e N:N. Abaixo é ilustrado a representação dos relacionamentos com a'
||'s diferentes cardinalidades, na ferramenta Oracle SQL Developer Data Modeler.',
'',
'<div style="text-align:center">1-1 -> <img style="display: inline" src="#WORKSPACE_IMAGES#eud_p50_guia_criacao_bd_1_1_mer.png"/>     1-N -> <img style="display:inline" src="#WORKSPACE_IMAGES#eud_p50_guia_criacao_bd_1_n_mer.png"/>     N-N -> <img styl'
||'e="display:inline" src="#WORKSPACE_IMAGES#eud_p50_guia_criacao_bd_n_n_mer.png"/></div><br/>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40172673081353975156)
,p_name=>'P50_MER_CONCEITOS_3'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(40172656267064975144)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'1:1 - Uma instância (ou registro) da entidade A está associada a uma única instância da entidade B, e uma instância da entidade B está associada a uma única instância da entidade A.',
'',
'1:N - Uma instância (ou registro) da entidade A está associada a uma ou mais instâncias da entidade B, e uma instância da entidade B está associada a uma única instância da entidade A.',
'',
'N:N - Uma instância (ou registro) da entidade A está associada a uma ou mais instâncias da entidade B, e uma instância da entidade B está associada a uma ou mais instâncias da entidade A.'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40172673486979975157)
,p_name=>'P50_MER_NORMALIZACAO_TITULO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(40172656267064975144)
,p_source=>'Normalização de Dados'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only_titulo'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40172673839148975157)
,p_name=>'P50_MER_NORMALIZACAO_1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(40172656267064975144)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<i>Consulte a <a target="_blank" href="http://portal.tcu.gov.br/comunidades/desenvolvimento-descentralizado-de-solucoes-de-ti/links-uteis/">seção de normalização de banco de dados nos links úteis</a> para maiores informações.</i>',
'',
'<i><b>Dica:</b> Sempre revise o seu modelo de dados com algum especialista do SEADE. Clique aqui para maiores informações.</i> [TODO: COLOCAR OS DADOS DO SEADE PARA FACILITAR O ACESSO - TALVEZ INSERIR ESTES DADOS EM UMA TABELA, JA QUE PODEM MUDAR]',
'',
'',
'A normalização de dados tem como objetivo organizar os dados em um banco de dados, ou seja, criar tabelas e relacionamentos de forma a eliminar ou reduzir inconsistências de dependência e redundâncias. A redundância nos dados gera desperdício de espa'
||'ço de disco e problemas de manutenção, já que um dado que existe em mais de um lugar dentro do banco necessita de um maior esforço para a sua eventual atualização. A inconsistência de dependência por sua vez torna o acesso aos dados mais difíceis (ou'
||' menos intuitivos). Um exemplo simples de inconsistência de dependência seria armazenar algum dado relativo a um vendedor na tabela relativa a um cliente, considerando um banco de dados de uma loja por exemplo.',
'',
'Existem cinco regras usadas na normalização de dados: primeira forma normal, segunda forma normal, terceira forma normal, quarta forma normal e quinta forma normal. Essas regras são sequenciais, portanto para atingir uma forma normal é necessário que'
||' a anterior tenha sido atendida. Para a maioria das aplicações atingir até a terceira forma normal é o suficiente, porém não há uma regra certa e isso pode variar conforme o tamanho e a complexidade do banco de dados sendo modelado, e conforme as nec'
||'essidades da aplicação.',
'',
'Será abordado, de forma resumida, somente as três primeiras formas normais.',
'<ul>',
'   <li><b>Primeira Forma Normal</b></li>- Eliminar grupos de dados repetidos em uma tabela.',
'   - Criar uma tabela separada para um conjunto de dados que possuem relação entre si.',
'   - Identificar cada tabela com uma chave primária.',
'   </br><li><b>Segunda Forma Normal</b></li>- Criar uma tabela separada para o conjunto de valores iguais que aparecem em vários registros diferentes dentro de uma tabela.',
'   - Relacionar a tabela criada com a tabela da qual foi extraído o conjunto de valores iguais, através de uma chave estrangeira.',
'   </br><li><b>Terceira Forma Normal</b></li>- Eliminar os campos da tabela que não tenham relação ou dependência com a chave primária da tabela.',
'</ul>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40172674257509975157)
,p_name=>'P50_MER_TUTORIAL_TITULO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(40172656267064975144)
,p_source=>'Usando o Oracle SQL Data Developer na construção de um MER'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only_titulo'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40172674659231975158)
,p_name=>'P50_MER_TUTORIAL_GIF_LINK'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(40172656267064975144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40172675081500975159)
,p_name=>'P50_ML_CONCEITOS_TITULO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(40172656267064975144)
,p_source=>'Conceitos Modelo Lógico (ML)'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only_titulo'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40172675499786975159)
,p_name=>'P50_ML_CONCEITOS_1'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(40172656267064975144)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<i>Consulte a seção <a href="https://contas.tcu.gov.br/ead/mod/book/view.php?id=12246" target="_blank">Modelagem do banco de dados e da aplicação no curso APEX</a> para maiores informações.</i>',
'',
'',
'O modelo lógico é a representação do banco de dados a nível de SGBD (Sistema Gerenciador de Banco de Dados), portanto ele depende do tipo de SGBD usado. No caso do APEX, o SGBD usado é do tipo relacional (Banco de Dados Oracle). A principal caracterí'
||'stica de um SGBD do tipo relacional é a organização dos dados em tabelas. A seguir são descritos, de forma resumida, alguns componentes importantes do modelo lógico:',
'<ul>',
'   <li><b>Tabela:</b></li> Um objeto no qual se deseja armazenar informação. Geralmente são originadas diretamente das entidades do modelo conceitual. Uma tabela é estruturada por um conjunto de colunas. Além disso, uma tabela pode conter chave primá'
||'ria, chave estrangeira e se relacionar com outras tabelas, onde essas relações geralmente seguem os relacionamentos das entidades no modelo conceitual.',
'   </br><li><b>Coluna:</b></li> Uma coluna armazena uma informação e é específica de uma tabela. Geralmente são originadas diretamente dos atributos das entidades do modelo conceitual. É importante que toda a tabela possua uma coluna de chave primári'
||'a, que é essencial na consulta dos dados da mesma e no estabelecimento de relações com outras tabelas. Na definição de uma coluna é necessário especificar qual é a natureza da informação que ela irá armazenar, através da definição do tipo de dado da '
||'coluna. Os tipos de dados comumente usados podem ser visualizados no <a href="https://contas.tcu.gov.br/ead/mod/book/view.php?id=12246" target="_blank">curso APEX</a> na seção "Principais tipos de dados do Oracle". <i>OBS: O tipo de dado Number é o m'
||'esmo que Numeric no Oracle SQL Developer Data Modeler.</i>',
'   </br><li><b>Relacionamento:</b></li> É uma associação entre duas ou mais tabelas. Geralmente são originados diretamente dos relacionamentos das entidades do modelo conceitual. Os relacionamentos são estabelecidos através do uso chaves estrangeiras'
||'.',
'   </br><li><b>Chave primária:</b></li> Uma restrição na coluna que indica que nenhum valor da coluna pode ser nulo (semelhante a vazio) e deve ser único. As chaves primárias são úteis para a consulta de dados de uma tabela e para estabelecer relaçõe'
||'s da tabela que a possui com outras tabelas.',
'   </br><li><b>Chave estrangeira:</b></li> É uma coluna que é adicionada automaticamente a tabela, fruto de uma relação com outra tabela. Essa coluna é um espelhamento da coluna de chave primária da tabela com a qual se está relacionando. Nem sempre '
||'essa coluna será adicionada para estabelecer a relação, já que isso depende da cardinalidade do relacionamento entre as duas tabelas (1-1, 1-N ou N-N). <i>Para maiores informações acesse: <a href="http://juliobattisti.com.br/artigos/office/modelorela'
||'cional_p50.asp" target="_blank">O Modelo Relacional de Dados</a>.</i>',
'</ul>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40172675835684975160)
,p_name=>'P50_ML_TUTORIAL_TITULO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(40172656267064975144)
,p_source=>'Usando o Oracle SQL Data Developer para gerar um ML a partir de um MER'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only_titulo'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40172676208378975160)
,p_name=>'P50_SCRIPTS_SQL_TUTORIAL_TITULO'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(40172656267064975144)
,p_source=>'Usando o Oracle SQL Data Developer para gerar scripts SQL de criação (DDL) a partir de um ML'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only_titulo'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00051
begin
wwv_flow_api.create_page(
 p_id=>51
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Reprodução de Vídeo'
,p_page_mode=>'NORMAL'
,p_step_title=>'Reprodução de Vídeo'
,p_step_sub_title=>'Exibir_Video'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_html_page_header=>'<link rel="stylesheet" href="#WORKSPACE_IMAGES#eud_estilos.css" type="text/css">'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_upd_yyyymmddhh24miss=>'20161208162931'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40249090073056389172)
,p_plug_name=>'<span class="display_only_titulo">&P51_TITULO_REGIAO.</span>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<br/>',
'<video width="800" controls>',
'  <source src="&P51_VIDEO_LINK." type="video/webm">',
'  Necessário um navegador com suporte a HTML5 para visualizar o vídeo.',
'</video> '))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40249090492647389177)
,p_name=>'P51_SUPORTE_NAVEGADOR'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(40249090073056389172)
,p_source=>'Os navegadores Internet Explorer e Safari podem não ser compatíveis com o formato deste vídeo. Recomenda-se o uso do Mozilla Firefox ou Google Chrome.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only_aviso'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40249090866593389178)
,p_name=>'P51_TIPO_DESCRICAO_VIDEO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(40249090073056389172)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40249091226912389179)
,p_name=>'P51_VIDEO_LINK'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(40249090073056389172)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40249091659757389179)
,p_name=>'P51_TITULO_REGIAO'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(40249090073056389172)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40249092088889389180)
,p_name=>'P51_P2_MER_TUTORIAL_DESC_VIDEO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(40249090073056389172)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'A seguir será modelado um banco de dados fictício e simples na ferramenta Oracle SQL Developer Data Modeler, no intuito de mostrar como elaborar um MER de uma forma mais direta. Caso suas necessidades de modelagem sejam mais complexas, procure sempre'
||' a ajuda dos especialistas do SEADE.',
'',
'O banco de dados é composto de duas entidades: Funcionario e Departamento. Um Funcionario possui os seguintes atributos: nome, salario, cpf e um cod (usado para fins de criação de chave primária na etapa futura de elaboração do modelo lógico). Já um '
||'Departamento possui um nome, uma descrição e um cod (fins de chave primária). Um Funcionario se relaciona com um Departamento da seguinte forma: Um Departamento possui um ou mais Funcionarios e um Funcionario trabalha em um único Departamento. Portan'
||'to é uma relação de 1 para N (1-N).',
'',
'<i>OBS: No Oracle SQL Developer Data Modeler a seção Modelo Lógico é o mesmo que o modelo relacional, ou seja, o MER.</i>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P51_TIPO_DESCRICAO_VIDEO'
,p_display_when2=>'P2_MER'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40249092422815389181)
,p_name=>'P51_P2_ML_TUTORIAL_DESC_VIDEO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(40249090073056389172)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'A seguir será gerado o modelo lógico a partir do modelo conceitual (MER) implementado no <a href="f?p=&APP_ID.:50:&SESSION.:::::#P50_MER_TUTORIAL_TITULO_DISPLAY">tutorial de elaboração do MER usando o Oracle SQL Developer Data Modeler.</a>',
'',
'Ao gerar o modelo lógico é necessário configurar as colunas de chave primária de cada tabela como INCREMENTO AUTOMÁTICO e COLUNA DE IDENTIDADE, para que na etapa de geração dos scripts SQL de criação do banco sejam gerados sequencias (Sequences) e ga'
||'tilhos (Triggers), que irão popular automaticamente o valor da coluna de chave primária para cada registro inserido.',
'',
'<i>OBS: No Oracle SQL Developer Data Modeler a seção Modelo Lógico é o mesmo que o modelo relacional, ou seja, o MER, e a seção Modelo Relacional é o mesmo que o modelo lógico (ML).</i>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_display_when=>'P51_TIPO_DESCRICAO_VIDEO'
,p_display_when2=>'P2_ML'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40249092875055389181)
,p_name=>'P51_P2_SCRIPT_SQL_TUTORIAL_DESC_VIDEO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(40249090073056389172)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'A seguir será gerado os scripts SQL de criação (DDL) a partir do modelo lógico implementado no <a href="f?p=&APP_ID.:50:&SESSION.:::::#P50_ML_TUTORIAL_TITULO_DISPLAY">tutorial de elaboração do ML usando o Oracle SQL Developer Data Modeler.</a>',
'',
'Cada comando gerado deve ser executado individualmente no console de comandos SQL do APEX para a criação do banco de dados modelado. As instruções de criação de sequencia (Sequence) e gatilho (Trigger) são para popular automaticamente a coluna de cha'
||'ve primária ao inserir um registro na tabela.',
'',
'<i>OBS: No Oracle SQL Developer Data Modeler a seção Modelo Lógico é o mesmo que o modelo relacional, ou seja, o MER, e a seção Modelo Relacional é o mesmo que o modelo lógico (ML).</i>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_display_when=>'P51_TIPO_DESCRICAO_VIDEO'
,p_display_when2=>'P2_SCRIPT_SQL'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(40249093211661389186)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P51_SETAR_DADOS'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'CASE :P51_TIPO_DESCRICAO_VIDEO',
'WHEN ''P50_MER'' THEN APEX_UTIL.SET_SESSION_STATE(''P51_VIDEO_LINK'',''#WORKSPACE_IMAGES#eud_tutorial_mer.webm'');',
'WHEN ''P50_ML'' THEN APEX_UTIL.SET_SESSION_STATE(''P51_VIDEO_LINK'',''#WORKSPACE_IMAGES#eud_tutorial_ml.webm'');',
'WHEN ''P50_SCRIPT_SQL'' THEN APEX_UTIL.SET_SESSION_STATE(''P51_VIDEO_LINK'',''#WORKSPACE_IMAGES#eud_tutorial_scripts_sql.webm'');',
'WHEN ''P70_DB_DEPENDENCIA'' THEN APEX_UTIL.SET_SESSION_STATE(''P51_VIDEO_LINK'',''#WORKSPACE_IMAGES#eud_p70_db_dependencia.webm'');',
'WHEN ''P70_DB_SCRIPTS_OBJETOS_DADOS'' THEN APEX_UTIL.SET_SESSION_STATE(''P51_VIDEO_LINK'',''#WORKSPACE_IMAGES#eud_p70_criar_scripts_objetos_dados.webm'');',
'WHEN ''P70_EXPORTAR_APLICACAO'' THEN APEX_UTIL.SET_SESSION_STATE(''P51_VIDEO_LINK'',''#WORKSPACE_IMAGES#eud_p70_exportar_aplicacao.webm'');',
'WHEN ''P70_IMPORTAR_APLICACAO'' THEN APEX_UTIL.SET_SESSION_STATE(''P51_VIDEO_LINK'',''#WORKSPACE_IMAGES#eud_p70_importar_aplicacao.webm'');',
'END CASE;'))
,p_process_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'CASE :P3_TIPO_DESCRICAO_VIDEO',
'WHEN ''P2_MER'' THEN APEX_UTIL.SET_SESSION_STATE(''P3_VIDEO_LINK'',''#WORKSPACE_IMAGES#eud_tutorial_mer.webm'');',
'WHEN ''P2_ML'' THEN APEX_UTIL.SET_SESSION_STATE(''P3_VIDEO_LINK'',''#WORKSPACE_IMAGES#eud_tutorial_ml.webm'');',
'WHEN ''P2_SCRIPT_SQL'' THEN APEX_UTIL.SET_SESSION_STATE(''P3_VIDEO_LINK'',''#WORKSPACE_IMAGES#eud_tutorial_scripts_sql.webm''); ',
'END CASE;'))
);
end;
/
prompt --application/pages/page_00052
begin
wwv_flow_api.create_page(
 p_id=>52
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Cadastrar Código Reutilizável'
,p_page_mode=>'NORMAL'
,p_step_title=>'Cadastrar Código Reutilizável'
,p_step_sub_title=>'Cadastrar codigo reutilizavel'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_html_page_header=>'<link rel="stylesheet" href="#WORKSPACE_IMAGES#eud_estilos.css" type="text/css">'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_upd_yyyymmddhh24miss=>'20161214125501'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40274139042074694069)
,p_plug_name=>'Código reutilizável'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40274139864693694072)
,p_button_sequence=>61
,p_button_plug_id=>wwv_flow_api.id(40274139042074694069)
,p_button_name=>'P52_VOLTAR_LISTA'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Voltar'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.:RP,52::'
,p_button_condition=>'P52_EUD_TB_CODIGO_PK'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
,p_grid_column_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40179012767373984715)
,p_button_sequence=>62
,p_button_plug_id=>wwv_flow_api.id(40274139042074694069)
,p_button_name=>'P52_EDITAR_BOTAO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Alterar'
,p_button_position=>'BODY'
,p_button_condition=>'P52_EDITAR_CODIGO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>2
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41832038710859452619)
,p_button_sequence=>69
,p_button_plug_id=>wwv_flow_api.id(40274139042074694069)
,p_button_name=>'P52_CANCELAR_BOTAO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.:RP,52::'
,p_button_condition=>':P52_VISUALIZAR_CODIGO IS NULL AND :P52_EDITAR_CODIGO IS NULL'
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_grid_new_row=>'Y'
,p_grid_column_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40274139442199694070)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(40274139042074694069)
,p_button_name=>'P52_CADASTRAR_BOTAO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Cadastrar'
,p_button_position=>'BODY'
,p_button_condition=>':P52_VISUALIZAR_CODIGO IS NULL AND :P52_EDITAR_CODIGO IS NULL'
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>2
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(40179012902013984717)
,p_branch_name=>'P52_REDIRECIONAR_EDICAO_LISTA'
,p_branch_action=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.:RP,52::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40179011562891984703)
,p_name=>'P52_EDITAR_CODIGO'
,p_item_sequence=>1019
,p_item_plug_id=>wwv_flow_api.id(40274139042074694069)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40179012201132984710)
,p_name=>'P52_DATA_EDICAO_VALOR'
,p_item_sequence=>61
,p_item_plug_id=>wwv_flow_api.id(40274139042074694069)
,p_use_cache_before_default=>'NO'
,p_item_default=>'-'
,p_prompt=>'Atualizado em:'
,p_source=>'ATUALIZADO_EM'
,p_source_type=>'DB_COLUMN'
,p_source_post_computation=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'CASE ',
'WHEN :P52_VISUALIZAR_CODIGO IS NOT NULL AND :P52_DATA_EDICAO_VALOR IS NULL THEN ''-'' ',
'WHEN :P52_EDITAR_CODIGO IS NOT NULL THEN TO_CHAR(SYSDATE, ''dd/mm/yyyy - hh24:mi'') ',
'END'))
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40179013245150984720)
,p_name=>'P52_ARQ_TAMANHO_INVALIDO'
,p_item_sequence=>1029
,p_item_plug_id=>wwv_flow_api.id(40274139042074694069)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT DECODE(:P52_EDITAR_CODIGO,1,NULL,1)',
'FROM dual;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40179013475013984722)
,p_name=>'P52_MSG_ARQ_INVALIDO'
,p_item_sequence=>41
,p_item_plug_id=>wwv_flow_api.id(40274139042074694069)
,p_source=>'O arquivo ultrapassou o limite máximo de 500KB'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only_aviso'
,p_grid_column=>4
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40274140279263694074)
,p_name=>'P52_CODIGO_TITULO_VALOR'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(40274139042074694069)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Título:'
,p_source=>'TITULO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>70
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40274140666228694076)
,p_name=>'P52_CODIGO_TIPO_VALOR'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(40274139042074694069)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tipo de Código:'
,p_source=>'EUD_TB_TIPO_CODIGO_COD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT tipo, cod ',
'FROM tb_sae_tipo_codigo',
'ORDER BY tipo'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Selecione...'
,p_lov_null_value=>'-1'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40274141060925694076)
,p_name=>'P52_CODIGO_TIPO_FORMATO'
,p_item_sequence=>21
,p_item_plug_id=>wwv_flow_api.id(40274139042074694069)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Formato suportado:'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT formato',
'FROM tb_sae_tipo_codigo',
'WHERE cod = :P52_CODIGO_TIPO_VALOR'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40274141499861694076)
,p_name=>'P52_CODIGO_COMENTARIO_VALOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(40274139042074694069)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Comentário (Máx. 100 Caracteres):'
,p_source=>'COMENTARIO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>100
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40274141887331694077)
,p_name=>'P52_CODIGO_FILE_BROWSE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(40274139042074694069)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Anexar código (Máx. 500 KB):'
,p_source=>'CODIGO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'TIPO_MIME'
,p_attribute_03=>'NOME_ARQUIVO'
,p_attribute_05=>'DATA_MODIFICACAO_ARQ'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40274142258088694079)
,p_name=>'P52_LOGIN_VALOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(40274139042074694069)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_USER'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Cadastrado por: '
,p_source=>'CADASTRADO_POR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40274142657873694079)
,p_name=>'P52_DATA_CADASTRO_VALOR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(40274139042074694069)
,p_use_cache_before_default=>'NO'
,p_item_default=>'TO_CHAR(SYSDATE, ''dd/mm/yyyy - hh24:mi'')'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Cadastrado em:'
,p_source=>'CADASTRADO_EM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40274143028820694080)
,p_name=>'P52_EUD_TB_CODIGO_PK'
,p_item_sequence=>999
,p_item_plug_id=>wwv_flow_api.id(40274139042074694069)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40274143448090694080)
,p_name=>'P52_VISUALIZAR_CODIGO'
,p_item_sequence=>1009
,p_item_plug_id=>wwv_flow_api.id(40274139042074694069)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(40179012857402984716)
,p_computation_sequence=>10
,p_computation_item=>'P52_DATA_EDICAO_VALOR'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>'NULL'
,p_compute_when=>'P52_CADASTRAR_BOTAO'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(40274143990629694091)
,p_validation_name=>'P52_VALIDA_FORMATO_ARQUIVO'
,p_validation_sequence=>20
,p_validation=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_file_format VARCHAR2(100) := upper(:P52_CODIGO_FILE_BROWSE);',
'    v_selected_format VARCHAR2(10);',
'BEGIN',
'    SELECT upper(formato)',
'    INTO v_selected_format',
'    FROM tb_sae_tipo_codigo',
'    WHERE cod = :P52_CODIGO_TIPO_VALOR;',
'',
'    RETURN REGEXP_LIKE(v_file_format, REPLACE(''.+<p>$'',''<p>'',v_selected_format));',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        RETURN FALSE;',
'END;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'O arquivo selecionado não condiz com o tipo escolhido!'
,p_always_execute=>'N'
,p_validation_condition=>'P52_CODIGO_TIPO_VALOR'
,p_validation_condition2=>'-1'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(40179013336465984721)
,p_validation_name=>'P52_VALIDA_TAMANHO_ARQ'
,p_validation_sequence=>30
,p_validation=>':P52_ARQ_TAMANHO_INVALIDO IS NULL'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'O arquivo ultrapassou o tamanho máximo permitido de 500KB!'
,p_always_execute=>'N'
,p_validation_condition=>'P52_VISUALIZAR_CODIGO'
,p_validation_condition_type=>'ITEM_IS_NULL'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40274145882548694093)
,p_name=>'P52_AO_MUDAR_VALOR_TIPO_CODIGO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_CODIGO_TIPO_VALOR'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'-1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40274147363862694096)
,p_event_id=>wwv_flow_api.id(40274145882548694093)
,p_event_result=>'TRUE'
,p_action_sequence=>1
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P52_CODIGO_TIPO_FORMATO'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40274146357404694095)
,p_event_id=>wwv_flow_api.id(40274145882548694093)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P52_CODIGO_TIPO_FORMATO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT formato',
'FROM tb_sae_tipo_codigo',
'WHERE cod = :P52_CODIGO_TIPO_VALOR'))
,p_attribute_07=>'P52_CODIGO_TIPO_VALOR'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40274146894198694096)
,p_event_id=>wwv_flow_api.id(40274145882548694093)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P52_CODIGO_TIPO_FORMATO'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40274147722583694097)
,p_name=>'P52_VISUALIZAR_DETALHES'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P52_VISUALIZAR_CODIGO'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40274148214521694098)
,p_event_id=>wwv_flow_api.id(40274147722583694097)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P52_CODIGO_TITULO_VALOR'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40274148785822694098)
,p_event_id=>wwv_flow_api.id(40274147722583694097)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P52_CODIGO_TIPO_VALOR'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40274149285583694098)
,p_event_id=>wwv_flow_api.id(40274147722583694097)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P52_CODIGO_COMENTARIO_VALOR'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40274149761650694099)
,p_event_id=>wwv_flow_api.id(40274147722583694097)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P52_CODIGO_FILE_BROWSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40274150204538694099)
,p_event_id=>wwv_flow_api.id(40274147722583694097)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P52_CODIGO_TIPO_FORMATO'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40274151125407694100)
,p_name=>'P52_SETAR_DATA_CADASTRO_EDICAO_VISUALIZACAO'
,p_event_sequence=>20
,p_bind_type=>'live'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40274151621840694100)
,p_event_id=>wwv_flow_api.id(40274151125407694100)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P52_DATA_CADASTRO_VALOR'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(cadastrado_em, ''dd/mm/yyyy - hh24:mi'')',
'FROM eud_tb_codigo',
'WHERE cod = :P52_EUD_TB_CODIGO_PK'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40179013017381984718)
,p_name=>'P52_AO_MUDAR_VALOR_FILE_BROWSE'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_CODIGO_FILE_BROWSE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40179013129450984719)
,p_event_id=>wwv_flow_api.id(40179013017381984718)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var fileSize = document.getElementById("P52_CODIGO_FILE_BROWSE").files[0].size;',
'var kb = 1024;',
'var domNodeArray = $x_ByClass("t-Button");',
'var edicaoValue = $v("P52_EDITAR_CODIGO");',
'var domNode = domNodeArray[3]; ',
'',
'if(fileSize > 500 * kb) {',
'    $s("P52_ARQ_TAMANHO_INVALIDO", "1");',
'    $x_disableItem(domNode, true);',
'    $x_Show("P52_MSG_ARQ_INVALIDO_DISPLAY");',
'} else {',
'    $x_disableItem(domNode, false);',
'    $s("P52_ARQ_TAMANHO_INVALIDO", "");',
'    $x_Hide("P52_MSG_ARQ_INVALIDO_DISPLAY");',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40179013599449984723)
,p_name=>'P52_ESCONDER_AVISO_TAM_ARQ'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40179013666314984724)
,p_event_id=>wwv_flow_api.id(40179013599449984723)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P52_MSG_ARQ_INVALIDO'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(40179012574389984713)
,p_process_sequence=>10
,p_process_point=>'AFTER_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P52_REVERTER_NLS_FORMATO_DATA'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE',
'    -- This code returns NLS_DATE_FORMAT to default value of DataBase.',
'    v_default_nls_date_format VARCHAR2(100);',
'    C_COLLECTION_NAME CONSTANT VARCHAR2(100) := ''EUD_APPLICATION'';',
'BEGIN',
'    SELECT c001',
'    INTO v_default_nls_date_format',
'    FROM apex_collections',
'    WHERE collection_name = C_COLLECTION_NAME;',
'',
'    EXECUTE IMMEDIATE REPLACE(''ALTER SESSION SET nls_date_format=''''<p>'''''', ''<p>'',',
'        v_default_nls_date_format);',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(40274144658809694092)
,p_process_sequence=>1
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P52_ALTERAR_NLS_FORMATO_DATA_2'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE',
'    -- This code makes the backup of the NLS_DATE_FORMAT to APEX_COLLECTION and',
'    -- alter the NLS_DATE_FORMAT to ''dd/mm/yyyy - hh24:mi''',
'    v_default_nls_date_format VARCHAR2(100);',
'    C_COLLECTION_NAME CONSTANT VARCHAR2(100) := ''EUD_APPLICATION'';',
'BEGIN',
'    SELECT value',
'    INTO v_default_nls_date_format',
'    FROM   nls_session_parameters',
'    WHERE  parameter = ''NLS_DATE_FORMAT'';',
'',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(C_COLLECTION_NAME);',
'    APEX_COLLECTION.ADD_MEMBER(C_COLLECTION_NAME, v_default_nls_date_format);',
'',
'    EXECUTE IMMEDIATE ''ALTER SESSION SET nls_date_format=''''dd/mm/yyyy - hh24:mi'''''' ;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P52_VISUALIZAR_CODIGO'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(40274144261096694091)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'P52_SALVAR_CODIGO'
,p_attribute_02=>'TB_SAE_CODIGO'
,p_attribute_03=>'P52_EUD_TB_CODIGO_PK'
,p_attribute_04=>'COD'
,p_attribute_11=>'I:U'
,p_process_error_message=>'Houve um erro na gravação do código!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P52_VISUALIZAR_CODIGO'
,p_process_when_type=>'ITEM_IS_NULL'
,p_process_success_message=>'Código salvo com sucesso!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(40274145078223694093)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P52_REVERTER_NLS_FORMATO_DATA_2'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE',
'    -- This code returns NLS_DATE_FORMAT to default value of DataBase.',
'    v_default_nls_date_format VARCHAR2(100);',
'    C_COLLECTION_NAME CONSTANT VARCHAR2(100) := ''EUD_APPLICATION'';',
'BEGIN',
'    SELECT c001',
'    INTO v_default_nls_date_format',
'    FROM apex_collections',
'    WHERE collection_name = C_COLLECTION_NAME;',
'',
'    EXECUTE IMMEDIATE REPLACE(''ALTER SESSION SET nls_date_format=''''<p>'''''', ''<p>'',',
'        v_default_nls_date_format);',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P52_VISUALIZAR_CODIGO'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(40179012136848984709)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P52_ALTERAR_NLS_FORMATO_DATA'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE',
'    -- This code makes the backup of the NLS_DATE_FORMAT to APEX_COLLECTION and',
'    -- alter the NLS_DATE_FORMAT to ''dd/mm/yyyy - hh24:mi''',
'    v_default_nls_date_format VARCHAR2(100);',
'    C_COLLECTION_NAME CONSTANT VARCHAR2(100) := ''EUD_APPLICATION'';',
'BEGIN',
'    SELECT value',
'    INTO v_default_nls_date_format',
'    FROM   nls_session_parameters',
'    WHERE  parameter = ''NLS_DATE_FORMAT'';',
'',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(C_COLLECTION_NAME);',
'    APEX_COLLECTION.ADD_MEMBER(C_COLLECTION_NAME, v_default_nls_date_format);',
'',
'    EXECUTE IMMEDIATE ''ALTER SESSION SET nls_date_format=''''dd/mm/yyyy - hh24:mi'''''' ;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(40274145408427694093)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'P52_CARREGAR_REGISTRO'
,p_attribute_02=>'TB_SAE_CODIGO'
,p_attribute_03=>'P52_EUD_TB_CODIGO_PK'
,p_attribute_04=>'COD'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P52_EUD_TB_CODIGO_PK'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
end;
/
prompt --application/pages/page_00053
begin
wwv_flow_api.create_page(
 p_id=>53
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Listar código reutilizável'
,p_page_mode=>'NORMAL'
,p_step_title=>'Listar código reutilizável'
,p_step_sub_title=>'Listar código reutilizável'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_upd_yyyymmddhh24miss=>'20161214124859'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40274256873928736117)
,p_plug_name=>'Lista de Códigos Cadastrados'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40274257222254736118)
,p_plug_name=>'P53_LISTA_CODIGO'
,p_parent_plug_id=>wwv_flow_api.id(40274256873928736117)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39024443613162847625)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT CASE WHEN :APP_USER = tb_cod.cadastrado_por ',
'THEN REPLACE(''<a href=''''f?p=&APP_ID.:52:&APP_SESSION.::NO:RP,52:P52_EUD_TB_CODIGO_PK,P52_EDITAR_CODIGO:<pa>,1''''>Editar<a/>'', ''<pa>'', tb_cod.cod) END AS edicao, ',
'tb_tipo_cod.tipo, tb_cod.titulo, tb_cod.comentario, tb_cod.cadastrado_por AS "CADASTRADO POR", ',
'TO_CHAR(tb_cod.cadastrado_em, ''dd/mm/yyyy - hh24:mi'') AS "CADASTRADO EM", LENGTH(tb_cod.codigo), tb_cod.cod, ',
'TO_CHAR(tb_cod.atualizado_em, ''dd/mm/yyyy - hh24:mi'') AS "ATUALIZADO EM"',
'FROM tb_sae_codigo tb_cod',
'INNER JOIN tb_sae_tipo_codigo tb_tipo_cod',
'ON tb_cod.eud_tb_tipo_codigo_cod = tb_tipo_cod.cod',
'ORDER BY tb_cod.cadastrado_em DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>210
,p_prn_height=>297
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(40274257638617736120)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_view_enabled_yn=>'Y'
,p_owner=>'FILIPEBORGES'
,p_internal_uid=>40274257638617736120
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40274257799086736121)
,p_db_column_name=>'TIPO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40274268100177736122)
,p_db_column_name=>'TITULO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Titulo'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40274268513476736123)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40274268968256736123)
,p_db_column_name=>'CADASTRADO POR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cadastrado por'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40274269370603736123)
,p_db_column_name=>'CADASTRADO EM'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cadastrado em'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40179011673044984704)
,p_db_column_name=>'ATUALIZADO EM'
,p_display_order=>51
,p_column_identifier=>'M'
,p_column_label=>'Atualizado em'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40274269731453736124)
,p_db_column_name=>'LENGTH(TB_COD.CODIGO)'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Detalhe'
,p_column_link=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.:RP,52:P52_EUD_TB_CODIGO_PK,P52_VISUALIZAR_CODIGO:#COD#,1'
,p_column_linktext=>'Visualizar'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40274270163932736124)
,p_db_column_name=>'COD'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40179013731566984725)
,p_db_column_name=>'EDICAO'
,p_display_order=>80
,p_column_identifier=>'N'
,p_column_label=>'Edicao'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(40274270922821736126)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'402742710'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'EDICAO:TIPO:TITULO:COMENTARIO:CADASTRADO POR:CADASTRADO EM:ATUALIZADO EM:LENGTH(TB_COD.CODIGO):'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41832038425848452616)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(40274256873928736117)
,p_button_name=>'P53_CADASTRAR_CODIGO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cadastrar Novo Código'
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.:RP,52::'
);
end;
/
prompt --application/pages/page_00054
begin
wwv_flow_api.create_page(
 p_id=>54
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Guia de Padrão de Nomenclatura de Objetos de Dados'
,p_page_mode=>'NORMAL'
,p_step_title=>'Guia de Padrão de Nomenclatura de Objetos de Dados'
,p_step_sub_title=>'Guia de padrão de nomenclatura de objetos de dados'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_html_page_header=>'<link rel="stylesheet" href="#WORKSPACE_IMAGES#eud_estilos.css" type="text/css">'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_upd_yyyymmddhh24miss=>'20161207213602'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40317775003186810050)
,p_plug_name=>'<b>Guia de padrão de nomenclatura de objetos de dados</b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40317775444634810054)
,p_name=>'P54_INDICE_TITULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(40317775003186810050)
,p_source=>'Índice'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_tag_css_classes=>'display_only_titulo'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40317775817555810055)
,p_name=>'P54_INDICE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(40317775003186810050)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#P54_INTRODUCAO_DISPLAY">Introdução</a>',
'<a href="#P54_BANCO_DE_DADOS_DISPLAY">Banco de Dados</a>',
'<a href="#P54_TABELAS_DISPLAY">Tabelas</a>',
'<a href="#P54_ATRIBUTOS_(COLUNAS)_DISPLAY">Atributos (Colunas)</a>',
'<a href="#P54_VIEWS_DISPLAY">Views</a>',
'<a href="#P54_MATERIALIZED_VIEWS_DISPLAY">Materialized Views</a>',
'<a href="#P54_INDICES_DISPLAY">Índices</a>',
'<a href="#P54_PROCEDURES_DISPLAY">Procedures</a>',
'<a href="#P54_TRIGGERS_DISPLAY">Triggers</a>',
'<a href="#P54_CONSTRAINTS_DISPLAY">Constrainsts</a>',
'<a href="#P54_FUNCTIONS_DISPLAY">Functions</a>',
'<a href="#P54_PACKAGES_DISPLAY">Packages</a>',
'<a href="#P54_SEQUENCES_DISPLAY">Sequences</a>',
'<a href="#P54_TABELA_DESCRITORES_DISPLAY">Tabela de Descritores</a>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only_indice'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40317776216126810055)
,p_name=>'P54_INTRODUCAO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(40317775003186810050)
,p_source=>'Introdução'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_tag_css_classes=>'display_only_titulo'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40317776611455810055)
,p_name=>'P54_INTRODUCAO_CONTEUDO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(40317775003186810050)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'O objetivo deste guia é prover informações para formalizar a nomenclatura de objetos de banco de dados, bem como apresentar regras para sua utilização. Evitando assim, o hábito de existir diferentes nomenclaturas dentro de uma mesma aplicação.',
'',
'O guia apresenta os objetos de banco de dados com três itens: sintaxe, regras e exemplo. Isto visa facilitar o entendimento do desenvolvedor.',
'',
'O guia está dividido em: os objetos para serem utilizados por todos os bancos de dados no tcu e uma parte específica para o banco de dados Oracle.'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40317777036206810056)
,p_name=>'P54_BANCO_DE_DADOS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(40317775003186810050)
,p_source=>'Banco de Dados'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_tag_css_classes=>'display_only_titulo'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40317777466594810056)
,p_name=>'P54_BANCO_DE_DADOS_CONTEUDO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(40317775003186810050)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'O nome do banco de dados deverá identificar o negócio que está sendo automatizado ou deverá refletir a sigla da aplicação.',
'',
'Sintaxe:',
'{[a.z]} -> xxxxxx, onde:',
'xxxxxx - indica o nome da aplicação que o banco de dados irá atender.',
'Regra:',
'Para o nome da aplicação utilizar tudo em minúsculo com no máximo 15 caracteres.',
'Exemplo:'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40380952223144657199)
,p_name=>'P54_TABELAS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(40317775003186810050)
,p_source=>'Tabelas'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_tag_css_classes=>'display_only_titulo'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40381099459199322460)
,p_name=>'P54_TABELAS_CONTEUDO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(40317775003186810050)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'O nome de uma tabela deverá ser sugestivo. Deve-se fazer o uso de nomenclatura orientado a objeto, por exemplo: se no departamento Financeiro for necessário manter uma tabela de feriados, esta tabela deve ser nomeada identificando claramente seu cont'
||'eúdo, isto significa que seu nome então deverá ser Feriado.',
'',
'<strong>Sintaxe:</strong>',
'',
'TB_{[A..Z]}_{[A..Z]} TB_XXXX_YYYY, onde:',
'',
'TB_ - indica que é uma tabela do banco de dados',
'XXXX – indica o nome abreviado do sistema',
'YYYY - indica o nome da tabela.',
'',
'<strong>Regras:</strong>',
'<ul type="disc">',
'<li>Todas as letras em maiúscula;</li>',
'<li>Limite-se a usar 30 caracteres - padrão da maioria dos bancos;</li>',
'<li>O nome da tabela deve estar sempre no singular;</li>',
'<li>Não utilize acentuações ou caracteres especiais;</li>',
'</ul>',
'<strong>Exemplos:</strong>',
'',
'TB_PFS_PROPOSTA - Tabela de propostas do sistema proposta fiscalização',
'TB_PFS_SITUACAO - Tabela de situação do sistema proposta fiscalização'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40555635294680884704)
,p_name=>'P54_ATRIBUTOS_(COLUNAS)_CONTEUDO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(40317775003186810050)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Deve-se identificar a coluna da&nbsp;tabela de maneira clara e descritiva, somente use abrevia&ccedil;&otilde;es quando se tratar de<br />dom&iacute;nio p&uacute;blico, exemplo FGTS, fundo de garantia por tempo de servi&ccedil;o.',
'<strong>Sintaxe:</strong>',
'{[A..Z]}_{[A..Z]} XXXX_YYYY onde',
'XXXX - indica o&nbsp;descritor',
'YYYY - indica o nome&nbsp;',
'pode-se complementar com mais sequencia respeitando o m&aacute;ximo de 30 caracteres',
'OBS:',
'Para chaves prim&aacute;rias utilizar:',
'COD',
'Para chaves estrangeiras utilizar:',
'COD_{[A..Z]} XXXX onde',
'XXXX - indica o nome da tabela referenciada',
'<strong>Regras:</strong>',
'<ul>',
'<li>N&atilde;o usar preposi&ccedil;&otilde;es;</li>',
'<li>Utilizar descritores antes do nome para cada coluna, o descritor indica o tipo do atributo;</li>',
'<li>Usar palavras no singular e sem acentua&ccedil;&atilde;o;</li>',
'<li>Usar nome que identifique e individualize o dado dentro do &ldquo;ambiente&rdquo; do cliente;</li>',
'<li>Dar nomes distintos para dados distintos;</li>',
'<li>N&atilde;o abreviar o descritor, o nome pode ser abreviado livremente;</li>',
'<li>Campos do tipo booleano s&atilde;o identificados por meio&nbsp;da presen&ccedil;a de um verbo na terceira pessoa na posi&ccedil;&atilde;o do descritor;</li>',
'</ul>',
'<strong>Exemplos:</strong>',
'chave prim&aacute;ria:',
'COD',
'chave estrangeira:',
'COD_ALUNO',
'booleano:',
'SE_INDICADO',
'texto:',
'TEXTO_OBJETIVO'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40555677555935482606)
,p_name=>'P54_ATRIBUTOS_(COLUNAS)'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(40317775003186810050)
,p_source=>'Atributos (Colunas)'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_tag_css_classes=>'display_only_titulo'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40555797630559531607)
,p_name=>'P54_VIEWS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(40317775003186810050)
,p_source=>'Views'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_tag_css_classes=>'display_only_titulo'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40555884710545548549)
,p_name=>'P54_VIEWS_CONTEUDO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(40317775003186810050)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Deve-se utilizar a mesma sem&acirc;ntica utilizada para as tabelas. Deve ser prefixada a&nbsp;palavra &ldquo;VW&rdquo; seguido da abrevia&ccedil;&atilde;o do sistema que faz parte e do nome da view.</p>',
'<strong>Sintaxe:</strong>',
'<p>VW_{[A..Z]}_{[A..Z]} VW_XXXX_YYYY, onde:<br /><br />VW_ - indica que &eacute; uma view&nbsp;do banco de dados<br />XXXX &ndash; indica o nome abreviado do sistema<br />YYYY - indica o nome da tabela.</p>',
'<strong>Regras:</strong>',
'<ul>',
'<li>Limite-se a usar 30 caracteres - padr&atilde;o da maioria dos bancos.;</li>',
'<li>O nome da view deve estar sempre no singular;</li>',
'<li>Evite usar abrevia&ccedil;&otilde;es, se necess&aacute;rio use as conhecidas;</li>',
'<li>N&atilde;o utilize acentua&ccedil;&otilde;es ou caracteres especiais;</li>',
'</ul>',
'<strong>Exemplos:</strong>',
'<p>VW_PFS_PESSOA<br />VW_PFS_FUNCIONARIO<br />VW_PFS_CLIENTE</p>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40555897274373935198)
,p_name=>'P54_INDICES'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(40317775003186810050)
,p_source=>'Índices'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_tag_css_classes=>'display_only_titulo'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40555897624464938542)
,p_name=>'P54_INDICES_CONTEUDO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(40317775003186810050)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Deve-se utilizar uma sem&acirc;ntica&nbsp;espec&iacute;fica se adaptando conforme for o caso a que se refere o &iacute;ndice.</p>',
'<strong>Sintaxe:</strong>',
'<p>I_{[A..Z]}_{[A..Z]}_{[A..Z]} I_XXXX_YYYY_ZZZZ, onde:<br /><br />I - indica que &eacute; um&nbsp;&iacute;ndice (index);<br />XXXX &ndash; indica a sigla com iniciais do nome da tabela que se refere;<br />YYYY - indica a fun&ccedil;&atilde;o, se hou'
||'ver;<br />ZZZZ - indica o nome da coluna&nbsp;da tabela ou nome da chave estrangeira (fk) se for o caso.</p>',
'<strong>Para chaves prim&aacute;rias:</strong>',
'PK_{[A..Z]} PK_XXXX, onde:',
'<p>PK - indica que &eacute; uma chave prim&aacute;ria;<br />XXXX &ndash; indica o nome&nbsp;da tabela que se refere.</p>',
'<strong>Para chaves &uacute;nicas:</strong>',
'UK_{[A..Z]} UK_XXXX_YYYY_ZZZZ_..., onde:',
'<p>UK - indica que &eacute; uma chave&nbsp;&uacute;nica;<br />XXXX &ndash; indica a sigla com iniciais do nome da tabela que se refere;<br />YYYY - indica a&nbsp;sigla do primeiro campo;<br />ZZZZ -&nbsp;indica a&nbsp;sigla do segundo&nbsp;campo;<br '
||'/>Se hover mais campos, pode-se se seguir a sequ&ecirc;ncia, lembrando de respeitar o limite m&aacute;ximo.</p>',
'<strong>Para chaves estrangeiras:</strong>',
'FK_{[A..Z]} FK_XXXX_YYYY, onde:',
'<p>FK - indica que &eacute; uma chave&nbsp;estrangeira;<br />XXXX &ndash; indica a sigla com iniciais do nome da tabela onde est&aacute; sendo criada;<br />YYYY - indica&nbsp;o nome da tabela em que faz refer&ecirc;ncia.</p>',
'<strong>Regras:</strong>',
'<ul>',
'<li>Limite-se a usar 30 caracteres - padr&atilde;o da maioria dos bancos;</li>',
'<li>Evite usar abrevia&ccedil;&otilde;es, se necess&aacute;rio use as conhecidas, excess&atilde;o apenas para o nome da tabela onde está sendo criado;</li>',
'<li>O nome da tabela&nbsp;deve ser a abrevia&ccedil;&atilde;o com as iniciais da tabela;</li>',
'<li>Para chave estrangeira (fk), n&atilde;o usar abrevia&ccedil;&atilde;o para tabela que faz refer&ecirc;ncia;</li>',
'<li>Para as chaves prim&aacute;rias, colocar o nome da tabela e se necess&aacute;rio, abreviar;</li>',
'<li>N&atilde;o utilize acentua&ccedil;&otilde;es ou caracteres especiais;</li>',
'<li>Apenas colocar o nome da fun&ccedil;&atilde;o se houver fun&ccedil;&atilde;o, caso n&atilde;o tenha, n&atilde;o necessita colocar;</li>',
'<li>Para chaves &uacute;nicas, podem seguir atribuindo nome de mais campos caso seja necess&aacute;rio e respeitando o limite m&aacute;ximo de caracteres.</li>',
'</ul>',
'<strong>Exemplos:</strong>',
'<p>I_UP_PROPOSTA -&gt; NOME DA TABELA: TB_PFS_UNIDADE_PARTICIPANTE<br />I_PGF_PROPOSTA -&gt; NOME DA TABELA: TB_PFS_PROGRAMA_GOVERNO_FISC<br />I_HE_SITUACAO -&gt; NOME DA TABELA: TB_PFS_HISTORICO_EVENTO<br />PK_PROGRAMA_GOVERNO_FISC&nbsp;-&gt; NOME D'
||'A TABELA: TB_PFS_PROGRAMA_GOVERNO_FISC<br />UK_PGF_COD&nbsp;-&gt; NOME DA TABELA: TB_PFS_PROGRAMA_GOVERNO_FISC<br />FK_PGF_PROPOSTA -&gt;&nbsp;NOME DA TABELA: TB_PFS_PROGRAMA_GOVERNO_FISC,&nbsp;NOME DA TABELA REFERENCIADA: TB_PFS_PROPOSTA<br />I_PGF_'
||'FK_PGF_PROPOSTA -&gt;&nbsp;NOME DA TABELA: TB_PFS_PROGRAMA_GOVERNO_FISC</p>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40556093917127595388)
,p_name=>'P54_PROCEDURES'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(40317775003186810050)
,p_source=>'Procedures'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_tag_css_classes=>'display_only_titulo'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40556112808090974078)
,p_name=>'P54_PROCEDURES_CONTEUDO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(40317775003186810050)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>As stored-procedures ser&atilde;o identificadas pela presen&ccedil;a do prefixo "SP_" em frente ao seu nome.</p>',
'<strong>Sintaxe:</strong>',
'<p>SP_{[A..Z]} SP_XXXX, onde:<br /><br />SP - indica que &eacute; uma stored procedure;<br />XXXX &ndash; indica o nome da procedure;</p>',
'<strong>Regras:</strong>',
'<ul>',
'<li>Limite-se a usar 30 caracteres - padr&atilde;o da maioria dos bancos;</li>',
'<li>Evite usar abrevia&ccedil;&otilde;es, se necess&aacute;rio use as conhecidas;</li>',
'<li>O nome da stored procedure deve estar sempre no singular;</li>',
'<li>Identar de modo a tornar a codifica&ccedil;&atilde;o clara e facilitar o trabalho de&nbsp;manuten&ccedil;&atilde;o;</li>',
'<li>N&atilde;o utilize acentua&ccedil;&otilde;es ou caracteres especiais;</li>',
'<li>Inserir coment&aacute;rios sempre que necess&aacute;rio. Coment&aacute;rios adicionais que auxiliem&nbsp;a compreens&atilde;o de processamentos complexos. N&atilde;o poluir o c&oacute;digo com&nbsp;coment&aacute;rios desnecess&aacute;rios, que de'
||'screvam procedimentos &oacute;bvios;</li>',
'<li>Evitar o aninhamento excessivo de comandos, o que costuma dificultar a&nbsp;manuten&ccedil;&atilde;o do c&oacute;digo. Dar prefer&ecirc;ncia &agrave; codifica&ccedil;&atilde;o mais longa, por&eacute;m mais&nbsp;clara, desde que n&atilde;o prejudi'
||'que a performance.</li>',
'</ul>',
'<strong>Exemplos:</strong>',
'<p>SP_CALCULA_DATA_ENTRADA</p>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40556163243246988480)
,p_name=>'P54_TRIGGERS'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(40317775003186810050)
,p_source=>'Triggers'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_tag_css_classes=>'display_only_titulo'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40556194826911992189)
,p_name=>'P54_TRIGGERS_CONTEUDO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(40317775003186810050)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Deve ser prefixado a sigla conforme a regra, duas ou mais letras, sendo a primeira indicando o momento da a&ccedil;&atilde;o&nbsp;("B" para "before" e "A" para "after") e as outras indicando as a&ccedil;&otilde;es ("I" para "insert", "D" para "del'
||'ete" e "U" para "update") seguido pelo nome da tabela.</p>',
'<strong>Sintaxe:</strong>',
'<p>{[ B | A ]}{[ I | D | U ]} | {[ I | D | U ]}_{[A..Z]} X_Y_Z_XXXX, onde:<br /><br />X - indica que &eacute; o momento da a&ccedil;&atilde;o da trigger before (B) ou after (A);<br />Y &ndash; indica a&nbsp;a&ccedil;&atilde;o da trigger insert (I), d'
||'elete (D) ou update (U);<br />Z - indica tamb&eacute;m a&nbsp;a&ccedil;&atilde;o da trigger insert (I), delete (D) ou update (U) mas colocado apenas quando tenha necessidade de indicar mais uma a&ccedil;&atilde;o indicando que pode ser executado ou a'
||' a&ccedil;&atilde;o anterior ou esta a&ccedil;&atilde;o;<br />XXXX - indica o nome da tabela.</p>',
'<strong>Regras:</strong>',
'<ul>',
'<li>Limite-se a usar 30 caracteres - padr&atilde;o da maioria dos bancos;</li>',
'<li>Evite usar abrevia&ccedil;&otilde;es para o nome da tabela;</li>',
'<li>N&atilde;o utilize acentua&ccedil;&otilde;es ou caracteres especiais;</li>',
'<li>O nome da trigger deve estar sempre no singular;</li>',
'<li>Identar de modo a tornar a codifica&ccedil;&atilde;o clara e facilitar o trabalho de&nbsp;manuten&ccedil;&atilde;o;</li>',
'<li>Inserir coment&aacute;rios sempre que necess&aacute;rio. Coment&aacute;rios adicionais que auxiliem&nbsp;a compreens&atilde;o de processamentos complexos. N&atilde;o poluir o c&oacute;digo com&nbsp;coment&aacute;rios desnecess&aacute;rios, que de'
||'screvam procedimentos &oacute;bvios;</li>',
'<li>Evitar o aninhamento excessivo de comandos, o que costuma dificultar a&nbsp;manuten&ccedil;&atilde;o do c&oacute;digo. Dar prefer&ecirc;ncia &agrave; codifica&ccedil;&atilde;o mais longa, por&eacute;m mais&nbsp;clara, desde que n&atilde;o prejudi'
||'que a performance;</li>',
'</ul>',
'<strong>Exemplos:</strong>',
'<p>BI_PROGRAMA_GOVERNO_FISC -&gt; NOME DA TABELA: TB_PFS_PROGRAMA_GOVERNO_FISC<br />AI_PROGRAMA_GOVERNO_FISC -&gt; NOME DA TABELA: TB_PFS_PROGRAMA_GOVERNO_FISC<br />BU_PROGRAMA_GOVERNO_FISC&nbsp;-&gt; NOME DA TABELA: TB_PFS_PROGRAMA_GOVERNO_FISC<br /'
||'>AU_PROGRAMA_GOVERNO_FISC&nbsp;-&gt; NOME DA TABELA: TB_PFS_PROGRAMA_GOVERNO_FISC<br />BD_PROGRAMA_GOVERNO_FISC&nbsp;-&gt; NOME DA TABELA: TB_PFS_PROGRAMA_GOVERNO_FISC<br />AD_PROGRAMA_GOVERNO_FISC&nbsp;-&gt; NOME DA TABELA: TB_PFS_PROGRAMA_GOVERNO_F'
||'ISC<br />BIU_PROGRAMA_GOVERNO_FISC -&gt; NOME DA TABELA: TB_PFS_PROGRAMA_GOVERNO_FISC<br />AIU_PROGRAMA_GOVERNO_FISC&nbsp;-&gt; NOME DA TABELA: TB_PFS_PROGRAMA_GOVERNO_FISC<br />BUD_PROGRAMA_GOVERNO_FISC&nbsp;-&gt; NOME DA TABELA: TB_PFS_PROGRAMA_GOV'
||'ERNO_FISC<br />AUD_PROGRAMA_GOVERNO_FISC -&gt; NOME DA TABELA: TB_PFS_PROGRAMA_GOVERNO_FISC<br />BID_PROGRAMA_GOVERNO_FISC&nbsp;-&gt; NOME DA TABELA: TB_PFS_PROGRAMA_GOVERNO_FISC<br />AID_PROGRAMA_GOVERNO_FISC&nbsp;-&gt; NOME DA TABELA: TB_PFS_PROGRA'
||'MA_GOVERNO_FISC</p>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40556245465495016407)
,p_name=>'P54_CONSTRAINTS'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(40317775003186810050)
,p_source=>'Constraints'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_tag_css_classes=>'display_only_titulo'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40556246495764019881)
,p_name=>'P54_CONSTRAINTS_CONTEUDO'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(40317775003186810050)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Especifica que uma condi&ccedil;&atilde;o deve ser atendida por cada linha da tabela, deve ser inclu&iacute;do a sigla CK seguido pelo nome da tabela e o nome da coluna.</p>',
'<strong>Sintaxe:</strong>',
'<p>CK_{[A..Z]}_{[A..Z]} CK_XXXX_YYYY, onde:<br /><br />XXXX - indica o nome da tabela;<br />YYYY &ndash; indica o nome da coluna principal da a&ccedil;&atilde;o da constraint;</p>',
'<strong>Regras:</strong>',
'<ul>',
'<li>Limite-se a usar 30 caracteres - padr&atilde;o da maioria dos bancos;</li>',
'<li>Evite usar abrevia&ccedil;&otilde;es para o nome da tabela e nome da coluna, caso necess&aacute;rio verificar melhor abrevia&ccedil;&atilde;o;</li>',
'<li>N&atilde;o utilize acentua&ccedil;&otilde;es ou caracteres especiais;</li>',
'<li>O nome da constraint&nbsp;deve estar sempre no singular;</li>',
'</ul>',
'<strong>Exemplos:</strong>',
'<p>CK_PROPOSTA_TEXTO_OBJETIVO -&gt; NOME DA TABELA: TB_PFS_PROPOSTA, NOME DA COLUNA: TEXTO_OBJETIVO<br />CK_PROGR_GOVERNO_FIS_COD_PROPOSTA -&gt;&nbsp;NOME DA TABELA: TB_PFS_PROGRAMA_GOVERNO_FISC,&nbsp;NOME DA COLUNA:&nbsp;COD_PROPOSTA</p>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40556306268972040742)
,p_name=>'P54_FUNCTIONS'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(40317775003186810050)
,p_source=>'Functions'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_tag_css_classes=>'display_only_titulo'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40556328950994044094)
,p_name=>'P54_FUNCTIONS_CONTEUDO'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(40317775003186810050)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Fun&ccedil;&atilde;o &eacute; um objeto constitu&iacute;do por um conjunto de comandos SQL e construtores&nbsp;PL/SQL, armazenados no banco de dados, que s&atilde;o executados como uma unidade,&nbsp;a fim de solucionar um problema espec&iacute;fic'
||'o ou um conjunto de tarefas<br />correlacionadas. Pode receber par&acirc;metros somente de entrada, de sa&iacute;da ou de&nbsp;entrada e sa&iacute;da. O que difere uma fun&ccedil;&atilde;o de uma stored procedure &eacute; que a fun&ccedil;&atilde;o&n'
||'bsp;sempre retorna um &uacute;nico valor ao ambiente chamador. Deve ser inclu&iacute;do a sigla F seguido pelo nome da fun&ccedil;&atilde;o.</p>',
'<strong>Sintaxe:</strong>',
'<p>F_{[A..Z]} F_XXXX, onde:<br /><br />F&nbsp;- indica que &eacute; uma fun&ccedil;&atilde;o;<br />XXXX&nbsp;&ndash; indica o nome da fun&ccedil;&atilde;o;</p>',
'<strong>Regras:</strong>',
'<ul>',
'<li>Evite usar abrevia&ccedil;&otilde;es para o nome da fun&ccedil;&atilde;o, caso necess&aacute;rio verificar melhor abrevia&ccedil;&atilde;o;</li>',
'<li>N&atilde;o utilize acentua&ccedil;&otilde;es ou caracteres especiais;</li>',
'<li>O nome da fun&ccedil;&atilde;o&nbsp;deve estar sempre no singular;</li>',
'</ul>',
'<strong>Exemplos:</strong>',
'<p>F_VALIDA_CPF<br />F_FORMATA_DATA</p>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40556340422774051018)
,p_name=>'P54_PACKAGES'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(40317775003186810050)
,p_source=>'Packages'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_tag_css_classes=>'display_only_titulo'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40556343099760054891)
,p_name=>'P54_PACKAGES_CONTEUDO'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(40317775003186810050)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Package &eacute; um grupo de vari&aacute;veis, constantes, cursores, exception, procedures e&nbsp;fun&ccedil;&otilde;es relacionados funcionalmente e que est&atilde;o armazenados no banco de dados&nbsp;para serem usados como uma unidade. Da mesma '
||'forma que os procedimentos e&nbsp;fun&ccedil;&otilde;es independentes, os procedimentos e fun&ccedil;&otilde;es empacotados podem ser&nbsp;chamados explicitamente por aplica&ccedil;&otilde;es ou usu&aacute;rios. Deve ser inclu&iacute;do a sigla PKC s'
||'eguido pelo nome do pacote.</p>',
'<strong>Sintaxe:</strong>',
'<p>PKC_{[A..Z]} F_XXXX, onde:<br /><br />PKC - indica que &eacute; um pacote;<br />XXXX&nbsp;&ndash; indica o nome do pacote que pode ser o mesmo nome da tabela caso seja o &uacute;nico referente a mesma;</p>',
'<strong>Regras:</strong>',
'<ul>',
'<li>Evite usar abrevia&ccedil;&otilde;es para o nome do pacote, caso necess&aacute;rio verificar melhor abrevia&ccedil;&atilde;o;</li>',
'<li>N&atilde;o utilize acentua&ccedil;&otilde;es ou caracteres especiais;</li>',
'<li>O nome do pacote deve estar sempre no singular;</li>',
'</ul>',
'<strong>Exemplos:</strong>',
'<p>PKC_PARECER_PROPOSTA<br />PKC_GERA_IMPRESSAO</p>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40556382639426059735)
,p_name=>'P54_SEQUENCES'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(40317775003186810050)
,p_source=>'Sequences'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_tag_css_classes=>'display_only_titulo'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40556385405936064278)
,p_name=>'P54_SEQUENCES_CONTEUDO'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(40317775003186810050)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Uma sequence &eacute; um objeto do banco de dados criado pelo usu&aacute;rio, que pode sercompartilhado por v&aacute;rios usu&aacute;rios para gerar n&uacute;meros seq&uuml;enciais inteiros&nbsp;exclusivos. Normalmente, as sequences s&atilde;o uti'
||'lizadas para criar um valor de&nbsp;PRIMARY KEY, que deve ser exclusivo para cada linha.</p>',
'Os n&uacute;meros da sequence s&atilde;o armazenados e gerados de modo independente das&nbsp;tabelas. Portanto, a mesma sequence pode ser usada para v&aacute;rias tabela. Deve ser inclu&iacute;do a sigla SEQ seguido pelo nome da tabela.',
'<strong>Sintaxe:</strong>',
'<p>SEQ_{[A..Z]} SEQ_XXXX, onde:<br /><br />SEQ&nbsp;- indica que &eacute; uma sequ&ecirc;ncia;<br />XXXX&nbsp;&ndash; indica o nome da tabela;</p>',
'<strong>Regras:</strong>',
'<ul>',
'<li>Evite usar abrevia&ccedil;&otilde;es para o nome da sequ&ecirc;ncia, caso necess&aacute;rio verificar melhor abrevia&ccedil;&atilde;o;</li>',
'<li>N&atilde;o utilize acentua&ccedil;&otilde;es ou caracteres especiais;</li>',
'<li>O nome da sequ&ecirc;ncia&nbsp;deve estar sempre no singular;</li>',
'<li>Evite usar abrevia&ccedil;&otilde;es, se necess&aacute;rio use as conhecidas para o nome da tabela;</li>',
'</ul>',
'<strong>Exemplos:</strong>',
'<p>SEQ_PROPOSTA -&gt; NOME DA TABELA: TB_PFS_PROPOSTA<br />SEQ_PROGRAMA_GOVERNO_FISC&nbsp;-&gt; NOME DA TABELA: TB_PFS_PROGRAMA_GOVERNO_FISC</p>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
begin
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40556424901213076217)
,p_name=>'P54_MATERIALIZED_VIEWS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(40317775003186810050)
,p_source=>'Materialized Views'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only_titulo'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40556427646831079499)
,p_name=>'P54_MATERIALIZED_VIEWS_CONTEUDO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(40317775003186810050)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Deve-se utilizar a mesma sem&acirc;ntica utilizada para as tabelas e views. Deve ser prefixada a&nbsp;palavra &ldquo;MVW&rdquo; seguido da abrevia&ccedil;&atilde;o do sistema que faz parte e do nome da materialized view.</p>',
'<strong>Sintaxe:</strong>',
'<p>MVW_{[A..Z]}_{[A..Z]} MVW_XXXX_YYYY, onde:<br /><br />MVW_ - indica que &eacute; uma materialized view&nbsp;do banco de dados<br />XXXX &ndash; indica o nome abreviado do sistema<br />YYYY - indica o nome da tabela.</p>',
'<strong>Regras:</strong>',
'<ul>',
'<li>Limite-se a usar 30 caracteres - padr&atilde;o da maioria dos bancos.;</li>',
'<li>O nome da materialized view deve estar sempre no singular;</li>',
'<li>Evite usar abrevia&ccedil;&otilde;es, se necess&aacute;rio use as conhecidas;</li>',
'<li>N&atilde;o utilize acentua&ccedil;&otilde;es ou caracteres especiais;</li>',
'</ul>',
'<strong>Exemplos:</strong>',
'<p>MVW_PFS_PESSOA<br />MVW_PFS_FUNCIONARIO<br />MVW_PFS_CLIENTE</p>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41207898356040587666)
,p_name=>'P54_TABELA_DESCRITORES'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(40317775003186810050)
,p_source=>'Tabela de Descritores'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_tag_css_classes=>'display_only_titulo'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41207964330402983184)
,p_name=>'P54_TABELA_DESCRITORES_CONTEUDO'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(40317775003186810050)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div>',
'<table border="1" cellspacing="0" cellpadding="5">',
'<tr>',
'<th style="text-align: center;"><strong>Descritor</strong></th>',
'<th style="text-align: center;"><strong>Significado</strong></th>',
'</tr>',
'<tr>',
'<td>ANO</td>',
'<td>Ano. Utilizado para armazenar anos em geral. Recomenda-se que o seu formato seja um num&eacute;rico com quatro posi&ccedil;&otilde;es. Exemplo: ANO_PRIMEIRO_PAGAMENTO.</td>',
'</tr>',
'<tr>',
'<td>ANOMES</td>',
'<td>Ano e M&ecirc;s. Utilizado para armazenar a refer&ecirc;ncia a um m&ecirc;s dentro de um determinado ano. Em geral &eacute; do tipo Date, for&ccedil;ando-se que o dia seja igual a um. Exemplo: ANOMES_FOLHA_PONTO.</td>',
'</tr>',
'<tr>',
'<td>COD</td>',
'<td>C&oacute;digo, Identificador. Ser&aacute; utilizado como identificador &uacute;nico das entidades quando for necess&aacute;rio criar este identificador ou quando seu uso for comum e n&atilde;o se enquadrar no caso de SEQ (veja abaixo). Em geral t'
||'ipo num&eacute;rico. Exemplo: COD_UNIDADE_MEDICA.</td>',
'</tr>',
'<tr>',
'<td>DATA</td>',
'<td>Data em geral. Tipo Date. Exemplo: DATA_NASCIMENTO.</td>',
'</tr>',
'<tr>',
'<td>DTHORA</td>',
'<td>Data e hora. Nomeia atributos que conter&atilde;o a data e hora de uma a&ccedil;&atilde;o. Em geral utiliza-se o tipo espec&iacute;fico do Oracle. Exemplo: DTHORA_ATUALIZACAO.</td>',
'</tr>',
'<tr>',
'<td>DESCR</td>',
'<td>Descri&ccedil;&atilde;o, Denomina&ccedil;&atilde;o, Texto descritivo. Ser&aacute; utilizado para descrever o objeto. Em geral tipo alfanum&eacute;rico livre. Exemplo: DESCR_UNIDADE.</td>',
'</tr>',
'<tr>',
'<td>GEO</td>',
'<td>Usado para colunas cujos valores sejam de um tipo georreferenciado (ex.: linha, ponto e pol&iacute;gono fixos em um mapa). A coluna deve, obrigatoriamente, ser do tipo SDO_GEOMETRY.</td>',
'</tr>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_item_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<tr>',
'<td>E</td>',
'<td>Condicional. Utilizado para atributos do tipo NUMBER(1) , nos quais os valores v&aacute;lidos são check (0,1). Exemplo: E_MAIOR_DEZOITO_ANOS.</td>',
'</tr>',
'<tr>',
'<td>SEQ</td>',
'<td>Sequencial. Utilizado para diferenciar ocorr&ecirc;ncias que dependem de uma chave prim&aacute;ria id&ecirc;ntica. Em uma tabela de mensagens ao usu&aacute;rio ter&iacute;amos, por exemplo, o COD_USUARIO e um SEQ_MENSAGEM. N&atilde;o deve ser uti'
||'lizado como o atributo mais significativo da chave prim&aacute;ria, devendo-se, neste caso, utilizar COD. Exemplo: SEQ_ITEM_MENU.</td>',
'</tr>',
'<tr>',
'<td>SIGLA</td>',
'<td>Sigla. Tipo normalmente alfab&eacute;tico, podendo ser alfanum&eacute;rico. Geralmente possui poucas posi&ccedil;&otilde;es. Exemplo: SIGLA_UNIDADE, SIGLA_UF.</td>',
'</tr>',
'<tr>',
'<td>TEXTO</td>',
'<td>Texto. Nomeia atributos que conter&atilde;o textos expl&iacute;citos como tal. Tipo alfanum&eacute;rico livre. Exemplos: TEXTO_TITULO, TEXTO_OBSERVACAO.</td>',
'</tr>',
'<tr>',
'<td>TIPO</td>',
'<td>Tipo. Utilizado para nomear atributos que representam tipos de alguma coisa. Em geral ocupa poucas posi&ccedil;&otilde;es. Quando o tipo for uma chave estrangeira, &eacute; recomend&aacute;vel utilizar o descritor COD, identificando que aquele at'
||'ributo &eacute; origin&aacute;rio de outra entidade. Exemplos: TIPO_SANGUINEO, TIPO_AVALIACAO.</td>',
'</tr>',
'<tr>',
'<td>VALOR</td>',
'<td>Valor em geral. Normalmente tipo num&eacute;rico com decimais. Exemplos: VALOR_NOTA, VALOR_SALARIO.</td>',
'</tr>'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41832038874674452620)
,p_name=>'P54_TABELA_DESCRITORES_CONTEUDO_2'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(40317775003186810050)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<tr>',
'<td>HORA</td>',
'<td>Hora em geral. Tipo Date. Exemplo: HORA_HOMOLOGACAO.</td>',
'</tr>',
'<tr>',
'<td>IMAGEM</td>',
'<td>Imagem. Utilizado para armazenar desenhos, fotografias e outros tipos de campos visuais. Em atributos come&ccedil;ados com este descritor podem ser armazenados dados tipo BMP, GIF, ICO, etc. Em geral utiliza o tipo Oracle LongRaw. Exemplos: IMAGE'
||'M_FOTOGRAFIA, IMAGEM_ICONE.</td>',
'</tr>',
'<tr>',
'<td>IND</td>',
'<td>Indicador. Utilizado para representar atributos que se encaixam em um determinado dom&iacute;nio espec&iacute;fico, n&atilde;o se enquadrando no conceito de Tipo (que utiliza o descritor TIPO). Em geral ocupa poucas posi&ccedil;&otilde;es. Exempl'
||'os: IND_SEXO, IND_FUNCAO_COMISSIONADA.</td>',
'</tr>',
'<tr>',
'<td>MES</td>',
'<td>M&ecirc;s. Ser&aacute; utilizado para armazenar meses em geral. Recomenda-se a utiliza&ccedil;&atilde;o de um num&eacute;rico com duas posi&ccedil;&otilde;es para armazenar este dado. O nome do m&ecirc;s ou suas tr&ecirc;s primeiras posi&ccedil;&'
||'otilde;es podem ser obtidos atrav&eacute;s da fun&ccedil;&atilde;o TCU_NOME_MES. Exemplo: MES_ADMISSAO;</td>',
'</tr>',
'<tr>',
'<td>NOME</td>',
'<td>Nome. Usado para denominar nomes de pessoas, lugares, cidades, etc. Exemplo: NOME_CIDADE, NOME_SERVIDOR;</td>',
'</tr>',
'<tr>',
'<td>NUM</td>',
'<td>N&uacute;mero. Pode tamb&eacute;m ser utilizado como identificador &uacute;nico onde seu uso for comum. Geralmente tipo num&eacute;rico sem decimais. Exemplos: NUM_CPF, NUM_CGC, NUM_TELEFONE.</td>',
'</tr>',
'<tr>',
'<td>PERCENT</td>',
'<td>Percentual. Utilizado para armazenar valores que representem uma porcentagem. Em geral ser&aacute; um num&eacute;rico com duas posi&ccedil;&otilde;es. Exemplo: PERCENT_INSALUBRIDADE</td>',
'</tr>',
'<tr>',
'<td>QTD</td>',
'<td>Quantidade. Representa quantidades em geral. Em geral, tipo num&eacute;rico. Exemplo: QTD_HDU.</td>',
'</tr>',
'<tr>',
'<td>SE</td>',
'<td>Condicional. Utilizado para atributos do tipo Booleano, nos quais os valores v&aacute;lidos s&atilde;o &ldquo;S&rdquo; (Sim) ou &ldquo;N&rdquo; (N&atilde;o). Exemplo: SE_EXTINTA, SE_DESCONTA_ANUENIO.</td>',
'</tr>',
'<tr>',
'<td>E</td>',
'<td>Condicional. Utilizado para atributos do tipo NUMBER(1) , nos quais os valores v&aacute;lidos são check (0,1). Exemplo: E_MAIOR_DEZOITO_ANOS.</td>',
'</tr>',
'<tr>',
'<td>SEQ</td>',
'<td>Sequencial. Utilizado para diferenciar ocorr&ecirc;ncias que dependem de uma chave prim&aacute;ria id&ecirc;ntica. Em uma tabela de mensagens ao usu&aacute;rio ter&iacute;amos, por exemplo, o COD_USUARIO e um SEQ_MENSAGEM. N&atilde;o deve ser uti'
||'lizado como o atributo mais significativo da chave prim&aacute;ria, devendo-se, neste caso, utilizar COD. Exemplo: SEQ_ITEM_MENU.</td>',
'</tr>',
'<tr>',
'<td>SIGLA</td>',
'<td>Sigla. Tipo normalmente alfab&eacute;tico, podendo ser alfanum&eacute;rico. Geralmente possui poucas posi&ccedil;&otilde;es. Exemplo: SIGLA_UNIDADE, SIGLA_UF.</td>',
'</tr>',
'<tr>',
'<td>TEXTO</td>',
'<td>Texto. Nomeia atributos que conter&atilde;o textos expl&iacute;citos como tal. Tipo alfanum&eacute;rico livre. Exemplos: TEXTO_TITULO, TEXTO_OBSERVACAO.</td>',
'</tr>',
'<tr>',
'<td>TIPO</td>',
'<td>Tipo. Utilizado para nomear atributos que representam tipos de alguma coisa. Em geral ocupa poucas posi&ccedil;&otilde;es. Quando o tipo for uma chave estrangeira, &eacute; recomend&aacute;vel utilizar o descritor COD, identificando que aquele at'
||'ributo &eacute; origin&aacute;rio de outra entidade. Exemplos: TIPO_SANGUINEO, TIPO_AVALIACAO.</td>',
'</tr>',
'<tr>',
'<td>VALOR</td>',
'<td>Valor em geral. Normalmente tipo num&eacute;rico com decimais. Exemplos: VALOR_NOTA, VALOR_SALARIO.</td>',
'</tr>',
'</table>',
'</div>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_item_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<tr>',
'<td>E</td>',
'<td>Condicional. Utilizado para atributos do tipo NUMBER(1) , nos quais os valores v&aacute;lidos são check (0,1). Exemplo: E_MAIOR_DEZOITO_ANOS.</td>',
'</tr>',
'<tr>',
'<td>SEQ</td>',
'<td>Sequencial. Utilizado para diferenciar ocorr&ecirc;ncias que dependem de uma chave prim&aacute;ria id&ecirc;ntica. Em uma tabela de mensagens ao usu&aacute;rio ter&iacute;amos, por exemplo, o COD_USUARIO e um SEQ_MENSAGEM. N&atilde;o deve ser uti'
||'lizado como o atributo mais significativo da chave prim&aacute;ria, devendo-se, neste caso, utilizar COD. Exemplo: SEQ_ITEM_MENU.</td>',
'</tr>',
'<tr>',
'<td>SIGLA</td>',
'<td>Sigla. Tipo normalmente alfab&eacute;tico, podendo ser alfanum&eacute;rico. Geralmente possui poucas posi&ccedil;&otilde;es. Exemplo: SIGLA_UNIDADE, SIGLA_UF.</td>',
'</tr>',
'<tr>',
'<td>TEXTO</td>',
'<td>Texto. Nomeia atributos que conter&atilde;o textos expl&iacute;citos como tal. Tipo alfanum&eacute;rico livre. Exemplos: TEXTO_TITULO, TEXTO_OBSERVACAO.</td>',
'</tr>',
'<tr>',
'<td>TIPO</td>',
'<td>Tipo. Utilizado para nomear atributos que representam tipos de alguma coisa. Em geral ocupa poucas posi&ccedil;&otilde;es. Quando o tipo for uma chave estrangeira, &eacute; recomend&aacute;vel utilizar o descritor COD, identificando que aquele at'
||'ributo &eacute; origin&aacute;rio de outra entidade. Exemplos: TIPO_SANGUINEO, TIPO_AVALIACAO.</td>',
'</tr>',
'<tr>',
'<td>VALOR</td>',
'<td>Valor em geral. Normalmente tipo num&eacute;rico com decimais. Exemplos: VALOR_NOTA, VALOR_SALARIO.</td>',
'</tr>'))
);
end;
/
prompt --application/pages/page_00055
begin
wwv_flow_api.create_page(
 p_id=>55
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Guia de Padrões e Boas Práticas APEX'
,p_page_mode=>'NORMAL'
,p_step_title=>'Guia de Padrões e Boas Práticas APEX'
,p_step_sub_title=>'Guia de padrões e boas práticas APEX'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_html_page_header=>'<link rel="stylesheet" href="#WORKSPACE_IMAGES#eud_estilos.css" type="text/css">'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_upd_yyyymmddhh24miss=>'20161207213648'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40606298511370997866)
,p_plug_name=>'<b> Guia de boas práticas APEX</b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40179013896765984726)
,p_name=>'P55_SECAO_DESEN_PROD_CONCEITOS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(40606298511370997866)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<i id="P55_SECAO_DESEN_PROD_CONCEITOS_1" class="display_only_subtitulo">Defaults de Interface de Usuário</i>',
'Os Defaults de Interface de Usuário (Defaults de UI) permitem adicionar propriedades padrões a uma tabela, a uma coluna ou a uma view, de forma que estas propriedades serão usadas para definir como os itens de uma determinada página, que referenciam '
||'esses elementos, serão apresentados. Os Defaults de UI de uma tabela são usados pelo wizard de criação de página do APEX para configurar como os itens de página associados aos elementos configurados serão exibidos. Isso é particularmente útil se você'
||' tem uma tabela, coluna ou view que será usada em múltiplas páginas, já que isso irá manter a aparência sempre a mesma, reforçando a consistência visual. Outro benefício do uso desta funcionalidade é a redução no tempo com ajustes de interface de usu'
||'ário. A seguir segue um tutorial em inglês do gerente de produto do APEX, David Peake, mostrando como usar os Defaults de UI.',
'',
'<iframe width="320" height="240" src="https://www.youtube.com/embed/ISqgrfoCo2A" frameborder="0" allowfullscreen></iframe>',
'',
'<i id="P55_SECAO_DESEN_PROD_CONCEITOS_2" class="display_only_subtitulo">Usar Strings de Substituição</i>',
'Se na sua aplicação existem algumas strings que podem mudar ao longo do desenvolvimento, como por exemplo o título de uma página, ou o título de um texto, ou até mesmo a forma de apresentar o nome da organização ao longo do texto, é recomendável o us'
||'o de strings de substituição. Supondo que você queira alterar como o nome da organização na qual trabalha seja apresentado, de Organizações A para A Organizações, você poderia definir um item de aplicação (item criado na página 0, para fins didáticos'
||' ele será chamado de NOME_ORGANIZACAO) com o valor desejado e então fazer referência a ele nas páginas da seguinte forma:',
'',
'Bem vindo a aplicação da &amp;NOME_ORGANIZACAO.',
'',
'Desta forma, basta que o valor do item seja alterado com o novo nome desejado que em todos os lugares que fazem referência a ele será apresentarão o novo nome definido.',
'',
'<i id="P55_SECAO_DESEN_PROD_CONCEITOS_3" class="display_only_subtitulo">Reuso de componentes</i>',
'Se existem componentes (regiões HTML, itens, processos, ações dinâmicas e etc) que podem ser reutilizáveis em várias partes da aplicação, considere a criação destes na página 0. A página 0 é uma página que não pode ser executada, porém todos os compo'
||'nentes criados nela estarão disponíveis em todas as páginas da aplicação. Se você quiser excluir um componente de estar disponível em uma determinada página, pode usar uma condição no componente para isso.',
'',
'<i id="P55_SECAO_DESEN_PROD_CONCEITOS_4" class="display_only_subtitulo">Use os wizards a seu favor</i>',
'Usar um wizard para a criação de um determinado componente no APEX pode economizar tempo, já que a criação é feita de forma automatizada ao invés de manual. Por exemplo, um wizard de criação de formulário em cima de uma tabela pode criar um formulári'
||'o completamente funcional com operações de inserção, atualização e remoção de registros nesta tabela, com alguns cliques. Além disso, os componentes criados via wizard podem ser editados para atender a uma necessidade de customização específica.',
'&nbsp;'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40179014062648984728)
,p_name=>'P55_SECAO_DEPLOY_TITULO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(40606298511370997866)
,p_source=>'Migração'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only_titulo'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40179014115750984729)
,p_name=>'P55_SECAO_DEPLOY_CONCEITOS'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(40606298511370997866)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<i id="P55_SECAO_DEPLOY_CONCEITOS_1" class="display_only_subtitulo">Migrando uma aplicação</i>',
'Uma aplicação APEX é composta dos seguintes componentes:',
'<ul><li>Objetos de Banco (Tabelas, Views, Sequences, Triggers e etc)</li><li>Definições da aplicação</li><li>Arquivos estáticos (Imagens, CSS, JavaScript e etc)</li></ul>No processo de migração de uma aplicação para um outro espaço de trabalho, devem'
||' ser obrigatoriamente exportados as definições da aplicação e todos os objetos de banco usados usados direta ou indiretamente pela aplicação (um objeto usado diretamente seria uma tabela e um objeto usado indiretamente seria uma trigger para popular '
||'a chave primária na tabela). Se sua aplicação usar algum arquivo inserido nos arquivos estáticos (imagens, CSS, JavaScript e etc), eles também devem ser exportados para o novo espaço de trabalho.',
'<ul><li><b>Exportar Objetos de Banco:</b> Devem ser gerados os scripts DDL (Data Definition Language) dos objetos de banco usados pela aplicação (<a target="_blank" href="https://docs.oracle.com/cd/E17556_01/user.40/e15520/sql_utl.htm#AEUTL256">Geran'
||'do scripts DDL usando o APEX (em inglês)</a>). Uma vez que o arquivo com os scripts DDL foi gerado, para criar os objetos em outro espaço de trabalho basta ir em SQL Workshop -> SQL Scripts. Observe que os scripts DDL, como o próprio nome diz, contém'
||' somente a definição das estruturas dos objetos, não contendo os dados armazenados nele. Caso seje necessário exportar também os dados das tabelas, siga <a href="https://docs.oracle.com/cd/E17556_01/user.40/e15520/sql_utl.htm#AEUTL244" target="_blank'
||'">Exportando dados das tabelas (em inglês)</a>.</li>',
'<li><b>Exportar arquivos estáticos:</b> Os arquivos estáticos podem ser exportados em Shared Components -> Static Application Files ou Static Workspace Files.</li></ul>',
'<i id="P55_SECAO_DEPLOY_CONCEITOS_2" class="display_only_subtitulo">Tornando as aplicações mais portáveis</i>',
'Evite usar referências diretas a valores (hardcoded) que podem sofrer mudança ao migrar a aplicação para um outro espaço de trabalho. Por exemplo, suponha a aplicação de ID 865 no espaço de trabalho A. Em todas as páginas desta aplicação, existe um b'
||'otão que ao ser clicado redireciona o usuário para a página 5. Na configuração deste botão, está especificado para redirecionar à seguinte URL: <b><i>f?p=865:5</i></b>. Ao migrarmos esta aplicação para o espaço de trabalho B, o seu ID irá mudar e ter'
||'emos que alterar em todas as páginas o ID da aplicação usado na URL, agora diferente de 865. Uma maneira portável de se fazer isso seria usar strings de substituição. O APEX define várias váriáveis que contém diversas informações sobre a aplicação (<'
||'a href="https://docs.oracle.com/database/121/HTMDB/concept_sub.htm#HTMDB03024" target="_blank">veja aqui</a>), e uma dessas variáveis é a APP_ID, que contém o ID atual da aplicação. Desta forma, se a URL fosse definida da seguinte maneira: <b><i>f?p='
||'&amp;APP_ID.:5</b></i>, essa aplicação ao ser migrada para o espaço de trabalho B manteria o botão funcionando, já que a variável APP_ID iria conter o novo ID da aplicação. Portanto sempre que possível use strings de substituição ao invés de usar val'
||'ores diretos.'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40179014329441984731)
,p_name=>'P55_SECAO_CONS_TITULO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(40606298511370997866)
,p_source=>'Consistência'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only_titulo'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40179014446911984732)
,p_name=>'P55_SECAO_CONS_CONCEITOS'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(40606298511370997866)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<i id="P55_SECAO_CONS_CONCEITOS_1" class="display_only_subtitulo">Separar Interface de Usuário da Lógica da Aplicação</i>',
'Evite ao máximo misturar a interface de usuário (HTML) com a lógica da aplicação (SQL ou PL/SQL). Suponha uma região de relatório. Uma região de relatório necessita de uma fonte de dados, ou seja, um SQL que traga os dados necessários para exibir no '
||'relatório. Suponha também que um dos requisitos é que uma determinada coluna de dados nesse relatório apresente todos os valores em negrito. Dessa forma um desenvolvedor poderia ficar tentado a elaborar um SQL da seguinte forma:',
'',
'<img src="#WORKSPACE_IMAGES#eud_p55_sql_html_exemplo.png" />',
'',
'Esse SQL iria atender perfeitamente as necessidades da aplicação, porém ele mistura componentes de interface de usuário (HTML) com a lógica da aplicação (SQL). Isso é uma péssima prática de desenvolvimento já que interface de usuário e lógica de apli'
||'cação tem responsabilidades diferentes, portanto devem sempre serem separados ao máximo. Neste caso o correto seria que o desenvolvedor tratasse o negrito na própria região de relatório, que é um componente da interface de usuário. Um código PL/SQL o'
||'u SQL que faz referência a algum código HTML é sinal de que algo não esta sendo feito como deveria.',
'',
'No APEX o ideal é sempre usar os componentes padrões que já existem, de forma que a facilitar a manutenção da aplicação. Caso seja necessário algum tipo de customização, procure sempre separar as responsabilidades entre interface de usuário e lógica '
||'de aplicação.'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40179014783967984735)
,p_name=>'P55_SECAO_SEGURANCA_TITULO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(40606298511370997866)
,p_source=>'Segurança'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only_titulo'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40179014896421984736)
,p_name=>'P55_SECAO_SEGURANCA_CONCEITOS'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(40606298511370997866)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<i id="P55_SECAO_SEGURANCA_CONCEITOS_1" class="display_only_subtitulo">Adulteração de URL (URL Tampering)</i>',
'Passagem de parâmetros de uma página a outra em uma aplicação Web é uma prática comum. As aplicações desenvolvidas no APEX, por serem Web, também se utilizam desta forma de passagem de parâmetro. Suponha que a aplicação 945 possui uma página com um f'
||'ormulário de edição de cadastro. Para editar um cadastro, esta página precisa receber a chave primária do usuário em questão para recuperar e atualizar as informações do mesmo. Uma URL típica poderia ser formada da seguinte maneira: <b><i>f?p=945:1::'
||':::P1_PK_USUARIO:55</b></i>. Nesta URL, o item P1_PK_USUARIO da página 1 está recendo o valor 55. Um usuário mais atento poderia observar isto e tentar passar um outro valor a este item, através da alteração da URL. Isto representa um problema de seg'
||'urança, já que o usuário poderia editar dados de outra pessoa. Uma recomendação neste caso é sempre deixar ativado a Proteção de Estado de Sessão (Session State Protection) na propriedade do item. Desta forma, se houver uma alteração do valor do parâ'
||'metro na URL pelo usuário, uma mensagem de violação da proteção será exibida.',
'',
'<i id="P55_SECAO_SEGURANCA_CONCEITOS_2" class="display_only_subtitulo">Escapar caracteres especiais em itens de exibição</i>',
'Procure sempre marcar a propriedade de item: Escapar Caracteres Especiais (Escape Special Characters). Desta forma, caso um usuário mal intencionado insira um código JavaScript ou HTML malicioso em um cadastro, esta funcionalidade irá converter os ca'
||'racteres especiais no código, de forma que ele não seja executado pelo navegador.',
'',
'<i id="P55_SECAO_SEGURANCA_CONCEITOS_3" class="display_only_subtitulo">Injeção de SQL</i>',
'A injeção de SQL é um tipo de ataque onde o usuário mal intencionado consegue alterar o comportamento de uma Query com base em uma entrada fornecida pelo mesmo. Este tipo de ataque procura explorar falhas na construção de um SQL. Por exemplo, suponha'
||' uma página que traga os dados de um cliente com base no RG informado pelo usuário, e caso nenhum RG seja fornecido deve trazer o total de clientes cadastrados. O código PL/SQL a seguir é responsável por implementar este requisito.',
'',
'<img src="#WORKSPACE_IMAGES#eud_p55_sql_injection_exemplo.png" />',
'',
'Este código aparentemente comum, possui uma falha de segurança. Um usuário com conhecimento básico em SQL pode informar o seguinte valor no RG: <b>1 OR 1=1</b>. Desta forma o SQL resultante passa a ser: <b>SELECT * FROM cliente WHERE rg = <i>1 OR 1=1'
||'</i></b>. Assim, o usuário mal intencionado conseguiria ver os dados de toda a base de clientes cadastrada.',
'',
'Portanto sempre procure redobrar a atenção na construção de código SQL que envolva concatenação de variável ou string de substituição, de forma a prever possíveis falhas de segurança.',
'',
'<i id="P55_SECAO_SEGURANCA_CONCEITOS_4" class="display_only_subtitulo">Restringindo o acesso à partes da aplicação</i>',
'A restrição de acesso a certos conteúdos da aplicação pode ser feita usando-se esquemas de autorização. Os esquemas de autorização são regras definidas que restringem o uso da aplicação de acordo com o perfil do usuário. Por exemplo, um dos requisito'
||'s de uma aplicação pode ser que certas colunas de um relatório só sejam exibidas para os usuários que pertecem ao depertamento X dentro de uma organização. Desta forma, uma regra de autorização poderia ser implementada usando o SQL a seguir.',
'',
'<img src="#WORKSPACE_IMAGES#eud_p55_sql_autorizacao_exemplo.png" />',
'',
'Assim todos os componentes (itens de aplicação, validação, processos e etc) que tiverem setados com este esquema de autorização, só serão exibidos ou executados para os usuários que satisfazem a regra. O esquema de autorização pode ser criado em: Sha'
||'red Components -> Authorization Schemes.'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40179014901382984737)
,p_name=>'P55_SECAO_DESEMPENHO_TITULO'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(40606298511370997866)
,p_source=>'Desempenho'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only_titulo'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40179015001344984738)
,p_name=>'P55_SECAO_DESEMPENHO_CONCEITOS'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(40606298511370997866)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<i id="P55_SECAO_DESEMPENHO_CONCEITOS_1" class="display_only_subtitulo">Usando bind de variáveis</i>',
'Antes do banco de dados Oracle executar um código SQL e PL/SQL, uma série de etapas é realizada: fazer o parser, resolução de nomes, verificação de segurança e otimização. De forma a evitar a execução de todas estas etapas sempre que um mesmo código '
||'SQL ou PL/SQL é executado com frequência, o banco Oracle possui uma área compartilhada de cache onde armazena código SQL e PL/SQL de forma pré-compilada. Assim se houver a execução com frequência deste código SQL ou PL/SQL, que não se modifica entre '
||'uma execução e outra, o banco Oracle primeiro verifica se a sua versão pré-compilada existe em cache, de forma a evitar a execução das etapas mencionadas anteriormente e aumentar o desempenho. Para a utilização desta técnica é fundamental que o códig'
||'o seja sempre o mesmo. Uma forma de atingir isso é usando bind de variáveis. O código a seguir utiliza bind de variável.',
'',
'<img src="#WORKSPACE_IMAGES#eud_p55_sql_autorizacao_exemplo.png" />',
'',
'Utilizando bind de variável o valor da variável APP_USER é substituído a nível de execução do SQL, desta forma o código entregue ao banco Oracle é sempre o mesmo, de forma que ele é o responsável por fazer a substituição da variável pelo seu atual va'
||'lor. O código a seguir, que utiliza string de substituição, apesar de aparentemente idêntico ao anterior, é tratado de forma diferente pelo banco Oracle.',
'',
'<img src="#WORKSPACE_IMAGES#eud_p55_sql_string_subst_desempenho_exemplo.png" />',
'',
'Usando string de substituição, a engine do APEX é quem irá substituir &amp;APP_USER. pelo login do usuário. Tomando como exemplo um usuário com login <b>carlosacf</b>, o banco Oracle iria receber o código com a seguinte clásula where: <i><b>WHERE log'
||'in = ''carlosacf''</b></i>, ou seja, o SQL iria ser diferente para cada usuário acessando a aplicação. Isso contrasta com o uso de bind de variável, já que o banco Oracle é quem faz a substituição do valor (a nível de execução do SQL) e não a engine do'
||' APEX.',
'',
'Portanto procure sempre usar bind de variável nos códigos SQL ou PL/SQL de forma a permitir o uso do esquema de cache, contribuindo assim para uma maior escalabilidade da aplicação.',
'',
'<i id="P55_SECAO_DESEMPENHO_CONCEITOS_2" class="display_only_subtitulo">Usando condições pré-definidas</i>',
'Uma condição aplicada a um componente do APEX (item, processo, validação, ação dinâmica e etc) indica se este componente será exibido/executado. Pode-se considerar que no APEX existem dois tipos de condições: as customizadas (elaboradas pelo próprio '
||'desenvolvedor na forma de código SQL ou PL/SQL) e as pré-definidas (diversas condições com lógica bem definida). Na figura a seguir, são alguns exemplos de condições pré-definidas as condições que estão circuladas em vermelho.',
'',
'<img src="#WORKSPACE_IMAGES#eud_p55_condicoes_pre_existentes_exemplo.png" />',
'',
'Sempre que possível dê preferência ao uso dessas condições, porque além de aumentarem a produtividade do desenvolvedor, são otimizadas para maior desempenho. Essas condições estão acopladas na engine do APEX e portanto são altamente otimizadas. Dific'
||'ilmente um desenvolvedor conseguirá elaborar um código SQL ou PL/SQL que implemente alguma dessas lógicas pré-definidas de forma mais otimizada.',
'',
'<i id="P55_SECAO_DESEMPENHO_CONCEITOS_3" class="display_only_subtitulo">Usando redirecionamento de página</i>',
'Sempre que existir um cenário onde há a necessidade de se encaminhar o usuário para uma outra página, ao se clicar em um botão, e nenhuma ação como processamento, validação ou computação precisar ser realizada, configure o botão para redirecionar ao '
||'invés de submeter a página. O redirecionamento permite um encaminhamento de página mais rápido e menos custoso do que a submissão com o uso de branches.'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40179015123653984739)
,p_name=>'P55_SECAO_DESEN_PROD_CONCEITOS_2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(40606298511370997866)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<i id="P55_SECAO_DESEN_PROD_CONCEITOS_5" class="display_only_subtitulo">Comentando a aplicação</i>',
'Uma boa prática que facilita a manutenção de qualquer sistema é documentá-lo. No APEX uma funcionalidade interessante para auxiliar futuros mantenedores da aplicação é o uso de comentários de página e de componente (item, validação, processo, ação di'
||'nâmica e etc). Um comentário de página pode ser criado clicando-se no ícone de um balão com um sinal de mais, conforme a imagem a seguir ilustra.',
'',
'<img src="#WORKSPACE_IMAGES#eud_p55_comentario_exemplo.png" />',
'',
'A seguir a tela de como é um cadastro de comentário a nível de página.',
'',
'<img src="#WORKSPACE_IMAGES#eud_p55_comentario_exemplo_2.png" />',
'',
'A vantagem do uso do comentário de página é que todo desenvolvedor que acessar a página irá visualizar a notificação de comentário, contribuindo para a sua evidência. Uma recomendação para o uso de comentário de página é sempre prefixar cada comentár'
||'io com o nome do componente da página, conforme ilustrado na figura anterior.',
'',
'Se houver uma necessidade maior de detalhamento de um determinado componente, utilize o campo de comentário dentro do próprio componente. Um comentário de um componente pode ser inserido acessando-se as propriedades do mesmo e navegar até a seção Com'
||'entários. Lembre-se de criar um comentário de página para cada comentário de componente feito, de forma a evidenciá-lo ao desenvolvedor.'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40606300108401997874)
,p_name=>'P55_INDICE_TITULO'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(40606298511370997866)
,p_source=>'Índice'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only_titulo'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40606300564259997875)
,p_name=>'P55_INDICE'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(40606298511370997866)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#P55_OBJETIVO_TITULO_DISPLAY">Objetivo</a>',
'<a href="#P55_SECAO_BD_TITULO_DISPLAY">Banco de Dados</a>',
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#P55_SECAO_BD_CONCEITOS_1">Garantir integridade dos dados com o uso de constraints</a>',
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#P55_SECAO_BD_CONCEITOS_2">Popular chave primária com o uso de sequences (sequências) e triggers (gatilhos)</a>',
'<a href="#P55_SECAO_DESEN_PROD_TITULO_DISPLAY">Produtividade no Desenvolvimento</a>',
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#P55_SECAO_DESEN_PROD_CONCEITOS_1">Defaults de Interface de Usuário</a>',
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#P55_SECAO_DESEN_PROD_CONCEITOS_2">Usar Strings de Substituição</a>',
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#P55_SECAO_DESEN_PROD_CONCEITOS_3">Reuso de componentes</a>',
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#P55_SECAO_DESEN_PROD_CONCEITOS_4">Use os wizards a seu favor</a>',
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#P55_SECAO_DESEN_PROD_CONCEITOS_5">Comentando a aplicação</a>',
'<a href="#P55_SECAO_DEPLOY_TITULO_DISPLAY">Migração</a>',
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#P55_SECAO_DEPLOY_CONCEITOS_1">Migrando uma aplicação</a>',
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#P55_SECAO_DEPLOY_CONCEITOS_2">Tornando as aplicações mais portáveis</a>',
'<a href="#P55_SECAO_CONS_TITULO_DISPLAY">Consistência e Usabilidade de Interface de Usuário</a>',
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#P55_SECAO_CONS_CONCEITOS_1">Separar Interface de Usuário da Lógica da Aplicação</a>',
'<a href="#P55_SECAO_SEGURANCA_TITULO_DISPLAY">Segurança</a>',
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#P55_SECAO_SEGURANCA_CONCEITOS_1">Adulteração de URL (URL Tampering)</a>',
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#P55_SECAO_SEGURANCA_CONCEITOS_2">Escapar caracteres especiais em itens de exibição</a>',
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#P55_SECAO_SEGURANCA_CONCEITOS_3">Injeção de SQL</a>',
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#P55_SECAO_SEGURANCA_CONCEITOS_4">Restringindo o acesso à partes da aplicação</a>',
'<a href="#P55_SECAO_DESEMPENHO_TITULO_DISPLAY">Desempenho</a>',
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#P55_SECAO_DESEMPENHO_CONCEITOS_1">Usando bind de variáveis</a>',
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#P55_SECAO_DESEMPENHO_CONCEITOS_2">Usando condições pré-definidas</a>',
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#P55_SECAO_DESEMPENHO_CONCEITOS_3">Usando redirecionamento de página</a>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only_indice'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40606300925728997875)
,p_name=>'P55_OBJETIVO_TITULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(40606298511370997866)
,p_source=>'Objetivo'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only_titulo'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40606301318314997876)
,p_name=>'P55_OBJETIVO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(40606298511370997866)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'No desenvolvimento de uma aplicação web existem características que contribuem para aumentar as chances de sucesso de uma aplicação. Dentre essas características, podemos citar:',
'<ul><li>Facilidade de desenvolvimento</li><li>Facilidade de manutenção</li><li>Facilidade de implantação</li><li>Facilidade de uso</li><li>Desempenho</li><li>Segurança</li></ul>Portanto um desenvolvedor que deseje que sua aplicação web tenha chances '
||'de sucesso deve se atentar a essas características. Levando em conta isso e o fato de que o APEX é uma ferramenta de desenvolvimento rápido de aplicações web, é importante que os desenvolvedores APEX se atentem a essas características se desejam que '
||'suas aplicações obtenham maiores chances de sucesso. A seguir são listadas boas práticas elaboradas pela Oracle com base na experiência de uso e desenvolvimento de aplicações APEX em ambientes de produção. Essas boas práticas são recomendações e pode'
||'m ser usadas de forma flexível dependendo das necessidades de cada aplicação. ',
'',
'<i><a target="_blank" href="http://www.oracle.com/technetwork/testcontent/apex-best-practices-134310.pdf">Acesse aqui o documento original</a></i>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40606302520964997878)
,p_name=>'P55_SECAO_BD_TITULO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(40606298511370997866)
,p_source=>'Banco de Dados'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only_titulo'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40606302946572997880)
,p_name=>'P55_SECAO_BD_CONCEITOS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(40606298511370997866)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<i id="P55_SECAO_BD_CONCEITOS_1" class="display_only_subtitulo">Garantir integridade dos dados com o uso de constraints</i>',
'Sempre que possível utilize as constraints do banco de dados para manter a acurácia e a integridade dos dados. Por mais que você tente garantir a integridade dos dados a nível de aplicação, geralmente não há como garantir que o banco de dados não sej'
||'a acessado por outros meios além da aplicação. Por tanto é importante que você use constraints de chave primária, de chave estrangeira, de não nulo e de check.',
'',
'<i id="P55_SECAO_BD_CONCEITOS_2" class="display_only_subtitulo">Popular chave primária com o uso de sequences (sequências) e triggers (gatilhos)</i>',
'É útil e interessante o uso de sequences e triggers para popular uma coluna de chave primária de uma tabela. Dessa forma, considerando que a sequence sempre mantenha seu valor sequencial, fica garantido que o valor sendo inserido na chave primária pa'
||'ra um dado registro será sempre único, além de abstrair a insersação deste dado para o desenvolvedor. A criação de tabela pelo wizard de criação do APEX já realiza a criação e configuração automatica do trigger e da sequence, para cada tabela criada.'
||' A seguir segue o exemplo de criação manual de uma sequence e de um trigger para popular a chave primária da tabela fictícia produto.',
'',
'<img style="display:inline" src="#WORKSPACE_IMAGES#eud_p55_criacao_trigger_sequence.png"/>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40606303369669997881)
,p_name=>'P55_SECAO_DESEN_PROD_TITULO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(40606298511370997866)
,p_source=>'Produtividade no Desenvolvimento'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only_titulo'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00056
begin
wwv_flow_api.create_page(
 p_id=>56
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Guia de Depuração'
,p_page_mode=>'NORMAL'
,p_step_title=>'Guia de Depuração'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_html_page_header=>'<link rel="stylesheet" href="#WORKSPACE_IMAGES#eud_estilos.css" type="text/css">'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_upd_yyyymmddhh24miss=>'20161207213515'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40179015269049984740)
,p_plug_name=>'<b>Guia de Depuração</b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40179015304471984741)
,p_name=>'P56_INDICE_TITULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(40179015269049984740)
,p_source=>'Índice'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only_titulo'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40179015490071984742)
,p_name=>'P56_INDICE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(40179015269049984740)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#P56_DEBUG_CONCEITOS_1">Verificando o tempo de carregamento de uma região</a>',
'<a href="#P56_DEBUG_CONCEITOS_2">Visualizando o estado de sessão</a>',
'<a href="#P56_DEBUG_CONCEITOS_3">Usando o modo de depuração</a>',
'<a href="#P56_DEBUG_CONCEITOS_4">Acessando o histórico de alterações de uma página de aplicação</a>',
'<a href="#P56_DEBUG_CONCEITOS_5">Verificando as dependências de objetos de banco de dados de uma aplicação</a>',
'<a href="#P56_DEBUG_CONCEITOS_6">Removendo componentes de forma a isolar o problema</a>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only_indice'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40179015544633984743)
,p_name=>'P56_SECAO_DEBUG_CONCEITOS_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(40179015269049984740)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<i id="P56_DEBUG_CONCEITOS_1" class="display_only_subtitulo">Verificando o tempo de carregamento de uma região</i>',
'Para verificar o tempo de carregamento de uma região em específico dentro de uma página APEX, use a seguinte string de substituição no Rodapé da região: <i><b>#TIMING#</b></i> . Você pode usar este artifício para depurar o desempenho de carregamento '
||'de uma página APEX.',
'',
'<i id="P56_DEBUG_CONCEITOS_2" class="display_only_subtitulo">Visualizando o estado de sessão</i>',
'A visualização do estado de sessão pode ser feita clicando-se na guia dessão da barra de desenvolvedor. O estado de sessão contém informações sobre a sessão do usuário na aplicação, incluindo os valores de cada item de página usado em processos, vali'
||'dações, condições e etc.',
'',
'<img src="#WORKSPACE_IMAGES#eud_p56_session_state_debug.png" />',
'',
'<i id="P56_DEBUG_CONCEITOS_3" class="display_only_subtitulo">Usando o modo de depuração</i>',
'O modo de depuração serve para rastrear as ações realizadas pela engine do APEX em uma renderização ou submissão de página. Isso permite verificar por exemplo se o valor de um determinado item foi setado por uma computação, ou se uma determinada cond'
||'ição de um item foi avaliada como verdadeira, ou ainda se os valores dos itens foram setados no estado de sessão ao submeter uma página.',
'',
'Como acessar o modo de depuração:',
'',
'<b>1.</b>',
'<img src="#WORKSPACE_IMAGES#eud_p56_debug_mode.png" />',
'',
'<b>2.</b>',
'<img src="#WORKSPACE_IMAGES#eud_p56_debug_mode_2.png" />',
'',
'<b>3.</b>',
'<img src="#WORKSPACE_IMAGES#eud_p56_debug_mode_3.png" />',
'',
'Para saber se um determinado log de depuração está relacionado com uma renderização ou uma submissão de página, vale a seguinte regra:',
'',
'    1- Renderização de página a primeira linha será um valor de requisição igual a <b><i>show</i></b>;',
'    2- Submissão de página a primeira linha será um valor de requisição igual ao nome do botão que submeteu a página;',
'    ',
'Exemplo de uma renderização de página',
'<img src="#WORKSPACE_IMAGES#eud_p56_debug_mode_4.png" />',
'',
'Exemplo de uma submissão de página',
'<img src="#WORKSPACE_IMAGES#eud_p56_debug_mode_5.png" />',
'',
'A seguir segue um exemplo de um trecho de depuração onde a validação de valor não nulo do item P52_CODIGO_TITULO_VALOR não passou, ou seja, o item estava com valor nulo ao submeter a página.',
'',
'<img src="#WORKSPACE_IMAGES#eud_p56_debug_mode_6.png" />',
'',
'<i id="P56_DEBUG_CONCEITOS_4" class="display_only_subtitulo">Acessando o histórico de alterações de uma página de aplicação</i>',
'A imagem a seguir ilustra como acessar o histórico de alterações de uma página, que pode ser útil na depuração da mesma, como por exemplo ajudar a rastrear qual alteração fez com que a página parasse de funcionar conforme o esperado.',
'',
'<img src="#WORKSPACE_IMAGES#eud_p56_historico.png" />',
'',
'<i id="P56_DEBUG_CONCEITOS_5" class="display_only_subtitulo">Verificando as dependências de objetos de banco de dados de uma aplicação</i>',
'Para verificar as depêndencias de objetos de banco de dados de uma aplicação, siga os passsos abaixo. Isto pode ser útil tanto na depuração quanto na migração de uma aplicação.',
'',
'<b>1.</b>',
'<img src="#WORKSPACE_IMAGES#eud_p56_dependencia_objeto_db.png" />',
'',
'<b>2.</b>',
'<img src="#WORKSPACE_IMAGES#eud_p56_dependencia_objeto_db_2.png" />',
'&nbsp;'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40179015808157984746)
,p_name=>'P56_SECAO_DEBUG_CONCEITOS_2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(40179015269049984740)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<i id="P56_DEBUG_CONCEITOS_6" class="display_only_subtitulo">Removendo componentes de forma a isolar o problema</i>',
'Uma das formas mais eficientes de encontrar problemas em uma página, causado por algum componente de página (processo, validação, item, ação dinâmica), é ir desativando e reativando os componentes até que a página volte a funcionar. Assim isola-se o '
||'problema de forma a melhor concentrar os esforços na resolução de erros. No APEX, a desativação de um componente de página pode ser feita configurando-se a sua condição como Nunca (Never). Usando-se esta abordagem pode-se determinar com certa rapidez'
||' qual é a causa do problema. A reativação do componente é feita voltando-se a sua configuração de condição original.'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(40179015650670984744)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Teste_DBMS_APPLICATION_INFO'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
'DBMS_APPLICATION_INFO.SET_MODULE ( ',
'   ''APEX'', ',
'   NULL); ',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00057
begin
wwv_flow_api.create_page(
 p_id=>57
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Geração de Casos de Teste'
,p_page_mode=>'NORMAL'
,p_step_title=>'Gerar Casos de Teste'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_upd_yyyymmddhh24miss=>'20161103003829'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41832038934444452621)
,p_plug_name=>'Gerar Casos de Teste'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41832041573573452647)
,p_plug_name=>'Selecione um tipo de item'
,p_parent_plug_id=>wwv_flow_api.id(41832038934444452621)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P57_COMPONENTE_SELECIONADO'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42709304960739905402)
,p_plug_name=>'Item selecionado: <span style="color:blue;font-weight:bold">&P57_COMPONENTE_SELECIONADO.</span>'
,p_parent_plug_id=>wwv_flow_api.id(41832038934444452621)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P57_COMPONENTE_SELECIONADO'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41832040772393452639)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(41832041573573452647)
,p_button_name=>'P57_COLOR_PICKER_BOTAO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p57_colorPicker.png" />'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.:RP:P57_COMPONENTE_SELECIONADO:Color Picker'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41832040880767452640)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(41832041573573452647)
,p_button_name=>'P57_DATE_PICKER_BOTAO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p57_datePicker.png" />'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.:RP:P57_COMPONENTE_SELECIONADO:Date Picker'
,p_grid_new_row=>'N'
,p_grid_column=>5
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41832040936132452641)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(41832041573573452647)
,p_button_name=>'P57_NUMBER_FIELD_BOTAO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p57_numberField.png" />'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.:RP:P57_COMPONENTE_SELECIONADO:Number Field'
,p_grid_new_row=>'N'
,p_grid_column=>9
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41832041028408452642)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(41832041573573452647)
,p_button_name=>'P57_PASSWORD_BOTAO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p57_password.png" />'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.:RP:P57_COMPONENTE_SELECIONADO:Password'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41832041221397452644)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(41832041573573452647)
,p_button_name=>'P57_TEXT_AREA_BOTAO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p57_textArea.png" />'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.:RP:P57_COMPONENTE_SELECIONADO:Text Area'
,p_grid_new_row=>'N'
,p_grid_column=>5
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41832041107409452643)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(41832041573573452647)
,p_button_name=>'P57_TEXT_FIELD_BOTAO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p57_textField.png" />'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.:RP:P57_COMPONENTE_SELECIONADO:Text Field'
,p_grid_new_row=>'N'
,p_grid_column=>9
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41832041339344452645)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(41832041573573452647)
,p_button_name=>'P57_RICH_TEXT_BOTAO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'<img src="#WORKSPACE_IMAGES#eud_p57_richTextEditor.png" />'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.:RP:P57_COMPONENTE_SELECIONADO:Rich Text'
,p_grid_new_row=>'Y'
,p_grid_column=>5
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42709307333354905426)
,p_button_sequence=>79
,p_button_plug_id=>wwv_flow_api.id(42709304960739905402)
,p_button_name=>'P57_VOLTAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Voltar'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.:RP,57::'
,p_button_condition=>'P57_COMPONENTE_SELECIONADO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42709305190120905404)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(42709304960739905402)
,p_button_name=>'P57_GERAR_VALORES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Gerar'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_column=>2
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(42709305894233905411)
,p_branch_name=>'P57_REDIRECIONAR_PAG_RESULTADOS'
,p_branch_action=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41832041415483452646)
,p_name=>'P57_COMPONENTE_SELECIONADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(41832038934444452621)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42709305047135905403)
,p_name=>'P57_TAMANHO_COLUNA_BANCO'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(42709304960739905402)
,p_prompt=>'Informe a quantidade de caracteres (Máx. 4000):'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_display_when=>'P57_COMPONENTE_SELECIONADO'
,p_display_when2=>'Text Field:Password:Text Area:Rich Text'
,p_display_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Informe a quantidade de caracteres definida na coluna associada ao item a ser testado.',
'<br/><br/>',
'Tipo CHAR: Permitido uma coluna de no máximo 2000 caracteres.<br/><br/>',
'Tipo VARCHAR2: Permitido uma coluna de no máximo 4000 caracteres.<br/><br/>'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42709305486022905407)
,p_name=>'P57_TIPO_CARACTERE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(42709304960739905402)
,p_prompt=>'Tipo de caractere: '
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Alfabéticos;1,Alfanuméricos;2,Qualquer Caractere;3'
,p_display_when=>'P57_COMPONENTE_SELECIONADO'
,p_display_when2=>'Text Field:Password:Text Area:Rich Text'
,p_display_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42709307543348905428)
,p_name=>'P57_DATE_PICKER_FORMATO'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(42709304960739905402)
,p_prompt=>'Insira o formato da máscara da data:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>60
,p_display_when=>'P57_COMPONENTE_SELECIONADO'
,p_display_when2=>'Date Picker'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Os seguintes elementos são suportados, por esta funcionalidade, no formato da máscara da data: <br/><br/>',
'dd<br/>',
'mm<br/>',
'yyyy<br/>',
'yy<br/>',
'hh24<br/>',
'hh<br/>',
'mi<br/>',
'ss<br/><br/>',
'Maiores informações: <i><a target="_blank" href="http://docs.oracle.com/cd/B19306_01/server.102/b14200/sql_elements004.htm#sthref412">Datetime Format Elements</a></i>',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42709308221272905435)
,p_name=>'P57_NUMBER_FIELD_PRECISAO'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(42709304960739905402)
,p_prompt=>'Informe a Precisão (Máx. 38): '
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>2
,p_display_when=>'P57_COMPONENTE_SELECIONADO'
,p_display_when2=>'Number Field'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42709308315716905436)
,p_name=>'P57_NUMBER_FIELD_ESCALA'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(42709304960739905402)
,p_prompt=>'Informe a Escala: '
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>2
,p_display_when=>'P57_COMPONENTE_SELECIONADO'
,p_display_when2=>'Number Field'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42709308541159905438)
,p_name=>'P57_SEPARADOR_NUMERO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(42709304960739905402)
,p_prompt=>'Informe a notação decimal (. ou ,): '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>1
,p_display_when=>'P57_COMPONENTE_SELECIONADO'
,p_display_when2=>'Number Field'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42709307027159905423)
,p_validation_name=>'P57_TAMANHO_COLUNA_BANCO_VALOR_MAX'
,p_validation_sequence=>10
,p_validation=>'RETURN :P57_TAMANHO_COLUNA_BANCO <= 4000 AND :P57_TAMANHO_COLUNA_BANCO >= 2;'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Erro! Informe um valor entre 2 e 4000 caracteres.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(42709305190120905404)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42709307690027905429)
,p_validation_name=>'P57_CAMPOS_VALIDOS_DATE_PICKER'
,p_validation_sequence=>20
,p_validation=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'IF REGEXP_LIKE(:P57_DATE_PICKER_FORMATO, ''[a-ce-gj-ln-rt-xz0135-9]'', ''i'')',
'THEN',
'    RETURN FALSE;',
'ELSE',
'    IF REGEXP_LIKE(:P57_DATE_PICKER_FORMATO,''(\Wd\W)|(^d\W)|(\Wd$)|(\Wd{3,}\W)|(^d{3,}\W)|(\Wd{3,}$)'',''i'') OR',
'        REGEXP_LIKE(:P57_DATE_PICKER_FORMATO,''(\Wm\W)|(^m\W)|(\Wm$)|(\Wm{3,}\W)|(^m{3,}\W)|(\Wm{3,}$)'',''i'') OR',
'        REGEXP_LIKE(:P57_DATE_PICKER_FORMATO,''(\Wy\W)|(^y\W)|(\Wy$)|(\Wyyy\W)|(^yyy\W)|(\Wyyy$)|(\Wy{5,}\W)|(^y{5,}\W)|(\Wy{5,}$)'',''i'') OR',
'        REGEXP_LIKE(:P57_DATE_PICKER_FORMATO,''(\Ws\W)|(^s\W)|(\Ws$)|(\Ws{3,}\W)|(^s{3,}\W)|(\Ws{3,}$)'',''i'') OR',
'        REGEXP_LIKE(:P57_DATE_PICKER_FORMATO,''(\Wi\W)|(^i\W)|(\Wi$)|(.*i{2,}.*)'',''i'') OR',
'        REGEXP_LIKE(:P57_DATE_PICKER_FORMATO,''(\Wh\W)|(^h\W)|(\Wh$)|(.*h{3,}.*)|(.*2{2,}.*)|(.*4{2,}.*)'',''i'')',
'    THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'END IF;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Erro! Formato de máscara inválido!'
,p_always_execute=>'N'
,p_validation_condition=>'P57_COMPONENTE_SELECIONADO'
,p_validation_condition2=>'Date Picker'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42709305190120905404)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42709308795638905440)
,p_validation_name=>'P57_PRECISAO_ESCALA_NOTAC_DECIMAL'
,p_validation_sequence=>30
,p_validation=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'IF REGEXP_LIKE(:P57_NUMBER_FIELD_PRECISAO, '',|\.'', ''i'') OR',
'    REGEXP_LIKE(:P57_NUMBER_FIELD_ESCALA, '',|\.'', ''i'') OR',
'    NOT REGEXP_LIKE(:P57_SEPARADOR_NUMERO, '',|\.'') OR',
'    (:P57_NUMBER_FIELD_ESCALA > 0 AND :P57_SEPARADOR_NUMERO IS NULL)',
'THEN',
'    RETURN FALSE;',
'ELSE',
'    RETURN :P57_NUMBER_FIELD_PRECISAO > :P57_NUMBER_FIELD_ESCALA AND',
'        :P57_NUMBER_FIELD_PRECISAO <= 38 AND :P57_NUMBER_FIELD_PRECISAO >= 2 AND',
'        :P57_NUMBER_FIELD_ESCALA >= 0;',
'END IF;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Erro! A precisão, cujo valor máximo é 38 e deve ser maior do que 2, deve ser maior do que a escala e ambos devem ser números inteiros positivos. A notação decimal deve ser ponto (.) ou vírgula (,).'
,p_always_execute=>'N'
,p_validation_condition=>'P57_COMPONENTE_SELECIONADO'
,p_validation_condition2=>'Number Field'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42709305190120905404)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42709305514040905408)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P57_GERAR_CASO_TESTE_TEXTO'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_min_value VARCHAR(1);',
'    v_min_plus_value VARCHAR(2);',
'    v_avg_value VARCHAR(32767);',
'    v_max_minus_value VARCHAR(32767);',
'    v_max_value VARCHAR(32767);',
'    v_max_plus_value VARCHAR(32767);',
'    v_string_type CHAR(1);',
'',
'    C_ALPHA_CHARS CONSTANT NUMBER := 1;',
'    C_ALPHA_NUMERIC_CHARS CONSTANT NUMBER := 2;',
'    C_ALL_CHARS CONSTANT NUMBER := 3;',
'    C_INVALID_VALUE_LABEL VARCHAR2(20) := ''Inválido'';',
'    C_VALID_VALUE_LABEL VARCHAR2(20) := ''Válido'';',
'BEGIN',
'    CASE :P57_TIPO_CARACTERE',
'        WHEN C_ALPHA_CHARS THEN',
'            v_string_type := ''a'';',
'        WHEN C_ALPHA_NUMERIC_CHARS THEN',
'            v_string_type := ''x'';',
'        WHEN C_ALL_CHARS THEN',
'            v_string_type := ''p'';',
'    END CASE;',
'',
'    --OBS: Cannot be allowed P57_TAMANHO_COLUNA_BANCO < 2;',
'    IF :P57_TAMANHO_COLUNA_BANCO >= 2',
'    THEN',
'        v_min_value := DBMS_RANDOM.STRING(v_string_type, 1);',
'        v_min_plus_value := DBMS_RANDOM.STRING(v_string_type, 2);',
'        v_avg_value := DBMS_RANDOM.STRING(v_string_type, :P57_TAMANHO_COLUNA_BANCO/2);',
'        v_max_minus_value := DBMS_RANDOM.STRING(v_string_type, :P57_TAMANHO_COLUNA_BANCO - 1);',
'        v_max_value := DBMS_RANDOM.STRING(v_string_type, :P57_TAMANHO_COLUNA_BANCO);',
'',
'        IF :P57_TAMANHO_COLUNA_BANCO = 4000',
'        THEN',
'            v_max_plus_value := DBMS_RANDOM.STRING(v_string_type, :P57_TAMANHO_COLUNA_BANCO) || ''A'';',
'        ELSE',
'            v_max_plus_value := DBMS_RANDOM.STRING(v_string_type, :P57_TAMANHO_COLUNA_BANCO + 1);',
'        END IF;',
'',
'        sp_set_apex_collection_p57(p_value => v_min_value,',
'            p_size => LENGTH(v_min_value), p_reset_collection => 1,',
'            p_label_validity => C_VALID_VALUE_LABEL);',
'        sp_set_apex_collection_p57(p_value => v_min_plus_value,',
'            p_size => LENGTH(v_min_plus_value), p_label_validity => C_VALID_VALUE_LABEL);',
'        sp_set_apex_collection_p57(p_value => v_avg_value,',
'            p_size => LENGTH(v_avg_value), p_label_validity => C_VALID_VALUE_LABEL);',
'        sp_set_apex_collection_p57(p_value => v_max_minus_value,',
'            p_size => LENGTH(v_max_minus_value), p_label_validity => C_VALID_VALUE_LABEL);',
'        sp_set_apex_collection_p57(p_value => v_max_value,',
'            p_size => LENGTH(v_max_value), p_label_validity => C_VALID_VALUE_LABEL);',
'        sp_set_apex_collection_p57(p_value => v_max_plus_value,',
'            p_size => LENGTH(v_max_plus_value), p_label_validity => C_INVALID_VALUE_LABEL);',
'    ELSE',
'        DBMS_OUTPUT.PUT_LINE(''Tamanho invalido de coluna: '' || :P57_TAMANHO_COLUNA_BANCO);',
'    END IF;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(42709305190120905404)
,p_process_when=>'P57_COMPONENTE_SELECIONADO'
,p_process_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_process_when2=>'Text Field:Password:Text Area:Rich Text'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42709307819307905431)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P57_GERAR_CASO_TESTE_DATA'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'pkg_date_test_case.sp_gen_date_test_case(:P57_DATE_PICKER_FORMATO);',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(42709305190120905404)
,p_process_when=>'P57_COMPONENTE_SELECIONADO'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'Date Picker'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42709308621339905439)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P57_GERAR_CASO_TESTE_NUMERO'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE',
'    C_INVALID_VALUE_LABEL VARCHAR2(20) := ''Inválido'';',
'    C_VALID_VALUE_LABEL VARCHAR2(20) := ''Válido'';',
'',
'    v_left_digits NUMBER := :P57_NUMBER_FIELD_PRECISAO - :P57_NUMBER_FIELD_ESCALA;',
'    v_right_digits NUMBER := :P57_NUMBER_FIELD_ESCALA;',
'    v_max_value VARCHAR2(100);',
'    v_min_value VARCHAR2(100);',
'    v_avg_value VARCHAR2(5) := ''0'';',
'    v_min_minus_value VARCHAR2(100) := ''-1'';',
'    v_max_plus_value VARCHAR2(100) := ''1'';',
'    v_min_plus_value VARCHAR2(100) := ''-'';',
'    v_max_minus_value VARCHAR2(100);',
'BEGIN',
'    /*',
'    Number -> Precision: pX, Scale: sX;',
'        (pX - sX).(sX); A = (pX - sX); A.(sX)',
'',
'    (min) = -9[A].9[sX] - OK',
'    (max) = 9[A].9[sX] - OK',
'    (avg) = 0.0 - OK',
'    (min-) = -1 || (0[A]).0[sX] - OK',
'    (max+) = 1 || (0[A]).0[sX] - OK',
'    (min+) = -9[A].9[sX-1] || 8 - OK',
'    (max-) = 9[A].9[sX-1] || 8 - OK',
'    */',
'    --OBS: Cannot be allowed Precision < 2;',
'    FOR i IN 1..v_left_digits',
'    LOOP',
'        v_max_value := v_max_value || ''9'';',
'        v_min_minus_value := v_min_minus_value || ''0'';',
'        v_max_plus_value := v_max_plus_value || ''0'';',
'        v_min_plus_value := v_min_plus_value || ''9'';',
'        v_max_minus_value := v_max_minus_value || ''9'';',
'    END LOOP;',
'',
'    IF :P57_NUMBER_FIELD_ESCALA > 0',
'    THEN',
'        v_max_value := v_max_value || :P57_SEPARADOR_NUMERO;',
'        v_min_minus_value := v_min_minus_value || :P57_SEPARADOR_NUMERO;',
'        v_max_plus_value := v_max_plus_value || :P57_SEPARADOR_NUMERO;',
'        v_min_plus_value := v_min_plus_value || :P57_SEPARADOR_NUMERO;',
'        v_max_minus_value := v_max_minus_value || :P57_SEPARADOR_NUMERO;',
'        v_avg_value := v_avg_value || :P57_SEPARADOR_NUMERO || ''0'';',
'    END IF;',
'',
'    FOR i IN 1..v_right_digits',
'    LOOP',
'        v_max_value := v_max_value || ''9'';',
'        v_min_minus_value := v_min_minus_value || ''0'';',
'        v_max_plus_value := v_max_plus_value || ''0'';',
'',
'        IF i = v_right_digits',
'        THEN',
'            v_min_plus_value := v_min_plus_value || ''8'';',
'            v_max_minus_value := v_max_minus_value || ''8'';',
'        ELSE',
'            v_min_plus_value := v_min_plus_value || ''9'';',
'            v_max_minus_value := v_max_minus_value || ''9'';',
'        END IF;',
'    END LOOP;',
'',
'    v_min_value := ''-'' || v_max_value;',
'',
'    sp_set_apex_collection_p57(p_value => v_min_minus_value,',
'        p_label_validity => C_INVALID_VALUE_LABEL, p_reset_collection => 1);',
'    sp_set_apex_collection_p57(p_value => v_min_value,',
'        p_label_validity => C_VALID_VALUE_LABEL);',
'    sp_set_apex_collection_p57(p_value => v_min_plus_value,',
'        p_label_validity => C_VALID_VALUE_LABEL);',
'    sp_set_apex_collection_p57(p_value => v_avg_value,',
'        p_label_validity => C_VALID_VALUE_LABEL);',
'    sp_set_apex_collection_p57(p_value => v_max_minus_value,',
'        p_label_validity => C_VALID_VALUE_LABEL);',
'    sp_set_apex_collection_p57(p_value => v_max_value,',
'        p_label_validity => C_VALID_VALUE_LABEL);',
'    sp_set_apex_collection_p57(p_value => v_max_plus_value,',
'        p_label_validity => C_INVALID_VALUE_LABEL);',
'END;',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(42709305190120905404)
,p_process_when=>'P57_COMPONENTE_SELECIONADO'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'Number Field'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42709308826659905441)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P57_GERAR_CASO_TESTE_COR'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE',
'    C_INVALID_VALUE_LABEL VARCHAR2(20) := ''Inválido'';',
'    C_VALID_VALUE_LABEL VARCHAR2(20) := ''Válido'';',
'BEGIN',
'    sp_set_apex_collection_p57(p_value => ''#fffff'', ',
'        p_label_validity => C_INVALID_VALUE_LABEL, p_reset_collection => 1);',
'    sp_set_apex_collection_p57(p_value => ''#000000'', p_label_validity => C_VALID_VALUE_LABEL);',
'    sp_set_apex_collection_p57(p_value => ''#000001'', p_label_validity => C_VALID_VALUE_LABEL);',
'    sp_set_apex_collection_p57(p_value => ''#777777'', p_label_validity => C_VALID_VALUE_LABEL);',
'    sp_set_apex_collection_p57(p_value => ''#fffffe'', p_label_validity => C_VALID_VALUE_LABEL);',
'    sp_set_apex_collection_p57(p_value => ''#ffffff'', p_label_validity => C_VALID_VALUE_LABEL);',
'    sp_set_apex_collection_p57(p_value => ''#1000000'', p_label_validity => C_INVALID_VALUE_LABEL);',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(42709305190120905404)
,p_process_when=>'P57_COMPONENTE_SELECIONADO'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'Color Picker'
);
end;
/
prompt --application/pages/page_00058
begin
wwv_flow_api.create_page(
 p_id=>58
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Guia de Técnicas de Elicitação'
,p_page_mode=>'NORMAL'
,p_step_title=>'Guia de Técnicas de Elicitação'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_html_page_header=>'<link rel="stylesheet" href="#WORKSPACE_IMAGES#eud_estilos.css" type="text/css">'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FAGNER128@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20161017194631'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42711006598687381372)
,p_plug_name=>'<b>Guia de técnicas de elicitação (dinâmicas)</b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42711006807856381375)
,p_name=>'P58_INDICE_TITULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(42711006598687381372)
,p_source=>'Índice'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_tag_css_classes=>'display_only_titulo'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42711007231303381376)
,p_name=>'P58_INDICE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(42711006598687381372)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#P58_INTRODUCAO_DISPLAY">Introdução</a>',
'<a href="#P58_ENTREVISTA_DISPLAY">Entrevista</a>',
'<a href="#P58_QUESTIONARIO_DISPLAY">Questionário</a>',
'<a href="#P58_PROTOTIPACAO_DISPLAY">Prototipação</a>',
'<a href="#P58_JAD_DISPLAY">JAD</a>',
'<a href="#P58_BRAINSTORMING_DISPLAY">Brainstorming</a>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_tag_css_classes=>'display_only_indice'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42711007605804381377)
,p_name=>'P58_INTRODUCAO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(42711006598687381372)
,p_source=>'Introdução'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_tag_css_classes=>'display_only_titulo'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42711008066848381377)
,p_name=>'P58_INTRODUCAO_CONTEUDO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(42711006598687381372)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Em todo desenvolvimento de software, um aspecto fundamental &eacute; a captura dos requisitos dos usu&aacute;rios. Para apoiar este trabalho, diversas t&eacute;cnicas podem ser utilizadas.</p>',
'<p>Em um levantamento de requisitos, geralmente um engenheiro de software se depara com duas importantes quest&otilde;es:</p>',
'<ol>',
'<li>Entre os muitos relat&oacute;rios, formul&aacute;rios e documentos gerados pelos membros de uma organiza&ccedil;&atilde;o, quais dever&atilde;o ser objeto de investiga&ccedil;&atilde;o?</li>',
'<li>Pode haver um grande n&uacute;mero de pessoas afetadas pelo sistema de informa&ccedil;&atilde;o proposto. Quais delas devem ser entrevistadas, observadas ou questionadas?</li>',
'</ol>',
'<p>Servindo de base para todas as t&eacute;cnicas de levantamento de requisitos, est&atilde;o as decis&otilde;es cruciais dizendo respeito ao que examinar e quem questionar.</p>',
'<p>Baseado em um processo focado na sele&ccedil;&atilde;o da t&eacute;cnica de elicita&ccedil;&atilde;o de requisitos com a atribui&ccedil;&atilde;o de notas aos par&acirc;metros, &eacute; indicado uma t&eacute;cnica que melhor suporte o projeto para'
||' garantir que os requisitos relevantes para o sistema sejam elicitados de forma correta e completa. Tamb&eacute;m &eacute; importante informar que a elicita&ccedil;&atilde;o n&atilde;o se resume apenas &agrave; aplica&ccedil;&atilde;o de uma t&eacute'
||';cnica, mas tamb&eacute;m &agrave; colabora&ccedil;&atilde;o entre analistas e clientes.</p>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42711008479106381378)
,p_name=>'P58_ENTREVISTA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(42711006598687381372)
,p_source=>'Entrevista'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_tag_css_classes=>'display_only_titulo'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42711008849253381378)
,p_name=>'P58_ENTREVISTA_CONTEUDO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(42711006598687381372)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<strong>Antes da Entrevista</strong>',
'<ol>',
'<li>Estudar material existente sobre os entrevistados e suas organiza&ccedil;&otilde;es</li>',
'</ol>',
'Procure dar aten&ccedil;&atilde;o especial &agrave; linguagem usada pelos membros da organiza&ccedil;&atilde;o, procurando estabelecer um vocabul&aacute;rio comum a ser usado na elabora&ccedil;&atilde;o das quest&otilde;es da entrevista.',
'Isso para otimizar o tempo despendido nas entrevistas, evitando-se perguntar quest&otilde;es b&aacute;sicas e gerais.',
'<ol start="2">',
'<li>Estabelecer objetivos</li>',
'</ol>',
'H&aacute; algumas &aacute;reas sobre as quais se desejar&aacute; fazer perguntas relativas ao processamento de informa&ccedil;&atilde;o e ao comportamento na tomada de decis&atilde;o, tais como fontes de informa&ccedil;&atilde;o, formatos da informa&'
||'ccedil;&atilde;o, frequ&ecirc;ncia na tomada de decis&atilde;o, estilo da tomada de decis&atilde;o, etc.',
'<ol start="3">',
'<li>Decidir quem entrevistar</li>',
'</ol>',
'Incluir na lista de entrevistados pessoas-chave de todos os n&iacute;veis da organiza&ccedil;&atilde;o afetados pelo sistema. A pessoa de contato na organiza&ccedil;&atilde;o pode ajudar nesta sele&ccedil;&atilde;o. Quando necess&aacute;rio, use amos'
||'tragem.',
'<ol start="4">',
'<li>Preparar a entrevista</li>',
'</ol>',
'Uma entrevista deve ser marcada com anteced&ecirc;ncia e deve ter uma dura&ccedil;&atilde;o entre 45 minutos e uma hora, no m&aacute;ximo duas horas.',
'<ol start="5">',
'<li>Decidir sobre os tipos de quest&otilde;es e a estrutura da entrevista</li>',
'</ol>',
'&Eacute; o ponto principal de uma entrevista, saber elaborar as quest&otilde;es e a estrutura da entrevista.',
'<ol start="6">',
'<li>Decidir como registrar a entrevista</li>',
'</ol>',
'Registrar as informa&ccedil;&otilde;es obtidas para que n&atilde;o sejam perdidas logo em seguida. Os meios mais naturais de se registrar uma entrevista incluem anota&ccedil;&otilde;es e o uso de gravador.',
'<br /> <strong>Tipos de Quest&otilde;es</strong>',
'<p>Podem ser de tr&ecirc;s tipos b&aacute;sicos:</p>',
'&nbsp;',
'<p><strong>Quest&otilde;es subjetivas</strong></p>',
'<p>Permitem respostas &ldquo;abertas&rdquo;.</p>',
'<p>Exemplos: O que voc&ecirc; acha de...? Explique como voc&ecirc;...?</p>',
'<p>Vantagens:</p>',
'<ul>',
'<li>Proveem riqueza de detalhes.</li>',
'<li>Revelam novos questionamentos.</li>',
'<li>Colocam o entrevistado a vontade.</li>',
'<li>Permitem maior espontaneidade.</li>',
'</ul>',
'Desvantagens:',
'<ul>',
'<li>Podem resultar em muitos detalhes irrelevantes.</li>',
'<li>Perda do controle da entrevista.</li>',
'<li>Respostas muito longas para se obter pouca informa&ccedil;&atilde;o &uacute;til.</li>',
'<li>Podem dar a impress&atilde;o de que o entrevistador est&aacute; perdido, sem objetivo.</li>',
'</ul>',
'&nbsp;',
'<p><strong>Quest&otilde;es objetivas</strong></p>',
'<p>Limitam as respostas poss&iacute;veis.</p>',
'<p>Exemplos: Quantos...? Quem...? Quanto tempo...? Qual das seguintes informa&ccedil;&otilde;es...?</p>',
'<p>Vantagens:</p>',
'<ul>',
'<li>Ganho de tempo, uma vez que v&atilde;o direto ao ponto em quest&atilde;o.</li>',
'<li>Mant&ecirc;m o controle da entrevista.</li>',
'<li>Levam a dados relevantes.</li>',
'</ul>',
'Desvantagens:',
'<ul>',
'<li>Podem ser ma&ccedil;antes para o entrevistado.</li>',
'<li>Podem falhar na obten&ccedil;&atilde;o de detalhes importantes.</li>',
'<li>N&atilde;o constroem uma afinidade entre entrevistador e entrevistado.</li>',
'</ul>',
'<p><strong>Quest&otilde;es de aprofundamento</strong></p>',
'<p>Permitem explorar os detalhes de uma quest&atilde;o.</p>',
'<p>Podem ser subjetivas ou objetivas.</p>',
'<p>Exemplos: Por que? Voc&ecirc; poderia dar um exemplo?</p>',
'&nbsp;',
'<p>Quadro comparativo das quest&otilde;es subjetivas e objetivas</p>',
'<table border="1" width="643" cellspacing="0" cellpadding="1">',
'<tbody>',
'<tr>',
'<td width="214">',
'',
'</td>',
'<td width="214">',
'Subjetivas',
'</td>',
'<td width="214">',
'Objetivas',
'</td>',
'</tr>',
'<tr>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42711009214911381379)
,p_name=>'P58_QUESTIONARIO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(42711006598687381372)
,p_source=>'Questionário'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_tag_css_classes=>'display_only_titulo'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42711009602877381379)
,p_name=>'P58_QUESTIONARIO_CONTEUDO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(42711006598687381372)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>O uso de question&aacute;rios constitui uma t&eacute;cnica de levantamento de informa&ccedil;&otilde;es que permite ao engenheiro de software obter de v&aacute;rias pessoas afetadas pelo sistema (corrente ou proposto) informa&ccedil;&otilde;es, ta'
||'is como:</p>',
'<p>&nbsp;</p>',
'<ul>',
'<li>Posturas: o que as pessoas na organiza&ccedil;&atilde;o dizem querer;</li>',
'<li>Cren&ccedil;as: o que as pessoas pensam ser realmente verdade;</li>',
'<li>Comportamento: o que as pessoas fazem;</li>',
'<li>Caracter&iacute;sticas: propriedades de pessoas ou coisas.</li>',
'</ul>',
'<p>&nbsp;</p>',
'<p><strong>Etapas de um Question&aacute;rio</strong></p>',
'<p>&nbsp;</p>',
'<p><span style="text-decoration: underline;"><strong>Antes</strong></span></p>',
'<p><strong>Planejamento</strong></p>',
'<p>No planejamento de um question&aacute;rio, devem ser levados em considera&ccedil;&atilde;o aspectos relacionados com a reda&ccedil;&atilde;o das quest&otilde;es, escalas, formato e ordem das quest&otilde;es.</p>',
'<p>&nbsp;</p>',
'<p><strong>Reda&ccedil;&atilde;o das Quest&otilde;es</strong></p>',
'<p>Uma vez que question&aacute;rios e entrevistas seguem uma abordagem &ldquo;pergunta-resposta&rdquo;, seria bastante razo&aacute;vel pensar que a considera&ccedil;&otilde;es feitas para entrevistas aplicam-se tamb&eacute;m para question&aacute;rios'
||'. Contudo, &eacute; importante ressaltar que h&aacute; diferen&ccedil;as fundamentais entre estas t&eacute;cnicas e, portanto, novos aspectos devem ser considerados. Um question&aacute;rio deve: ter quest&otilde;es claras e n&atilde;o amb&iacute;guas'
||',ter fluxo bem definido, ter administra&ccedil;&atilde;o planejada em detalhes e levantar, antecipadamente, as d&uacute;vidas das pessoas que ir&atilde;o responde-lo.</p>',
'<p>&nbsp;</p>',
'<p><span style="text-decoration: underline;"><strong>Tipos de quest&otilde;es Quest&otilde;es</strong></span></p>',
'<p>&nbsp;</p>',
'<p><strong>Subjetivas</strong></p>',
'<p>Devem ser usadas para levantar opini&otilde;es sobre algum aspecto do sistema ou em situa&ccedil;&otilde;es explorat&oacute;rias Quando utilizadas, antecipe o tipo de resposta que voc&ecirc; espera obter. Estas quest&otilde;es devem ser restritas '
||'o suficiente para guiar as pessoas, de modo que respondam de uma maneira espec&iacute;fica. Tome cuidado com perguntas que permitam respostas muito amplas, pois isto pode dificultar a compara&ccedil;&atilde;o e a interpreta&ccedil;&atilde;o dos resul'
||'tados.</p>',
'<p>&nbsp;</p>',
'<p><strong>Quest&otilde;es Objetivas</strong></p>',
'<p>Quest&otilde;es objetivas devem ser utilizadas em um question&aacute;rio: quando o engenheiro de software &eacute; capaz de listar as poss&iacute;veis respostas ou para examinar uma grande amostra de pessoas.</p>',
'<p>Respostas a quest&otilde;es objetivas podem ser mais facilmente quantificadas. Respostas a quest&otilde;es subjetivas s&atilde;o analisadas e interpretadas de maneira diferente.</p>',
'<p>&nbsp;</p>',
'<p>Quadro quanto ao uso de quest&otilde;es subjetivas e objetivas em question&aacute;rios</p>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42711010072341381379)
,p_name=>'P58_PROTOTIPACAO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(42711006598687381372)
,p_source=>'Prototipação'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_tag_css_classes=>'display_only_titulo'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42711010441149381380)
,p_name=>'P58_PROTOTIPACAO_CONTEUDO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(42711006598687381372)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>A prototipa&ccedil;&atilde;o &eacute; uma t&eacute;cnica valiosa para se obter rapidamente informa&ccedil;&otilde;es espec&iacute;ficas sobre requisitos de informa&ccedil;&atilde;o do usu&aacute;rio. Tipicamente, a prototipa&ccedil;&atilde;o permi'
||'te obter:</p>',
'<ul>',
'<li>Rea&ccedil;&otilde;es iniciais do usu&aacute;rio: Como o usu&aacute;rio se sente em rela&ccedil;&atilde;o ao sistema em desenvolvimento? Rea&ccedil;&otilde;es ao prot&oacute;tipo podem ser obtidas atrav&eacute;s da observa&ccedil;&atilde;o, entre'
||'vistas, question&aacute;rio ou relat&oacute;rio de avalia&ccedil;&atilde;o.</li>',
'<li>Sugest&otilde;es do usu&aacute;rio para refinar ou alterar o prot&oacute;tipo: guiam o engenheiro de software na dire&ccedil;&atilde;o de melhor atender as necessidades dos usu&aacute;rios.</li>',
'<li>Inova&ccedil;&otilde;es: novas capacidades, n&atilde;o imaginadas antes da intera&ccedil;&atilde;o com o prot&oacute;tipo.</li>',
'<li>Informa&ccedil;&otilde;es para revis&atilde;o de planos: estabelecer prioridades e redirecionar planos.</li>',
'</ul>',
'<p>&nbsp;</p>',
'<p><span style="text-decoration: underline;"><strong>Tipos de Prot&oacute;tipos</strong></span></p>',
'<ul>',
'<li><strong>Prot&oacute;tipo n&atilde;o-operacional:</strong> apenas as interfaces de entrada e sa&iacute;da s&atilde;o implementadas; o processamento propriamente dito n&atilde;o. &Eacute; &uacute;til para avaliar certos aspectos do sistema quando a'
||' codifica&ccedil;&atilde;o requerida pela aplica&ccedil;&atilde;o &eacute; custosa e a no&ccedil;&atilde;o b&aacute;sica do que &eacute; o sistema pode ser transmitida pela an&aacute;lise de suas entradas e sa&iacute;das.</li>',
'<li><strong>Prot&oacute;tipo &ldquo;arranjado &agrave;s pressas&rdquo;:</strong> o prot&oacute;tipo possui toda a funcionalidade do sistema final, mas n&atilde;o foi constru&iacute;do com o devido cuidado e, portanto, sua qualidade e desempenho s&ati'
||'lde;o deficientes.</li>',
'<li><strong>Prot&oacute;tipo &ldquo;primeiro de uma s&eacute;rie&rdquo;:</strong> um sistema piloto &eacute; desenvolvido para ser avaliado antes de ser distribu&iacute;do. &Uacute;til quando o sistema ser&aacute; implantado em v&aacute;rios locais d'
||'iferentes.</li>',
'<li><strong>Prot&oacute;tipo de caracter&iacute;sticas selecionadas:</strong> apenas parte das caracter&iacute;sticas do sistema final s&atilde;o implementadas. O sistema vai sendo constru&iacute;do em partes: cada prot&oacute;tipo aprovado passa a s'
||'er um m&oacute;dulo do sistema.</li>',
'</ul>',
'<p>&nbsp;</p>',
'<p><span style="text-decoration: underline;"><strong>Diretrizes para o Desenvolvimento de um Prot&oacute;tipo</strong></span></p>',
'<p>&nbsp;</p>',
'<ol>',
'<li>Trabalhe com m&oacute;dulos gerenci&aacute;veis: n&atilde;o &eacute; necess&aacute;rio e, muitas vezes, nem desej&aacute;vel, construir um sistema completo.</li>',
'<li>Construa o prot&oacute;tipo rapidamente: use ferramentas adequadas.</li>',
'<li>Modifique o prot&oacute;tipo em itera&ccedil;&otilde;es sucessivas: o prot&oacute;tipo deve ser alterado em dire&ccedil;&atilde;o &agrave;s necessidades do usu&aacute;rio. Cada modifica&ccedil;&atilde;o requer uma nova avalia&ccedil;&atilde;o.</l'
||'i>',
'<li>Enfatize a interface com o usu&aacute;rio: as interfaces do prot&oacute;tipo devem permitir que o usu&aacute;rio interaja facilmente com o sistema. Um m&iacute;nimo de treinamento deve ser requerido. Sistemas interativos com interfaces gr&aacute;'
||'ficas s&atilde;o muito indicados &agrave; prototipa&ccedil;&atilde;o.</li>',
'</ol>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42711010869320381381)
,p_name=>'P58_JAD'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(42711006598687381372)
,p_source=>'JAD'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_tag_css_classes=>'display_only_titulo'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42711011231945381382)
,p_name=>'P58_JAD_CONTEUDO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(42711006598687381372)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Refinam brainstorming para englobar abordagens mais estruturadas em que o mediador &eacute; um profissional altamente experiente e bem treinado.</p>',
'<p>L&iacute;der da sess&atilde;o: &eacute; apoiado por outras pessoas que se dedicam a apoiar o processo global.</p>',
'<p>&nbsp;</p>',
'<p>Defini&ccedil;&otilde;es:</p>',
'<p>&nbsp;</p>',
'<p><strong>Executivo patrocinador:</strong> pessoa com cargo de n&iacute;vel mais alto comprometido com JAD, patrocina o processo do in&iacute;cio ao fim.</p>',
'<ul>',
'<li>Fornece diretrizes sobre os objetivos e metas de um projeto.</li>',
'<li>Define expectativas claras para sa&iacute;da do processo JAD.</li>',
'<li>Realiza breve palestra; n&atilde;o participa de atividades das sess&otilde;es detalhadas, pode ser chamado para esclarecer quest&otilde;es administrativas cr&iacute;ticas.</li>',
'</ul>',
'<p>&nbsp;</p>',
'<p><strong>Gerentes funcionais e usu&aacute;rios finais:</strong> peritos em sess&otilde;es JAD detalhadas. Tem a capacidade de descrever porque precisam do sistema.</p>',
'<p>&nbsp;</p>',
'<p><strong>Representantes do SI:</strong> poucas pessoas convidadas a participar das sess&otilde;es. Tem conhecimentos t&eacute;cnicos das aplica&ccedil;&otilde;es atuais do neg&oacute;cio pelo ponto de vista dos sistemas (de 1 a 4)</p>',
'<p>&nbsp;</p>',
'<p><strong>L&iacute;der de sess&atilde;o JAD:</strong> cora&ccedil;&atilde;o do processo JAD. Seu papel &eacute; conduzir as entrevistas preparat&oacute;rias antes da sess&atilde;o JAD real com o executivo patrocinador e com gerentes funcionais para '
||'a defini&ccedil;&atilde;o do escopo b&aacute;sico do processo.</p>',
'<p>&nbsp;</p>',
'<p><strong>Escribas: </strong>registrar oficialmente todas as informa&ccedil;&otilde;es pertinentes ao sistema estudado. Descreve os comportamentos do sistema, controla quest&otilde;es de neg&oacute;cio levantadas pelos usu&aacute;rios durante a sess'
||'&atilde;o de din&acirc;mica de grupo. Uso de ferramentas automatizadas para capturar os requisitos e exibir de volta para os usu&aacute;rios as telas, relat&oacute;rios, etc..</p>',
'<p>&nbsp;</p>',
'<p><strong>Processo JAD:</strong></p>',
'<p>&nbsp;</p>',
'<p>&Eacute; composto por quatro etapas:</p>',
'<p>&nbsp;</p>',
'<ol>',
'<li><strong>Orienta&ccedil;&atilde;o inicial</strong></li>',
'</ol>',
'<p>&nbsp;</p>',
'<p>Defini&ccedil;&atilde;o global do projeto documentando os seguintes itens:</p>',
'<ul>',
'<li>finalidade do projeto;</li>',
'<li>escopo do projeto e &aacute;reas funcionais envolvidas;</li>',
'<li>objetivos que devem ser alcan&ccedil;ados no final do workshop;</li>',
'<li>suposi&ccedil;&otilde;es t&eacute;cnicas e de neg&oacute;cio que afetam o projeto;</li>',
'<li>objetivos do workshop;</li>',
'<li>fatores cr&iacute;ticos de sucesso;</li>',
'</ul>',
'<p>&nbsp;</p>',
'<p>A obten&ccedil;&atilde;o das informa&ccedil;&otilde;es: o l&iacute;der as obt&eacute;m com o executivo patrocinador, gerentes funcionais e de sistemas ligados ao projeto antes do workshop</p>',
'<p>&nbsp;</p>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42711011667280381382)
,p_name=>'P58_BRAINSTORMING'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(42711006598687381372)
,p_source=>'Brainstorming'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_tag_css_classes=>'display_only_titulo'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42711012046926381383)
,p_name=>'P58_BRAINSTORMING_CONTEUDO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(42711006598687381372)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Termo do Ingl&ecirc;s que significa &ldquo;tempestade de ideias&rdquo;.</p>',
'<p>Importante observar e aplicar que n&atilde;o h&aacute; julgamentos ou autocr&iacute;ticas. Todas as ideias devem ser aceitas, mesmo que pare&ccedil;am absurdas.</p>',
'<p>O resultado da t&eacute;cnica tem o seu m&eacute;rito distribu&iacute;do porque foi obtido usando as ideias de todo o grupo envolvido.</p>',
'<p>&nbsp;</p>',
'<p>A t&eacute;cnica prop&otilde;e que o grupo se re&uacute;na e utilize a diversidade de pensamentos e experi&ecirc;ncias para gerar solu&ccedil;&otilde;es inovadoras, sugerindo qualquer pensamento ou ideia que vier &agrave; mente a respeito do tema '
||'tratado. Com isso, espera-se reunir o maior n&uacute;mero poss&iacute;vel de ideias, vis&otilde;es, propostas e possibilidades que levem a um denominador comum e eficaz para solucionar problemas e entraves que impedem um projeto de seguir adiante.</p'
||'>',
'<p>&nbsp;</p>',
'<p><strong>Princ&iacute;pios e Regras</strong></p>',
'<p>&nbsp;</p>',
'<p><span style="text-decoration: underline;"><strong>Princ&iacute;pios</strong></span></p>',
'<p>&nbsp;</p>',
'<p>Os dois princ&iacute;pios s&atilde;o:</p>',
'<ul>',
'<li>Atraso do julgamento</li>',
'<li>Criatividade em quantidade e qualidade</li>',
'</ul>',
'<p>A maioria das m&aacute;s ideias s&atilde;o inicialmente boas ideias. Atrasando ou adiando o julgamento, &eacute; dada a hip&oacute;tese de se gerarem muitas ideias antes de se decidir por uma.</p>',
'<p>Embora, a maioria da educa&ccedil;&atilde;o nos ensine apenas a usar o julgamento. N&oacute;s apressamos o julgamento. Quando praticamos o atraso do julgamento, permitimo-nos usar a nossa mente criativa para gerar ideias sem as julgar. Primeiro, n'
||'&atilde;o parece natural, mas depois tem as suas recompensas.</p>',
'<p>Quando geramos ideias, &eacute; necess&aacute;rio ignorar as considera&ccedil;&otilde;es &agrave; import&acirc;ncia da ideia, &agrave; sua usabilidade, &agrave; sua praticabilidade. Neste patamar, todas as ideias s&atilde;o iguais. &Eacute; necess'
||'&aacute;rio atrasar o julgamento enquanto ainda n&atilde;o se terminou a gera&ccedil;&atilde;o das ideias.</p>',
'<p>O segundo princ&iacute;pio &eacute; relativo &agrave; quantidade e qualidade da criatividade. Quanto mais ideias forem geradas, ser&aacute; mais prov&aacute;vel encontrar uma boa ideia. A t&eacute;cnica de brainstorming obt&eacute;m vantagem de as'
||'socia&ccedil;&otilde;es que se desenvolvem quando se consideram muitas ideias. Uma ideia pode levar a uma outra. Ideias m&aacute;s podem levar a boas ideias.</p>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42788287611776497638)
,p_name=>'P58_ENTREVISTA_CONTEUDO_2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(42711006598687381372)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td width="214">',
'Confiabilidade de dados',
'</td>',
'<td width="214">',
'Baixa',
'</td>',
'<td width="214">',
'Alta',
'</td>',
'</tr>',
'<tr>',
'<td width="214">',
'Uso eficiente do tempo',
'</td>',
'<td width="214">',
'Baixo',
'</td>',
'<td width="214">',
'Alto',
'</td>',
'</tr>',
'<tr>',
'<td width="214">',
'Precis&atilde;o dos dados',
'</td>',
'<td width="214">',
'Baixa',
'</td>',
'<td width="214">',
'Alta',
'</td>',
'</tr>',
'<tr>',
'<td width="214">',
'Amplitude e profundidade',
'</td>',
'<td width="214">',
'Alta',
'</td>',
'<td width="214">',
'Baixa',
'</td>',
'</tr>',
'<tr>',
'<td width="214">',
'Habilidade requerida do entrvistador',
'</td>',
'<td width="214">',
'Alta',
'</td>',
'<td width="214">',
'Baixa',
'</td>',
'</tr>',
'<tr>',
'<td width="214">',
'Facilidade de an&aacute;lise',
'</td>',
'<td width="214">',
'Baixa',
'</td>',
'<td width="214">',
'Alta',
'</td>',
'</tr>',
'</tbody>',
'</table>',
'&nbsp;',
'<p><strong>Problemas na Elabora&ccedil;&atilde;o de Quest&otilde;es</strong></p>',
'<p>Quest&otilde;es capciosas:</p>',
'<p>Tendem a levar o entrevistado a responder de uma forma espec&iacute;fica, isto &eacute;, s&atilde;o tendenciosas.</p>',
'<p>Exemplo: Sobre este assunto, voc&ecirc; est&aacute; de acordo com os outros diretores, n&atilde;o est&aacute;?</p>',
'<p>Mais adequada: O que voc&ecirc; pensa sobre este assunto?</p>',
'&nbsp;',
'<p>Duas quest&otilde;es em uma:</p>',
'<p>O entrevistado pode responder a apenas uma delas, ou pode se confundir em rela&ccedil;&atilde;o &agrave; pergunta que est&aacute; respondendo.</p>',
'<p>Exemplo: O que voc&ecirc; faz nesta situa&ccedil;&atilde;o e como?</p>',
'&nbsp;',
'<p><strong>Estrutura das Entrevistas</strong></p>',
'&nbsp;',
'<p>H&aacute; quatro formas b&aacute;sicas de se estabelecer a sequ&ecirc;ncia de quest&otilde;es:</p>',
'&nbsp;',
'<ul>',
'<li><strong>Estrutura de Pir&acirc;mide</strong></li>',
'</ul>',
'&Eacute; uma abordagem Indutiva, inicia com quest&otilde;es bastante detalhadas, geralmente objetivas, e, &agrave; medida que a entrevista progride, quest&otilde;es mais gerais, subjetivas, s&atilde;o colocadas. &Uacute;til para situa&ccedil;&otilde;'
||'es onde o entrevistado parece relutante em abordar um assunto determinado ou se o engenheiro de software deseja obter uma finaliza&ccedil;&atilde;o sobre o assunto.',
'<ul>',
'<li><strong>Estrutura de Funil</strong></li>',
'</ul>',
'&Eacute; uma abordagem dedutiva, inicia com quest&otilde;es gerais subjetivas e, &agrave; medida que a entrevista avan&ccedil;a, perguntas mais espec&iacute;ficas, usando quest&otilde;es objetivas, s&atilde;o feitas. Esta estrutura prov&ecirc; um mei'
||'o f&aacute;cil e n&atilde;o amea&ccedil;ador para se come&ccedil;ar uma bateria de entrevistas. Permite levantar bastante informa&ccedil;&atilde;o detalhada, sendo desnecess&aacute;rias longas sequ&ecirc;ncias de quest&otilde;es objetivas e de aprofu'
||'ndamento.',
'<ul>',
'<li><strong>Estrutura de Diamante</strong></li>',
'</ul>',
'Combina&ccedil;&atilde;o das duas anteriores: come&ccedil;a com quest&otilde;es espec&iacute;ficas, passa a quest&otilde;es gerais e fecha a entrevista novamente com quest&otilde;es espec&iacute;ficas. Frequentemente, &eacute; a melhor forma de se es'
||'truturar uma entrevista, j&aacute; que mant&eacute;m o interesse do entrevistado em uma variedade de quest&otilde;es. Contudo, tende a ser mais longa.',
'<ul>',
'<li><strong>Entrevista N&atilde;o Estruturada</strong></li>',
'</ul>',
'N&atilde;o h&aacute; uma defini&ccedil;&atilde;o da sequ&ecirc;ncia das quest&otilde;es. De acordo com o andar da entrevista, caminhos poss&iacute;veis s&atilde;o avaliados e a sequ&ecirc;ncia &eacute; estabelecida. Requer mais tempo. Vale ressaltar '
||'que, ainda que a sequ&ecirc;ncia das quest&otilde;es n&atilde;o seja definida a priori, as quest&otilde;es devem ser definidas antecipadamente, ou seja, o planejamento &eacute; necess&aacute;rio.'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42789051017790988183)
,p_name=>'P58_ENTREVISTA_CONTEUDO_3'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(42711006598687381372)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>&nbsp;</p>',
'<p><strong>Durante a Entrevista</strong></p>',
'<p>&nbsp;</p>',
'<p><span style="text-decoration: underline;">Como registrar a entrevista</span></p>',
'<p>&nbsp;</p>',
'<p><strong>Gravador:</strong></p>',
'<p>Requer a permiss&atilde;o do entrevistado.</p>',
'',
'<p>Vantagens:</p>',
'<ul>',
'<li>Registro completo da entrevista.</li>',
'<li>Rapidez e melhor desenvolvimento.</li>',
'<li>Reprodu&ccedil;&atilde;o para outros membros da equipe.</li>',
'</ul>',
'<p>Desvantagens:</p>',
'<ul>',
'<li>Pode deixar o entrevistado pouco a vontade.</li>',
'<li>Pode deixar o entrevistador distra&iacute;do.</li>',
'<li>H&aacute; necessidade de transcrever a grava&ccedil;&atilde;o.</li>',
'</ul>',
'<p>&nbsp;</p>',
'<p><strong>Anota&ccedil;&otilde;es </strong></p>',
'<p>Vantagens:</p>',
'<ul>',
'<li>Mant&eacute;m o entrevistador alerta.</li>',
'<li>Pode ser usado para fornecer um roteiro para a entrevista.</li>',
'<li>Mostra interesse e prepara&ccedil;&atilde;o do entrevistador.</li>',
'</ul>',
'<p>Desvantagens:</p>',
'<ul>',
'<li>Perda do andamento da conversa.</li>',
'<li>Excessiva aten&ccedil;&atilde;o a fatos e pouca a sentimentos e opini&otilde;es.</li>',
'</ul>',
'<p>&nbsp;</p>',
'<p><span style="text-decoration: underline;">Como conduzir uma entrevista</span></p>',
'<p>&nbsp;</p>',
'<p>Um dia antes, entre em contato com o entrevistado para confirmar o hor&aacute;rio e o local da entrevista.</p>',
'<p>&nbsp;</p>',
'<ul>',
'<li>Chegue um pouco antes do hor&aacute;rio marcado.</li>',
'<li>Apresente-se e esboce brevemente os objetivos da entrevista.</li>',
'<li>Relembre o entrevistado de que voc&ecirc; estar&aacute; registrando pontos importantes. Se for usar gravador, coloque-o em local vis&iacute;vel.</li>',
'<li>Diga ao entrevistado o que ser&aacute; feito com as informa&ccedil;&otilde;es coletadas e re-assegure seu aspecto confidencial.</li>',
'<li>A entrevista deve durar entre 45 minutos e uma hora.</li>',
'<li>Quando estiver incerto sobre uma quest&atilde;o, pe&ccedil;a para o entrevistado dar defini&ccedil;&otilde;es ou outros esclarecimentos. Use quest&otilde;es de aprofundamento.</li>',
'<li>Ao t&eacute;rmino da entrevista, pergunte se h&aacute; algo mais sobre o assunto que o entrevistado ache importante voc&ecirc; saber.</li>',
'<li>Fa&ccedil;a um resumo da entrevista e d&ecirc; suas impress&otilde;es globais.</li>',
'<li>Informe o entrevistado sobre os passos seguintes.</li>',
'<li>Pergunte se h&aacute; outra pessoa com a qual voc&ecirc; deveria conversar.</li>',
'<li>Quando for o caso, marque nova entrevista.</li>',
'</ul>',
'<p>&nbsp;</p>',
'<p><strong>Ap&oacute;s a Entrevista</strong></p>',
'<p>&nbsp;</p>',
'<p>O relat&oacute;rio da entrevista deve capturar a ess&ecirc;ncia da entrevista. Assim, escreva o relat&oacute;rio t&atilde;o r&aacute;pido quanto poss&iacute;vel para assegurar qualidade.</p>',
'<p>Registre entrevistado, entrevistador, data, assunto e objetivos. </p>',
'<p>Diga se os objetivos foram alcan&ccedil;ados e aponte objetivos para entrevistas futuras. ',
'<p>Registre, ainda, os pontos principais da entrevista e sua opini&atilde;o.</p>',
'<p>Remeta-o ao(s) entrevistado(s) para autenticar as informa&ccedil;&otilde;es.</p>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
end;
/
begin
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42807725277177105016)
,p_name=>'P58_QUESTIONARIO_CONTEUDO_2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(42711006598687381372)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>&nbsp;</p>',
'<table border="1" width="643" cellspacing="0" cellpadding="1">',
'<tbody>',
'<tr>',
'<td width="214">',
'<p>&nbsp;</p>',
'</td>',
'<td width="214">',
'<p>Quest&otilde;es Subjetivas</p>',
'</td>',
'<td width="214">',
'<p>Quest&otilde;es Objetivas</p>',
'</td>',
'</tr>',
'<tr>',
'<td width="214">',
'<p>Tempo para responder</p>',
'</td>',
'<td width="214">',
'<p>Alto</p>',
'</td>',
'<td width="214">',
'<p>Baixo</p>',
'</td>',
'</tr>',
'<tr>',
'<td width="214">',
'<p>Natureza explorat&oacute;ria</p>',
'</td>',
'<td width="214">',
'<p>Alta</p>',
'</td>',
'<td width="214">',
'<p>Baixa</p>',
'</td>',
'</tr>',
'<tr>',
'<td width="214">',
'<p>Amplitude e profundidade</p>',
'</td>',
'<td width="214">',
'<p>Alta</p>',
'</td>',
'<td width="214">',
'<p>Baixa</p>',
'</td>',
'</tr>',
'<tr>',
'<td width="214">',
'<p>Facilidade de prepara&ccedil;&atilde;o</p>',
'</td>',
'<td width="214">',
'<p>Alta</p>',
'</td>',
'<td width="214">',
'<p>Baixa</p>',
'</td>',
'</tr>',
'<tr>',
'<td width="214">',
'<p>Facilidade de an&aacute;lise</p>',
'</td>',
'<td width="214">',
'<p>Baixa</p>',
'</td>',
'<td width="214">',
'<p>Alta</p>',
'</td>',
'</tr>',
'</tbody>',
'</table>',
'<p>&nbsp;</p>',
'<p><strong>Diretrizes: </strong></p>',
'<p><span style="text-decoration: underline;"><strong>Linguagem Utilizada</strong></span></p>',
'<p>&nbsp;</p>',
'<p>Sempre que poss&iacute;vel, use o vocabul&aacute;rio das pessoas que ir&atilde;o responder. Prime pela simplicidade.</p>',
'<p>&nbsp;</p>',
'<p>Utilize perguntas simples e curtas.</p>',
'<p>Evite reda&ccedil;&atilde;o tendenciosa.</p>',
'<p>Garanta que as quest&otilde;es est&atilde;o tecnicamente precisas antes de inclui-las no question&aacute;rio.</p>',
'<p>Para verificar a linguagem utilizada, aplique o question&aacute;rio antecipadamente em um grupo piloto, pedindo aten&ccedil;&atilde;o &agrave; adequabilidade dos termos empregados.</p>',
'<p>&nbsp;</p>',
'<p><span style="text-decoration: underline;"><strong>Projeto do Question&aacute;rio</strong></span></p>',
'<p>&nbsp;</p>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42807789067989120309)
,p_name=>'P58_QUESTIONARIO_CONTEUDO_3'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(42711006598687381372)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p><strong>Estilo</strong></p>',
'<ul>',
'<li>Deixe amplos espa&ccedil;os em branco para atrair as pessoas.</li>',
'<li>Deixe espa&ccedil;o suficiente para as respostas das quest&otilde;es subjetivas.</li>',
'<li>Em quest&otilde;es com escala, pe&ccedil;a para fazer um c&iacute;rculo na resposta.</li>',
'<li>Use os objetivos do question&aacute;rio para ajudar a determinar o formato (inclusive instru&ccedil;&otilde;es).</li>',
'<li>Seja consistente no estilo. Coloque instru&ccedil;&otilde;es sempre no mesmo local em rela&ccedil;&atilde;o ao layout do question&aacute;rio, para facilitar a localiza&ccedil;&atilde;o das instru&ccedil;&otilde;es. Use letras mai&uacute;sculas e '
||'min&uacute;sculas nas perguntas e apenas letras mai&uacute;sculas nas respostas</li>',
'</ul>',
'<p>&nbsp;</p>',
'<p><strong>Ordem das Quest&otilde;es</strong></p>',
'<p>&nbsp;</p>',
'<p>Para ordenar as quest&otilde;es, considere os objetivos e, ent&atilde;o, determine a fun&ccedil;&atilde;o de cada quest&atilde;o para atingir esses objetivos. Use um grupo piloto para auxiliar ou observe o question&aacute;rio com olhos de responde'
||'dor. Algumas orienta&ccedil;&otilde;es devem ser seguidas:</p>',
'<ul>',
'<li>As primeiras quest&otilde;es devem ser de interesse dos respondedores.</li>',
'<li>Agrupe itens de conte&uacute;do similar e observe tend&ecirc;ncias de associa&ccedil;&atilde;o.</li>',
'<li>Coloque os itens de menor controv&eacute;rsia primeiro.</li>',
'</ul>',
'<p>&nbsp;</p>',
'<p><span style="text-decoration: underline;"><strong>Durante</strong></span></p>',
'<p>&nbsp;</p>',
'<p>Quem deve responder o question&aacute;rio? A decis&atilde;o de quem deve responder o question&aacute;rio &eacute; feita em conjunto com o estabelecimento dos seus objetivos. Quando houver muitas pessoas aptas a responder o question&aacute;rio, use'
||' amostragem.</p>',
'<p>&nbsp;</p>',
'<p><strong>M&eacute;todos de Aplica&ccedil;&atilde;o</strong></p>',
'<p>&nbsp;</p>',
'<ol>',
'<li>Reunir todos os respondedores em um mesmo local para a aplica&ccedil;&atilde;o do question&aacute;rio.</li>',
'</ol>',
'<p>Vantagens:</p>',
'<ul>',
'<li>100% de retorno.</li>',
'<li>Instru&ccedil;&otilde;es uniformes.</li>',
'<li>Resultado r&aacute;pido.</li>',
'</ul>',
'<p>Problemas:</p>',
'<ul>',
'<li>Pode ser dif&iacute;cil reunir todas as pessoas.</li>',
'<li>O respondedor pode ter coisas importantes a fazer.</li>',
'</ul>',
'<ol start="2">',
'<li>Analista entrega e recolhe cada question&aacute;rio individualmente</li>',
'</ol>',
'<p>Vantagens:</p>',
'<ul>',
'<li>Boa taxa de resposta.</li>',
'</ul>',
'<p>Problemas:</p>',
'<ul>',
'<li>Desperd&iacute;cio do tempo do analista.</li>',
'<li>O respondedor pode ser identificado.</li>',
'</ul>',
'<ol start="3">',
'<li>Respondedor administra o question&aacute;rio.</li>',
'</ol>',
'<p>Vantagens:</p>',
'<ul>',
'<li>Anonimato garantido.</li>',
'<li>Respostas mais reais.</li>',
'</ul>',
'<p>Problemas:</p>',
'<ul>',
'<li>Taxa menor de respostas. Este problema pode ser minimizado, mantendo-se uma lista de respondedores e controlando a devolu&ccedil;&atilde;o.</li>',
'</ul>',
'<ol start="4">',
'<li>Por correspond&ecirc;ncia.</li>',
'</ol>',
'<p>&Uacute;til somente para alcan&ccedil;ar pessoas distribu&iacute;das geograficamente.</p>',
'<p>&nbsp;</p>',
'<p><span style="text-decoration: underline;"><strong>Ap&oacute;s</strong></span></p>',
'<p>&nbsp;</p>',
'<p>Como ocorre com a entrevista, o desenvolvedor deve elaborar um relat&oacute;rio contendo todas as informa&ccedil;&otilde;es conseguidas e enviar ao solicitante do sistema para a valida&ccedil;&atilde;o das informa&ccedil;&otilde;es.</p>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43055778195743660934)
,p_name=>'P58_PROTOTIPACAO_CONTEUDO_2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(42711006598687381372)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>&nbsp;</p>',
'<p><span style="text-decoration: underline;"><strong>Problemas da Prototipa&ccedil;&atilde;o</strong></span></p>',
'<p>&nbsp;</p>',
'<ul>',
'<li>Ger&ecirc;ncia do projeto: Normalmente, v&aacute;rias itera&ccedil;&otilde;es s&atilde;o necess&aacute;rias para se refinar um prot&oacute;tipo. Sob esta &oacute;tica, surge uma importante quest&atilde;o: quando parar? Se esta quest&atilde;o n&at'
||'ilde;o for tratada com cuidado, a prototipa&ccedil;&atilde;o pode se estender indefinidamente. &Eacute; importante, pois, delinear e seguir um plano para coletar, analisar e interpretar as informa&ccedil;&otilde;es de realimenta&ccedil;&atilde;o do u'
||'su&aacute;rio.</li>',
'<li>Considerar o prot&oacute;tipo como sendo o sistema final: a qualidade pode n&atilde;o ter sido apropriadamente considerada.</li>',
'</ul>',
'<p>&nbsp;</p>',
'<p><span style="text-decoration: underline;"><strong>Vantagens da Prototipa&ccedil;&atilde;o</strong></span></p>',
'<p>&nbsp;</p>',
'<ul>',
'<li>Permite alterar o sistema mais cedo no desenvolvimento, adequando-o mais de perto &agrave;s necessidades do usu&aacute;rio (menor custo de uma altera&ccedil;&atilde;o).</li>',
'<li>Permite descartar um sistema quando este se mostrar inadequado (prot&oacute;tipo de viabilidade).</li>',
'</ul>',
'<p>Possibilidade de desenvolver um sistema que atenda mais de perto as necessidades e expectativas dos usu&aacute;rios. Permite uma intera&ccedil;&atilde;o com o usu&aacute;rio ao longo de todo o ciclo de vida do desenvolvimento.</p>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43067740491810398922)
,p_name=>'P58_JAD_CONTEUDO_2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(42711006598687381372)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ol start="2">',
'<li><strong>Familiariza&ccedil;&atilde;o com a &aacute;rea/aplica&ccedil;&atilde;o</strong></li>',
'</ol>',
'<p>&nbsp;</p>',
'<p>An&aacute;lise de procedimentos atuais do neg&oacute;cio e identifica&ccedil;&atilde;o do fluxo geral de trabalho de documentos no local do trabalho. A documenta&ccedil;&atilde;o &eacute; feita da seguinte forma, pois ajudam o l&iacute;der a enten'
||'der melhor a aplica&ccedil;&atilde;o, &aacute;reas relacionadas e conflitos de aderia, em potencial. Auxiliam o l&iacute;der para conduzir melhor as discuss&otilde;es em grupo durante o workshop.</p>',
'<ul>',
'<li>finalidade da tarefa;</li>',
'<li>dados de entrada;</li>',
'<li>dados de sa&iacute;da;</li>',
'<li>descri&ccedil;&atilde;o do processo feito;</li>',
'<li>problemas/oportunidades;</li>',
'</ul>',
'<p><strong>&nbsp;</strong></p>',
'<ol start="3">',
'<li><strong>Prepara&ccedil;&atilde;o do material para o workshop</strong></li>',
'</ol>',
'<p>O analista de sistema (pode ser o l&iacute;der JAD) constr&oacute;i um modelo elementar do sistema, esbo&ccedil;o de telas e relat&oacute;rios que ser&atilde;o revisados durante o workshop. Esses relat&oacute;rios s&atilde;o ve&iacute;culos para s'
||'imular as ideias.</p>',
'<p><strong>&nbsp;</strong></p>',
'<ol start="4">',
'<li><strong>Conduzir o workshop</strong></li>',
'</ol>',
'<p>Tempo m&eacute;dio gasto: 3 a 5 dias</p>',
'<p>1&ordm; dia: Explicar a finalidade do projeto.</p>',
'<p>2&ordm; dia: Descrever os compromissos de todos os participantes com apoio da administra&ccedil;&atilde;o.</p>',
'<p>3&ordm; dia: Dar as informa&ccedil;&otilde;es gerais relacionadas ao escopo, objetivo.</p>',
'<p>4&ordm; dia: Revisar o material detalhado e consolidado antes da reuni&atilde;o -&gt; abordagem estruturada, passo a passo.</p>',
'<p>5&ordm; dia: Conforme o workshop progride, os secret&aacute;rios transcrevem as decis&otilde;es para tel&otilde;es, permitindo r&aacute;pidas revis&otilde;es do trabalho realizado at&eacute; o momento.</p>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43073007847880239554)
,p_name=>'P58_BRAINSTORMING_CONTEUDO_2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(42711006598687381372)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>&nbsp;</p>',
'<p><span style="text-decoration: underline;"><strong>Regras</strong></span></p>',
'<p>&nbsp;</p>',
'<p>As quatro principais regras do brainstorming s&atilde;o:</p>',
'<ul>',
'<li><strong>Cr&iacute;ticas s&atilde;o rejeitadas:</strong> Esta &eacute; provavelmente a regra mais importante. A n&atilde;o ser que a avalia&ccedil;&atilde;o seja evitada, o princ&iacute;pio do julgamento n&atilde;o pode operar. A falha do grupo ao'
||' cumprir esta regra &eacute; a raz&atilde;o mais cr&iacute;tica para que a sess&atilde;o de brainstorming n&atilde;o resulte. Esta regra &eacute; aquela que primariamente diferencia um brainstorming cl&aacute;ssico dos m&eacute;todos de confer&ecirc;'
||'ncia tradicionais.</li>',
'<li><strong>Criatividade &eacute; bem-vinda:</strong> Esta regra &eacute; utilizada para encorajar os participantes a sugerir qualquer ideia que lhe venha &agrave; mente, sem preconceitos e sem medo que isso o v&aacute; avaliar imediatamente. As idei'
||'as mais desej&aacute;veis s&atilde;o aquelas que inicialmente parecem ser sem dom&iacute;nio e muito longe do que poder&aacute; ser uma solu&ccedil;&atilde;o. &Eacute; necess&aacute;rio deixar as inibi&ccedil;&otilde;es para tr&aacute;s enquanto se g'
||'eram ideias. Quando se segue esta regra, cria-se automaticamente um clima de brainstorming apropriado. Isso aumenta tamb&eacute;m o n&uacute;mero de ideias geradas.</li>',
'<li><strong>Quantidade &eacute; necess&aacute;ria:</strong> Quanto mais ideias forem geradas, mais hip&oacute;teses h&aacute; de se encontrar uma boa ideia. Quantidade gera qualidade.</li>',
'<li><strong>Combina&ccedil;&atilde;o e aperfei&ccedil;oamento s&atilde;o necess&aacute;rios:</strong> O objetivo desta regra &eacute; encorajar a gera&ccedil;&atilde;o de ideias adicionais para a constru&ccedil;&atilde;o e reconstru&ccedil;&atilde;o '
||'sobre as ideias dos outros.</li>',
'</ul>',
'<p>&nbsp;</p>',
'<p><strong>Composi&ccedil;&atilde;o</strong></p>',
'<p>&nbsp;</p>',
'<p>S&atilde;o normalmente constitu&iacute;dos por 3 elementos:</p>',
'<ul>',
'<li>O l&iacute;der</li>',
'<li>Membros</li>',
'<li>Secret&aacute;rio ou assessor</li>',
'</ul>',
'<p>Devem ser escolhidas pessoas que tenham alguma experi&ecirc;ncia com o problema em causa. &Eacute; necess&aacute;rio n&atilde;o misturar os chefes com os trabalhadores. Devem escolher-se pessoas que estejam no mesmo patamar da hierarquia na organi'
||'za&ccedil;&atilde;o. A maioria das pessoas n&atilde;o se consegue libertar nem ser suficientemente criativo diante do seu chefe.</p>',
'<p>O l&iacute;der de grupo deve ser familiar com o processo de brainstorming e ter facilidade em manter-se relaxado, e numa atmosfera descontra&iacute;da.</p>',
'<p>O secret&aacute;rio ou assessor deve ter facilidade na escrita r&aacute;pida. Este vai ter que tomar nota de uma numerosa lista de ideias que v&atilde;o ser geradas. As ideias n&atilde;o t&ecirc;m, necessariamente, de ser escritas exatamente da me'
||'sma forma que s&atilde;o ditas. O nome da pessoa que sugere as ideias n&atilde;o deve ser anotado, j&aacute; que o anonimato encoraja a liberdade de express&atilde;o.</p>',
'<p>Como em todas as t&eacute;cnicas criativas, o problema deve ser descrito em termos espec&iacute;ficos para que ideias espec&iacute;ficas possam ser geradas. Generalidades, mesmo as mais brilhantes, s&atilde;o raramente as solu&ccedil;&otilde;es ma'
||'is criativas.</p>',
'<p>&nbsp;</p>',
'<p><strong>Execu&ccedil;&atilde;o</strong></p>',
'<p>&nbsp;</p>',
'<ul>',
'<li>Proponha um tema ou assunto e pe&ccedil;a aos participantes que expressem todas as ideias que lhes veem &agrave; mente;</li>',
'<li>Nenhuma ideia deve ser criticada ou descartada;</li>',
'<li>Todas as ideias devem ser escritas e expostas de modo que todos possam v&ecirc;-las, de prefer&ecirc;ncia em um mural. O objetivo &eacute; estimular novas ideias;</li>',
'<li>As ideias expostas devem ser analisadas e, em seguida, as mais adequadas &agrave; situa&ccedil;&atilde;o devem ser escolhidas;</li>',
'<li>Selecionar a(s) melhor(es) ideia(s).</li>',
'</ul>',
'<p>&nbsp;</p>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
end;
/
prompt --application/pages/page_00059
begin
wwv_flow_api.create_page(
 p_id=>59
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Resultados dos Casos de Teste'
,p_page_mode=>'NORMAL'
,p_step_title=>'Resultados dos Casos de Teste'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_upd_yyyymmddhh24miss=>'20161019110849'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(42709305990762905412)
,p_name=>'Resultados da Geração de Casos de Teste'
,p_template=>wwv_flow_api.id(39024444156989847625)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT c001 AS "Valor Válido?", n001 AS "Tamanho", clob001 AS "Valor"',
'FROM APEX_COLLECTIONS',
'WHERE collection_name = ''APEX_COLLE_P57''',
'ORDER BY n001'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(39024452959156847639)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(42709307953231905432)
,p_query_column_id=>1
,p_column_alias=>'Valor Válido?'
,p_column_display_sequence=>1
,p_column_heading=>'Valor válido?'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(42709308051860905433)
,p_query_column_id=>2
,p_column_alias=>'Tamanho'
,p_column_display_sequence=>2
,p_column_heading=>'Tamanho'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_display_when_condition=>'P57_COMPONENTE_SELECIONADO'
,p_display_when_condition2=>'Text Field:Password:Text Area:Rich Text'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(42709308159648905434)
,p_query_column_id=>3
,p_column_alias=>'Valor'
,p_column_display_sequence=>3
,p_column_heading=>'Valor'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42709306656077905419)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(42709305990762905412)
,p_button_name=>'P59_VOLTAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Voltar'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.:RP::'
);
end;
/
prompt --application/pages/page_00060
begin
wwv_flow_api.create_page(
 p_id=>60
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Guia de Prototipagem Rápida'
,p_page_mode=>'NORMAL'
,p_step_title=>'Guia de Prototipagem Rápida'
,p_step_sub_title=>'Guia de prototipagem rápida'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_html_page_header=>'<link rel="stylesheet" href="#WORKSPACE_IMAGES#eud_estilos.css" type="text/css">'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_upd_yyyymmddhh24miss=>'20161207213801'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43525356464550757135)
,p_plug_name=>'<b> Guia de prototipagem rápida</b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43525356861779757138)
,p_name=>'P60_INDICE_TITULO'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(43525356464550757135)
,p_source=>'Índice'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only_titulo'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43525357217282757140)
,p_name=>'P60_INDICE'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(43525356464550757135)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#P60_OBJETIVO_TITULO_DISPLAY">Objetivo</a>',
'<a href="#P60_BANCO_DE_DADOS_DESKTOP_APPLICATION_DISPLAY">Database Desktop Application</a>',
'<a href="#P60_PAGINA_DISPLAY">Página de Protótipo</a>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_tag_css_classes=>'display_only_indice'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43525357690987757141)
,p_name=>'P60_OBJETIVO_TITULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(43525356464550757135)
,p_source=>'Objetivo'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only_titulo'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43525358005066757142)
,p_name=>'P60_OBJETIVO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(43525356464550757135)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'No desenvolvimento de uma aplicação provavelmente pode haver a necessidade de realizar uma prototipação, que consiste em desenvolver rapidamente um protótipo do sistema para posteriormente validar com o cliente.',
'',
'Para tanto é possível, no apex, realizar uma prototipagem rápida e já com algumas funcionalidades para validação com o cliente onde será demonstrado a seguir'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43525358477740757143)
,p_name=>'P60_BANCO_DE_DADOS_DESKTOP_APPLICATION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(43525356464550757135)
,p_source=>'Database Desktop Application'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_tag_css_classes=>'display_only_titulo'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43525358894297757143)
,p_name=>'P60_BANCO_DE_DADOS_DESKTOP_APPLICATION_CONTEUDO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(43525356464550757135)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>&nbsp;</p>',
'<div class="df-fragment df-cktext-default">No<strong>&nbsp;APEX,</strong> &nbsp;voc&ecirc; pode criar uma aplica&ccedil;&atilde;o em conformidade com um dos tr&ecirc;s tipos:</div>',
'<div class="df-fragment df-cktext-default">',
'<ol>',
'<li>Desktop Application</li>',
'<li>Websheet Aplica&ccedil;&atilde;o</li>',
'<li>mobile Application</li>',
'</ol>',
'</div>',
'<p>Para criar uma nova<strong>&nbsp;database desktop application</strong>, v&aacute; na op&ccedil;&atilde;o <strong>Database Applications</strong> conforme a seguir:</p>',
'<p>&nbsp;</p>',
'<img style="display:inline" src="#WORKSPACE_IMAGES#create_aplication_1.png"/>',
'<p>Clique no botão para criar uma nova aplicação:</p>',
'<img style="display:inline" src="#WORKSPACE_IMAGES#create_aplication_2.png"/>',
'<p>Digite o nome da aplicação:</p>',
'<img style="display:inline" src="#WORKSPACE_IMAGES#create_aplication_3.png"/>',
'<p>Por padr&atilde;o, Home page &eacute; criada simultaneamente com a aplica&ccedil;&atilde;o. Voc&ecirc; pode adicionar outras p&aacute;ginas dentro da aplica&ccedil;&atilde;o, clicando &nbsp;em<strong>&nbsp;"Adicionar P&aacute;gina"</strong> . &Eac'
||'ute; recomendado&nbsp;adicion&aacute;-las mais tarde.</p>',
'<img style="display:inline" src="#WORKSPACE_IMAGES#create_aplication_4.png"/>',
'<img style="display:inline" src="#WORKSPACE_IMAGES#create_aplication_5.png"/>',
'<img style="display:inline" src="#WORKSPACE_IMAGES#create_aplication_6.png"/>',
'<img style="display:inline" src="#WORKSPACE_IMAGES#create_aplication_7.png"/>',
'<p>Sua aplica&ccedil;&atilde;o foi criada. Neste exemplo seu&nbsp;ID &eacute; 115 e ele tem duas p&aacute;ginas&nbsp;<strong>Login e Home</strong>.</p>',
'<img style="display:inline" src="#WORKSPACE_IMAGES#create_aplication_8.png"/>',
'<p>Inicialmente, a p&aacute;gina inicial n&atilde;o foi desenvolvida. No entanto, voc&ecirc; pode clicar no &iacute;cone play da coluna <strong>RUN</strong> para verificar a aplica&ccedil;&atilde;o rodando:</p>',
'<img style="display:inline" src="#WORKSPACE_IMAGES#create_aplication_9.png"/>',
'<img style="display:inline" src="#WORKSPACE_IMAGES#create_aplication_10.png"/>',
'<p>&nbsp;</p>',
'<p>&nbsp;</p>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_item_comment=>'#WORKSPACE_IMAGES#create_aplication_1.png'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43525359212389757144)
,p_name=>'P60_PAGINA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(43525356464550757135)
,p_source=>'Página de Protótipo'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_tag_css_classes=>'display_only_titulo'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43525359628942757144)
,p_name=>'P60_PAGINA_CONTEUDO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(43525356464550757135)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Agora, adicione uma p&aacute;gina que ser&aacute; no prot&oacute;tipo inicial exibindo uma lista, como exemplo, uma lista de departamentos (DEPT Table) e uma p&aacute;gina usada para criar e editar as informa&ccedil;&otilde;es de departamentos. Pa'
||'ra ser simples, criamos esta p&aacute;gina na forma de um modelo dispon&iacute;vel no<strong>&nbsp;APEX</strong>.</p>',
'<img style="display:inline" src="#WORKSPACE_IMAGES#create_page_1.png"/>',
'<img style="display:inline" src="#WORKSPACE_IMAGES#create_page_2.png"/>',
'<p>Selecione a op&ccedil;&atilde;o&nbsp;<strong>"Form on a Table with Report"</strong>. Para este modelo, o<strong>&nbsp;APEX</strong> &nbsp;ir&aacute; fornecer duas p&aacute;ginas, uma que inclui uma p&aacute;gina com a lista de departamentos (DEPT)'
||' e um form de criar e editar informa&ccedil;&otilde;es de departamentos.</p>',
'<img style="display:inline" src="#WORKSPACE_IMAGES#create_page_3.png"/>',
'<p>Em primeiro lugar, o<strong>&nbsp;APEX</strong> &nbsp;exige que voc&ecirc; insira as informa&ccedil;&otilde;es para a p&aacute;gina que cont&eacute;m a lista dos servi&ccedil;os (DEPT). O&nbsp;ID da p&aacute;gina &eacute; um atributo importante qu'
||'e voc&ecirc; tem que lembrar. Informado&nbsp;2 ao ID desta p&aacute;gina que &eacute; o n&uacute;mero da p&aacute;gina a ser trabalhada. (Nota: O C&oacute;digo de In&iacute;cio da p&aacute;gina &eacute; 1 por padr&atilde;o).</p>',
'<img style="display:inline" src="#WORKSPACE_IMAGES#create_page_4.png"/>',
'<p>Selecione a tabela, nesse exemplo foi selecionado a tabela DEPT:</p>',
'<img style="display:inline" src="#WORKSPACE_IMAGES#create_page_5.png"/>',
'<p>Selecioa a op&ccedil;&atilde;o <strong>create a new navigation menu entry</strong>&nbsp;e no campo&nbsp;<strong>New Navigation Menu Entry:</strong> informe o nome do novo menu de navega&ccedil;&atilde;o:</p>',
'<img style="display:inline" src="#WORKSPACE_IMAGES#create_page_6.png"/>',
'<p>Escolha as colunas que ser&atilde;o&nbsp;exibidas:</p>',
'<img style="display:inline" src="#WORKSPACE_IMAGES#create_page_7.png"/>',
'<img style="display:inline" src="#WORKSPACE_IMAGES#create_page_8.png"/>',
'<p>Em seguida, insira as informa&ccedil;&otilde;es da p&aacute;gina do formul&aacute;rio. Aqui foi inclu&iacute;do o ID&nbsp;3 para&nbsp;p&aacute;gina.</p>',
'<p><strong>Modo de p&aacute;gina</strong> :</p>',
'<ul>',
'<li><strong>Normal</strong> : Significa que quando voc&ecirc; clica sobre a cria&ccedil;&atilde;o de um novo departamento, a web ir&aacute; se mover para uma nova p&aacute;gina para que voc&ecirc; possa digitar as informa&ccedil;&otilde;es do departa'
||'mento.</li>',
'<li><strong>Modal de dialog</strong>&nbsp;: Significa que quando voc&ecirc; clica sobre a cria&ccedil;&atilde;o de um novo departamento, uma caixa de di&aacute;logo ser&aacute; exibida para que voc&ecirc; possa inserir as informa&ccedil;&otilde;es.</'
||'li>',
'</ul>',
'<img style="display:inline" src="#WORKSPACE_IMAGES#create_page_9.png"/>',
'<p>Escolha a coluna de chave prim&aacute;ria:</p>',
'<img style="display:inline" src="#WORKSPACE_IMAGES#create_page_10.png"/>',
'<p>Quando voc&ecirc; cria um novo departamento (DEPT), a coluna DEPTNO&nbsp;far&aacute;&nbsp;automaticamente a inclus&atilde;o para um valor da sequ&ecirc;ncia DEPT_SEQ.</p>',
'<img style="display:inline" src="#WORKSPACE_IMAGES#create_page_11.png"/>',
'<img style="display:inline" src="#WORKSPACE_IMAGES#create_page_12.png"/>',
'<img style="display:inline" src="#WORKSPACE_IMAGES#create_page_13.png"/>',
'<img style="display:inline" src="#WORKSPACE_IMAGES#create_page_14.png"/>',
'<p>Assim, duas p&aacute;ginas foram criadas. Enfim, temos um prot&oacute;tipo que poder&aacute; ser executado para a verifica&ccedil;&atilde;o:</p>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43525360072421757144)
,p_name=>'P60_PAGINA_CONTEUDO_2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(43525356464550757135)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<img style="display:inline" src="#WORKSPACE_IMAGES#create_page_15.png"/>',
'<img style="display:inline" src="#WORKSPACE_IMAGES#create_page_16.png"/>',
'<img style="display:inline" src="#WORKSPACE_IMAGES#create_page_17.png"/>',
'<img style="display:inline" src="#WORKSPACE_IMAGES#create_page_18.png"/>',
'<img style="display:inline" src="#WORKSPACE_IMAGES#create_page_19.png"/>',
'<p>OK, tudo est&aacute; perfeito. Basta agora retornar &agrave; tela de design para verificar&nbsp;o que o&nbsp;<strong>APEX</strong>&nbsp;criou.</p>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
end;
/
prompt --application/pages/page_00061
begin
wwv_flow_api.create_page(
 p_id=>61
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Cadastro de Erros Conhecidos'
,p_page_mode=>'NORMAL'
,p_step_title=>'Cadastro de Erros Conhecidos'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_html_page_header=>'<link rel="stylesheet" href="#WORKSPACE_IMAGES#eud_estilos.css" type="text/css">'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_upd_yyyymmddhh24miss=>'20161207213840'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42709309011126905443)
,p_plug_name=>'Cadastrar Erro'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42709309798596905450)
,p_button_sequence=>121
,p_button_plug_id=>wwv_flow_api.id(42709309011126905443)
,p_button_name=>'P61_VISUALIZAR_IMAGEM_TELA'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Visualizar Imagem Anexada'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.:RP::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>4
,p_grid_column=>3
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(45034372823392810717)
,p_button_sequence=>171
,p_button_plug_id=>wwv_flow_api.id(42709309011126905443)
,p_button_name=>'P61_CANCELAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:62:&SESSION.::&DEBUG.:RP,61::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>1
,p_grid_column=>8
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(45034372477953810713)
,p_button_sequence=>181
,p_button_plug_id=>wwv_flow_api.id(42709309011126905443)
,p_button_name=>'P61_CADASTRAR'
,p_button_static_id=>'P61_CADASTRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Cadastrar'
,p_button_position=>'BODY'
,p_button_condition=>'P61_COD_ERRO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(45034372760482810716)
,p_button_sequence=>182
,p_button_plug_id=>wwv_flow_api.id(42709309011126905443)
,p_button_name=>'P61_ATUALIZAR'
,p_button_static_id=>'P61_ATUALIZAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Atualizar'
,p_button_position=>'BODY'
,p_button_condition=>'P61_COD_ERRO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>10
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(45197563223749108706)
,p_branch_name=>'P61_VOLTAR_LISTA_ERROS'
,p_branch_action=>'f?p=&APP_ID.:62:&SESSION.::&DEBUG.:RP,61::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42709309189757905444)
,p_name=>'P61_NOME_ERRO'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(42709309011126905443)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nome: '
,p_source=>'NOME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>150
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42709309237144905445)
,p_name=>'P61_TIPO_ERRO'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(42709309011126905443)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tipo de Erro: '
,p_source=>'TB_SAE_TIPO_ERRO_COD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT nome, cod',
'FROM tb_sae_tipo_erro'))
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42709309330794905446)
,p_name=>'P61_DESCRICAO'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(42709309011126905443)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Descrição: '
,p_source=>'DESCRICAO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>56
,p_cMaxlength=>300
,p_cHeight=>3
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42709309450358905447)
,p_name=>'P61_CAUSA'
,p_item_sequence=>61
,p_item_plug_id=>wwv_flow_api.id(42709309011126905443)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Causa: '
,p_source=>'CAUSA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>56
,p_cMaxlength=>1200
,p_cHeight=>3
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42709309571846905448)
,p_name=>'P61_ANEXAR_TELA'
,p_item_sequence=>91
,p_item_plug_id=>wwv_flow_api.id(42709309011126905443)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Anexar Imagem de Tela: '
,p_source=>'ANEXO_TELA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_06=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45034371380464810702)
,p_name=>'P61_SOLUCAO'
,p_item_sequence=>141
,p_item_plug_id=>wwv_flow_api.id(42709309011126905443)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Solução:'
,p_source=>'SOLUCAO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>56
,p_cMaxlength=>300
,p_cHeight=>3
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45034371491061810703)
,p_name=>'P61_VERSAO_APEX'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(42709309011126905443)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Versão APEX: '
,p_source=>'VERSAO_APEX'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_grid_column=>7
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45034371571655810704)
,p_name=>'P61_WORKSPACE_APP'
,p_item_sequence=>21
,p_item_plug_id=>wwv_flow_api.id(42709309011126905443)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Espaço de Trabalho Aplicação:'
,p_source=>'WORKSPACE_APP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT UPPER(workspace) AS display, UPPER(workspace) AS return',
'FROM apex_workspaces',
'ORDER by UPPER(workspace)'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45034371618418810705)
,p_name=>'P61_ID_APP'
,p_item_sequence=>31
,p_item_plug_id=>wwv_flow_api.id(42709309011126905443)
,p_use_cache_before_default=>'NO'
,p_prompt=>'ID Aplicação:'
,p_source=>'ID_APP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT application_id || '' - '' || application_name AS display, application_id AS return',
'FROM apex_applications',
'WHERE UPPER(workspace) =  :P61_WORKSPACE_APP'))
,p_lov_cascade_parent_items=>'P61_WORKSPACE_APP'
,p_ajax_items_to_submit=>'P61_ID_APP'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45034371737321810706)
,p_name=>'P61_VERSAO_APP'
,p_item_sequence=>51
,p_item_plug_id=>wwv_flow_api.id(42709309011126905443)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Versão Aplicação: '
,p_source=>'VERSAO_APP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT version, version',
'FROM apex_applications',
'WHERE application_id = :P61_ID_APP'))
,p_lov_cascade_parent_items=>'P61_ID_APP'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45034371885267810707)
,p_name=>'P61_STATUS_ERRO_APP'
,p_item_sequence=>71
,p_item_plug_id=>wwv_flow_api.id(42709309011126905443)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status:'
,p_source=>'STATUS_ERRO_APP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Aberto;A,Concluído;C'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45034371913247810708)
,p_name=>'P61_CADASTRADO_POR'
,p_item_sequence=>81
,p_item_plug_id=>wwv_flow_api.id(42709309011126905443)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_USER'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Cadastrado por: '
,p_source=>'CADASTRADO_POR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45034372064568810709)
,p_name=>'P61_CADASTRADO_EM'
,p_item_sequence=>101
,p_item_plug_id=>wwv_flow_api.id(42709309011126905443)
,p_use_cache_before_default=>'NO'
,p_item_default=>'TO_CHAR(SYSDATE, ''dd/mm/yyyy - hh24:mi'');'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Cadastrado em:'
,p_source=>'CADASTRADO_EM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45034372143073810710)
,p_name=>'P61_ATUALIZADO_POR'
,p_item_sequence=>131
,p_item_plug_id=>wwv_flow_api.id(42709309011126905443)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Atualizado por:'
,p_source=>'ATUALIZADO_POR'
,p_source_type=>'DB_COLUMN'
,p_source_post_computation=>':APP_USER'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_display_when=>'P61_COD_ERRO'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45034372231617810711)
,p_name=>'P61_ATUALIZADO_EM'
,p_item_sequence=>151
,p_item_plug_id=>wwv_flow_api.id(42709309011126905443)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Atualizado em:'
,p_source=>'ATUALIZADO_EM'
,p_source_type=>'DB_COLUMN'
,p_source_post_computation=>'SYSDATE'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_display_when=>'P61_COD_ERRO'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45034372910077810718)
,p_name=>'P61_COD_ERRO'
,p_item_sequence=>201
,p_item_plug_id=>wwv_flow_api.id(42709309011126905443)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45034385825635810747)
,p_name=>'P61_TAM_ANEXO_INVALIDO'
,p_item_sequence=>211
,p_item_plug_id=>wwv_flow_api.id(42709309011126905443)
,p_source=>'1'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45080424745603047101)
,p_name=>'P61_MSG_ANEXO_INVALIDO'
,p_item_sequence=>111
,p_item_plug_id=>wwv_flow_api.id(42709309011126905443)
,p_use_cache_before_default=>'NO'
,p_source=>'Informe um arquivo de até 1 MB com formato PNG ou JPEG.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only_aviso'
,p_grid_column=>3
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(45034374011369810729)
,p_validation_name=>'P61_VERSAO_APEX_NAO_NULO'
,p_validation_sequence=>10
,p_validation=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'IF :P61_VERSAO_APEX IS NULL',
'THEN',
'    RETURN FALSE;',
'ELSE',
'    RETURN TRUE;',
'END IF;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'O campo Versão APEX não pode ficar em branco.'
,p_always_execute=>'N'
,p_validation_condition=>'P61_TIPO_ERRO'
,p_validation_condition2=>'1'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(45034374907086810738)
,p_validation_name=>'P61_WORKSPACE_APP_NAO_NULO'
,p_validation_sequence=>20
,p_validation=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'IF :P61_WORKSPACE_APP IS NULL',
'THEN',
'    RETURN FALSE;',
'ELSE',
'    RETURN TRUE;',
'END IF;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'O campo Espaço de Trabalho Aplicação não pode ficar em branco.'
,p_always_execute=>'N'
,p_validation_condition=>'P61_TIPO_ERRO'
,p_validation_condition2=>'2'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(45034385036795810739)
,p_validation_name=>'P61_ID_APP_NAO_NULO'
,p_validation_sequence=>30
,p_validation=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'IF :P61_ID_APP IS NULL',
'THEN',
'    RETURN FALSE;',
'ELSE',
'    RETURN TRUE;',
'END IF;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'O campo ID Aplicação não pode ficar em branco.'
,p_always_execute=>'N'
,p_validation_condition=>'P61_TIPO_ERRO'
,p_validation_condition2=>'2'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(45034385170522810740)
,p_validation_name=>'P61_STATUS_ERRO_APP_NAO_NULO'
,p_validation_sequence=>40
,p_validation=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'IF :P61_STATUS_ERRO_APP IS NULL',
'THEN',
'    RETURN FALSE;',
'ELSE',
'    RETURN TRUE;',
'END IF;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'O campo Status não pode ficar em branco.'
,p_always_execute=>'N'
,p_validation_condition=>'P61_TIPO_ERRO'
,p_validation_condition2=>'2'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(45034385995815810748)
,p_validation_name=>'P61_TAM_ANEXO_INVALIDO'
,p_validation_sequence=>50
,p_validation=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM dual',
'WHERE :P61_TAM_ANEXO_INVALIDO IS NULL'))
,p_validation_type=>'EXISTS'
,p_error_message=>'O Anexo de Tela deve ser uma imagem PNG ou JPEG de até 1 MB de tamanho.'
,p_always_execute=>'N'
,p_validation_condition=>'P61_ANEXAR_TELA'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(45034373003030810719)
,p_name=>'P61_ESCOLHA_TIPO_ERRO_APEX'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P61_TIPO_ERRO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45034373733339810726)
,p_event_id=>wwv_flow_api.id(45034373003030810719)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_VERSAO_APEX'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45034373127405810720)
,p_event_id=>wwv_flow_api.id(45034373003030810719)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_VERSAO_APEX'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(45034374679757810735)
,p_name=>'P61_ESCOLHA_TIPO_ERRO_APP'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P61_TIPO_ERRO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45034374752759810736)
,p_event_id=>wwv_flow_api.id(45034374679757810735)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_WORKSPACE_APP,P61_ID_APP,P61_VERSAO_APP,P61_STATUS_ERRO_APP'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45034374879471810737)
,p_event_id=>wwv_flow_api.id(45034374679757810735)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_WORKSPACE_APP,P61_ID_APP,P61_VERSAO_APP,P61_STATUS_ERRO_APP'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(45034373851545810727)
,p_name=>'P61_ESCONDER_ITENS_ERRO_APEX'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM dual',
'WHERE ',
'(',
'    :P61_COD_ERRO IS NULL ',
'    AND (:P61_TIPO_ERRO != 1 OR :P61_TIPO_ERRO IS NULL)',
')',
'OR (:P61_COD_ERRO IS NOT NULL AND :P61_TIPO_ERRO = 2)'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45034373937066810728)
,p_event_id=>wwv_flow_api.id(45034373851545810727)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_VERSAO_APEX'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(45034385627508810745)
,p_name=>'P61_ESCONDER_ITENS_ERRO_APP'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM dual',
'WHERE ',
'(',
'    :P61_COD_ERRO IS NULL ',
'    AND (:P61_TIPO_ERRO != 2 OR :P61_TIPO_ERRO IS NULL)',
')',
'OR (:P61_COD_ERRO IS NOT NULL AND :P61_TIPO_ERRO = 1)',
''))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45034385792476810746)
,p_event_id=>wwv_flow_api.id(45034385627508810745)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_WORKSPACE_APP,P61_ID_APP,P61_VERSAO_APP,P61_STATUS_ERRO_APP'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(45080424878964047102)
,p_name=>'P61_ESCONDER_MSG_ANEX_INVALIDO'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM dual',
'WHERE :P61_ANEXAR_TELA IS NULL',
'OR (',
'        :P61_ANEXAR_TELA IS NOT NULL',
'        AND :P61_TAM_ANEXO_INVALIDO IS NULL',
'    )'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45080424920223047103)
,p_event_id=>wwv_flow_api.id(45080424878964047102)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_MSG_ANEXO_INVALIDO'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(45080425032091047104)
,p_name=>'P61_AO_MUDAR_VALOR_ANEXAR_TELA'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P61_ANEXAR_TELA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45080425146582047105)
,p_event_id=>wwv_flow_api.id(45080425032091047104)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var fileSize = document.getElementById("P61_ANEXAR_TELA").files[0].size;',
'var fileType = document.getElementById("P61_ANEXAR_TELA").files[0].type;',
'var kb = 1024;',
'var codValue = document.getElementById("P61_COD_ERRO").value;',
'var btnToHide;',
'',
'if(codValue == "") {',
'    btnToHide = document.getElementById("P61_CADASTRAR");',
'} else {',
'    btnToHide = document.getElementById("P61_ATUALIZAR");',
'}',
'',
'if(fileSize > 1024 * kb || (fileType != "image/png" && fileType != "image/jpeg")) {',
'    $s("P61_TAM_ANEXO_INVALIDO", "1");',
'    $x_disableItem(btnToHide, true);',
'    $x_Show("P61_MSG_ANEXO_INVALIDO");',
'} else {',
'    $x_disableItem(btnToHide, false);',
'    $s("P61_TAM_ANEXO_INVALIDO", "");',
'    $x_Hide("P61_MSG_ANEXO_INVALIDO");',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(45080425273679047106)
,p_name=>'P61_SUBMETER_CADASTRAR'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(45034372477953810713)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45080425397951047107)
,p_event_id=>wwv_flow_api.id(45080425273679047106)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'P61_CADASTRAR'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45080425430054047108)
,p_event_id=>wwv_flow_api.id(45080425273679047106)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(45034372477953810713)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45080425566801047109)
,p_event_id=>wwv_flow_api.id(45080425273679047106)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(45034372823392810717)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(45197562879115108702)
,p_name=>'P61_SUBMETER_ATUALIZAR'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(45034372760482810716)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45197562987695108703)
,p_event_id=>wwv_flow_api.id(45197562879115108702)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'P61_ATUALIZAR'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45197563001513108704)
,p_event_id=>wwv_flow_api.id(45197562879115108702)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(45034372760482810716)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45197563191955108705)
,p_event_id=>wwv_flow_api.id(45197562879115108702)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(45034372823392810717)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45197566975181108743)
,p_event_id=>wwv_flow_api.id(45197562879115108702)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(42709309798596905450)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(45197563320846108707)
,p_name=>'P61_ESCONDER_VISUALIZAR_ANEXO_TELA'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NOT_EXISTS'
,p_display_when_cond=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM tb_sae_erro',
'WHERE LENGTH(anexo_tela) > 0',
'AND cod = :P61_COD_ERRO'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45197563417202108708)
,p_event_id=>wwv_flow_api.id(45197563320846108707)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(42709309798596905450)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(45197566720989108741)
,p_name=>'P61_ESCONDER_TIPO_ERRO'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P61_COD_ERRO'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45197566891674108742)
,p_event_id=>wwv_flow_api.id(45197566720989108741)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_TIPO_ERRO'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(45197562749018108701)
,p_process_sequence=>10
,p_process_point=>'AFTER_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P61_REVERTER_NLS_FORMATO_DATA_1'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE',
'    -- This code returns NLS_DATE_FORMAT to default value of DataBase.',
'    v_default_nls_date_format VARCHAR2(100);',
'    C_COLLECTION_NAME CONSTANT VARCHAR2(100) := ''EUD_APPLICATION'';',
'BEGIN',
'    SELECT c001',
'    INTO v_default_nls_date_format',
'    FROM apex_collections',
'    WHERE collection_name = C_COLLECTION_NAME;',
'',
'    EXECUTE IMMEDIATE REPLACE(''ALTER SESSION SET nls_date_format=''''<p>'''''', ''<p>'',',
'        v_default_nls_date_format);',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(45080426255958047116)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P61_ALTERAR_NLS_FORMATO_DATA'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE',
'    -- This code makes the backup of the NLS_DATE_FORMAT to APEX_COLLECTION and',
'    -- alter the NLS_DATE_FORMAT to ''dd/mm/yyyy - hh24:mi''',
'    v_default_nls_date_format VARCHAR2(100);',
'    C_COLLECTION_NAME CONSTANT VARCHAR2(100) := ''EUD_APPLICATION'';',
'BEGIN',
'    SELECT value',
'    INTO v_default_nls_date_format',
'    FROM   nls_session_parameters',
'    WHERE  parameter = ''NLS_DATE_FORMAT'';',
'',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(C_COLLECTION_NAME);',
'    APEX_COLLECTION.ADD_MEMBER(C_COLLECTION_NAME, v_default_nls_date_format);',
'',
'    EXECUTE IMMEDIATE ''ALTER SESSION SET nls_date_format=''''dd/mm/yyyy - hh24:mi'''''' ;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(45080426800761047122)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'P61_CONFIG_SESSAO_ERRO_APEX'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P61_WORKSPACE_APP,P61_ID_APP,P61_VERSAO_APP,P61_STATUS_ERRO_APP'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(45034372477953810713)
,p_process_when=>'P61_TIPO_ERRO'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'1'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(45080426902147047123)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'P61_CONFIG_SESSAO_ERRO_APP'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P61_VERSAO_APEX'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(45034372477953810713)
,p_process_when=>'P61_TIPO_ERRO'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'2'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(45080426015879047114)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'P61_PROCESSAR_REGISTRO_ERRO'
,p_attribute_02=>'TB_SAE_ERRO'
,p_attribute_03=>'P61_COD_ERRO'
,p_attribute_04=>'COD'
,p_attribute_11=>'I:U:D'
,p_process_error_message=>'Houve uma falha ao processar o registro.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Registro processado com sucesso.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(45080426384145047117)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P61_REVERTER_NLS_FORMATO_DATA'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE',
'    -- This code returns NLS_DATE_FORMAT to default value of DataBase.',
'    v_default_nls_date_format VARCHAR2(100);',
'    C_COLLECTION_NAME CONSTANT VARCHAR2(100) := ''EUD_APPLICATION'';',
'BEGIN',
'    SELECT c001',
'    INTO v_default_nls_date_format',
'    FROM apex_collections',
'    WHERE collection_name = C_COLLECTION_NAME;',
'',
'    EXECUTE IMMEDIATE REPLACE(''ALTER SESSION SET nls_date_format=''''<p>'''''', ''<p>'',',
'        v_default_nls_date_format);',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
begin
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(45080429556127047149)
,p_process_sequence=>20
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'P61_CARREGAR_REGISTRO_ERRO'
,p_attribute_02=>'TB_SAE_ERRO'
,p_attribute_03=>'P61_COD_ERRO'
,p_attribute_04=>'COD'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P61_COD_ERRO'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(45080429658163047150)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P61_ALTERAR_NLS_FORMATO_DATA_1'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE',
'    -- This code makes the backup of the NLS_DATE_FORMAT to APEX_COLLECTION and',
'    -- alter the NLS_DATE_FORMAT to ''dd/mm/yyyy - hh24:mi''',
'    v_default_nls_date_format VARCHAR2(100);',
'    C_COLLECTION_NAME CONSTANT VARCHAR2(100) := ''EUD_APPLICATION'';',
'BEGIN',
'    SELECT value',
'    INTO v_default_nls_date_format',
'    FROM   nls_session_parameters',
'    WHERE  parameter = ''NLS_DATE_FORMAT'';',
'',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(C_COLLECTION_NAME);',
'    APEX_COLLECTION.ADD_MEMBER(C_COLLECTION_NAME, v_default_nls_date_format);',
'',
'    EXECUTE IMMEDIATE ''ALTER SESSION SET nls_date_format=''''dd/mm/yyyy - hh24:mi'''''' ;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00062
begin
wwv_flow_api.create_page(
 p_id=>62
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Lista de Erros Conhecidos'
,p_page_mode=>'NORMAL'
,p_step_title=>'Lista de Erros Conhecidos'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_upd_yyyymmddhh24miss=>'20161207213919'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45197563727352108711)
,p_plug_name=>'Lista de Erros'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45080428029227047134)
,p_plug_name=>'Erros no APEX'
,p_parent_plug_id=>wwv_flow_api.id(45197563727352108711)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45080427052914047124)
,p_plug_name=>'Relatorio'
,p_parent_plug_id=>wwv_flow_api.id(45080428029227047134)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39024443613162847625)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT cod, nome, versao_apex, descricao, cadastrado_por, cadastrado_em, atualizado_por, atualizado_em',
'FROM tb_sae_erro',
'WHERE tb_sae_tipo_erro_cod = 1',
'ORDER BY cadastrado_em DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>210
,p_prn_height=>297
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(45080427184969047125)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:RP:P61_COD_ERRO:#COD#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'FILIPEBORGES'
,p_internal_uid=>45080427184969047125
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(45080427246588047126)
,p_db_column_name=>'COD'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(45080427303242047127)
,p_db_column_name=>'NOME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nome'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(45080427486366047128)
,p_db_column_name=>'VERSAO_APEX'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Versão APEX'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(45080427573545047129)
,p_db_column_name=>'DESCRICAO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Descrição'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(45080427642296047130)
,p_db_column_name=>'CADASTRADO_POR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cadastrado por'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(45080427785014047131)
,p_db_column_name=>'CADASTRADO_EM'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cadastrado em'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'dd/mm/yyyy - hh24:mi'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(45080427873795047132)
,p_db_column_name=>'ATUALIZADO_POR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Atualizado por'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(45080427914598047133)
,p_db_column_name=>'ATUALIZADO_EM'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Atualizado em'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'dd/mm/yyyy - hh24:mi'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(45158982519133697904)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'451589826'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'NOME:VERSAO_APEX:DESCRICAO:CADASTRADO_POR:CADASTRADO_EM:ATUALIZADO_POR:ATUALIZADO_EM:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45080428191248047135)
,p_plug_name=>'Erros de Aplicações'
,p_parent_plug_id=>wwv_flow_api.id(45197563727352108711)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45080428234508047136)
,p_plug_name=>'Relatorio'
,p_parent_plug_id=>wwv_flow_api.id(45080428191248047135)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39024443613162847625)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT cod, nome, workspace_app, id_app, versao_app, ',
'    CASE status_erro_app',
'        WHEN ''A'' THEN ''<span style="color:red">Aberto</span>''',
'        WHEN ''C'' THEN ''<span style="color:blue">Concluído</span>''',
'    END AS status,',
'    cadastrado_por, cadastrado_em, atualizado_por, atualizado_em',
'FROM tb_sae_erro',
'WHERE tb_sae_tipo_erro_cod = 2',
'ORDER BY cadastrado_em DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>210
,p_prn_height=>297
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(45080428364273047137)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:RP:P61_COD_ERRO:#COD#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'FILIPEBORGES'
,p_internal_uid=>45080428364273047137
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(45080428443228047138)
,p_db_column_name=>'COD'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(45080428576405047139)
,p_db_column_name=>'NOME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nome'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(45080428640607047140)
,p_db_column_name=>'WORKSPACE_APP'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Espaço de Trabalho'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(45080428734285047141)
,p_db_column_name=>'ID_APP'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(45080428855845047142)
,p_db_column_name=>'VERSAO_APP'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Versão'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(45080429078424047144)
,p_db_column_name=>'CADASTRADO_POR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cadastrado por'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(45080429168759047145)
,p_db_column_name=>'CADASTRADO_EM'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cadastrado em'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'dd/mm/yyyy - hh24:mi'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(45080429280089047146)
,p_db_column_name=>'ATUALIZADO_POR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Atualizado por'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(45080429396657047147)
,p_db_column_name=>'ATUALIZADO_EM'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Atualizado em'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'dd/mm/yyyy - hh24:mi'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(45080429404236047148)
,p_db_column_name=>'STATUS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(45159302934030349387)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'451593030'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'NOME:WORKSPACE_APP:ID_APP:STATUS:CADASTRADO_POR:CADASTRADO_EM:ATUALIZADO_POR:ATUALIZADO_EM:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(45197563867299108712)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(45197563727352108711)
,p_button_name=>'P62_CADASTRAR_ERRO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cadastrar Novo Erro'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:RP,61::'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(45197564030803108714)
,p_name=>'P62_INSERIR_ESPACO_BTN_CADASTRAR'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45197564106415108715)
,p_event_id=>wwv_flow_api.id(45197564030803108714)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var firstReportRegion = document.getElementsByClassName("container")[1];',
'firstReportRegion.setAttribute("style", "padding-top:13px");'))
);
end;
/
prompt --application/pages/page_00063
begin
wwv_flow_api.create_page(
 p_id=>63
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Visualização Anexo Tela Erro'
,p_page_mode=>'NON_MODAL'
,p_step_title=>'Visualização Anexo Tela Erro'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_upd_yyyymmddhh24miss=>'20161111194609'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45197563541484108709)
,p_plug_name=>'Tela Anexada'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45197563618662108710)
,p_name=>'P63_ANEXO_TELA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(45197563541484108709)
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_attribute_01=>'SQL'
,p_attribute_06=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT anexo_tela',
'FROM tb_sae_erro',
'WHERE cod = :P61_COD_ERRO'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(45197565007211108724)
,p_name=>'P63_SCROLL_HORIZONTAL_IMAGEM'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45197565113118108725)
,p_event_id=>wwv_flow_api.id(45197565007211108724)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var img = document.getElementById("P63_ANEXO_TELA");',
'img.setAttribute("style", "height:100%;width:100%");'))
);
end;
/
prompt --application/pages/page_00066
begin
wwv_flow_api.create_page(
 p_id=>66
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Kanban'
,p_page_mode=>'NORMAL'
,p_step_title=>'Kanban'
,p_step_sub_title=>'Kanban_Novo'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_file_urls=>'#JQUERYUI_DIRECTORY#ui/#MIN_DIRECTORY#jquery.ui.sortable#MIN#.js'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  $(function() {',
'    $( ".connectedSortable" ).sortable({',
'      connectWith: ".connectedSortable"',
'    }).disableSelection();',
'  });',
''))
,p_inline_css=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'.sortableRegion {float: left; background-color: #aaa; margin-right: 5px}',
'.sortableRegion h2 {margin-left: 5px; color: #fff}',
' .connectedSortable { list-style-type: none; margin: 0; padding: 0 0 2.5em; float: left; min-height: 30px; min-width: 140px}',
'  .connectedSortable  li { margin: 0 5px 5px 5px; padding: 5px; font-size: 1.2em; width: 120px; background-color: #eee}',
'.connectedSortable li.set0 {background-color:#dee}',
'.connectedSortable li.set2 {background-color:#ede}',
'.connectedSortable li.set3 {background-color:#eed}',
'.connectedSortable li.set4 {background-color:#edd}'))
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'https://code.jquery.com/jquery-1.9.1.js',
'https://code.jquery.com/ui/1.10.4/jquery-ui.js',
'http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css'))
,p_last_updated_by=>'FILIPEBORGES'
,p_last_upd_yyyymmddhh24miss=>'20161209020841'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(46074305145960346417)
,p_name=>'<span style="font-size:54%;display:block;position:relative;text-align:center;right:3%">Implantação</span>'
,p_region_name=>'set4'
,p_template=>wwv_flow_api.id(46685118322448794200)
,p_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_grid_column_span=>1
,p_display_column=>7
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ''set5'' class,',
'       funcionalidade value,',
'       funcionalidade display',
'from tb_sae_kanban',
'where numero_coluna = 5',
'and cod_projeto = :P66_SELECAO_DO_PROJETO'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'N'
,p_query_row_template=>wwv_flow_api.id(46685081511267773623)
,p_query_num_rows=>999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46074305292393346418)
,p_query_column_id=>1
,p_column_alias=>'CLASS'
,p_column_display_sequence=>1
,p_column_heading=>'CLASS'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46074305365524346419)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'VALUE'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46074305410787346420)
,p_query_column_id=>3
,p_column_alias=>'DISPLAY'
,p_column_display_sequence=>3
,p_column_heading=>'DISPLAY'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(46074306172170346427)
,p_name=>'<span style="font-size:54%;display:block;position:relative;text-align:center;right:3%">Concluído</span>'
,p_region_name=>'set4'
,p_template=>wwv_flow_api.id(46685118322448794200)
,p_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_grid_column_span=>1
,p_display_column=>8
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ''set6'' class,',
'       funcionalidade value,',
'       funcionalidade display',
'from tb_sae_kanban',
'where numero_coluna = 6',
'and cod_projeto = :P66_SELECAO_DO_PROJETO'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'N'
,p_query_row_template=>wwv_flow_api.id(46685081511267773623)
,p_query_num_rows=>999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46074306404837346430)
,p_query_column_id=>1
,p_column_alias=>'CLASS'
,p_column_display_sequence=>3
,p_column_heading=>'CLASS'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46074306204629346428)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>1
,p_column_heading=>'VALUE'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46074306309196346429)
,p_query_column_id=>3
,p_column_alias=>'DISPLAY'
,p_column_display_sequence=>2
,p_column_heading=>'DISPLAY'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(46684635045670301528)
,p_name=>'<span style="font-size:54%;display:block;position:relative;text-align:center;right:3%">Backlog<br/>Produto</span>'
,p_template=>wwv_flow_api.id(46685118322448794200)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_column=>false
,p_grid_column_span=>1
,p_display_column=>1
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ''set0'' class,',
'       funcionalidade value,',
'       funcionalidade display',
'from tb_sae_kanban',
'where numero_coluna = 0',
'and cod_projeto = :P66_SELECAO_DO_PROJETO'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'N'
,p_query_row_template=>wwv_flow_api.id(46685081511267773623)
,p_query_num_rows=>999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
,p_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ''set0'' class',
',      c002 value',
',      c002 display',
'from   apex_collections',
'where  collection_name=''SETLIST_EDITOR''',
'and    c001 = 0'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46684635435504301530)
,p_query_column_id=>1
,p_column_alias=>'CLASS'
,p_column_display_sequence=>1
,p_column_heading=>'CLASS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46684635802783301531)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'VALUE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46684636267062301531)
,p_query_column_id=>3
,p_column_alias=>'DISPLAY'
,p_column_display_sequence=>3
,p_column_heading=>'DISPLAY'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(46684636640935301531)
,p_name=>'<span style="font-size:54%;display:block;position:relative;text-align:center;right:3%">Backlog<br/>Iteração</span>'
,p_region_name=>'set1'
,p_template=>wwv_flow_api.id(46685118322448794200)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_grid_column_span=>1
,p_display_column=>3
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ''set1'' class,',
'       funcionalidade value,',
'       funcionalidade display',
'from tb_sae_kanban',
'where numero_coluna = 1',
'and cod_projeto = :P66_SELECAO_DO_PROJETO'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'N'
,p_query_row_template=>wwv_flow_api.id(46685081511267773623)
,p_query_num_rows=>999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46684637058144301532)
,p_query_column_id=>1
,p_column_alias=>'CLASS'
,p_column_display_sequence=>1
,p_column_heading=>'CLASS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46684637460042301532)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'VALUE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46684637870832301532)
,p_query_column_id=>3
,p_column_alias=>'DISPLAY'
,p_column_display_sequence=>3
,p_column_heading=>'DISPLAY'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(46684638254274301533)
,p_name=>'<span style="font-size:54%;display:block;position:relative;text-align:center;right:3%">Implementação</span>'
,p_region_name=>'set2'
,p_template=>wwv_flow_api.id(46685118322448794200)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_grid_column_span=>1
,p_display_column=>4
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ''set2'' class,',
'       funcionalidade value,',
'       funcionalidade display',
'from tb_sae_kanban',
'where numero_coluna = 2',
'and cod_projeto = :P66_SELECAO_DO_PROJETO'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'N'
,p_query_row_template=>wwv_flow_api.id(46685081511267773623)
,p_query_num_rows=>999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46684638633842301533)
,p_query_column_id=>1
,p_column_alias=>'CLASS'
,p_column_display_sequence=>1
,p_column_heading=>'CLASS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46684639008930301534)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'VALUE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46684639441632301534)
,p_query_column_id=>3
,p_column_alias=>'DISPLAY'
,p_column_display_sequence=>3
,p_column_heading=>'DISPLAY'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(46684639817384301534)
,p_name=>'<span style="font-size:54%;display:block;position:relative;text-align:center;right:3%">Teste</span>'
,p_region_name=>'set3'
,p_template=>wwv_flow_api.id(46685118322448794200)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_grid_column_span=>1
,p_display_column=>5
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ''set3'' class,',
'       funcionalidade value,',
'       funcionalidade display',
'from tb_sae_kanban',
'where numero_coluna = 3',
'and cod_projeto = :P66_SELECAO_DO_PROJETO'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'N'
,p_query_row_template=>wwv_flow_api.id(46685081511267773623)
,p_query_num_rows=>999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46684640267524301535)
,p_query_column_id=>1
,p_column_alias=>'CLASS'
,p_column_display_sequence=>1
,p_column_heading=>'CLASS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46684640614098301535)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'VALUE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46684641038507301535)
,p_query_column_id=>3
,p_column_alias=>'DISPLAY'
,p_column_display_sequence=>3
,p_column_heading=>'DISPLAY'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(46684641435484301536)
,p_name=>'<span style="font-size:54%;display:block;position:relative;text-align:center;right:3%">Homologação</span>'
,p_region_name=>'set4'
,p_template=>wwv_flow_api.id(46685118322448794200)
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_grid_column_span=>1
,p_display_column=>6
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ''set4'' class,',
'       funcionalidade value,',
'       funcionalidade display',
'from tb_sae_kanban',
'where numero_coluna = 4',
'and cod_projeto = :P66_SELECAO_DO_PROJETO'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'N'
,p_query_row_template=>wwv_flow_api.id(46685081511267773623)
,p_query_num_rows=>999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46684641822939301536)
,p_query_column_id=>1
,p_column_alias=>'CLASS'
,p_column_display_sequence=>1
,p_column_heading=>'CLASS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46684642253160301536)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'VALUE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46684642649961301537)
,p_query_column_id=>3
,p_column_alias=>'DISPLAY'
,p_column_display_sequence=>3
,p_column_heading=>'DISPLAY'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46684643079010301537)
,p_plug_name=>'Hidden'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'AFTER_HEADER'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(47673055237111299439)
,p_plug_name=>'Seleção do projeto'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48342094199786397829)
,p_plug_name=>'Botão'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BEFORE_FOOTER'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48341496068990357525)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(47673055237111299439)
,p_button_name=>'SALVAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(39024465202625847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salvar'
,p_button_position=>'BELOW_BOX'
,p_icon_css_classes=>'fa-hdd-o'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48471885606328327814)
,p_name=>'P66_SELECAO_DO_PROJETO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(47673055237111299439)
,p_prompt=>'Selecione o Projeto'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select NOME_PROJETO as display_value, COD as return_value ',
'  from TB_SAE_PROJETO',
'  where cadastrado_por = :APP_USER',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Selecione--'
,p_lov_null_value=>'-1'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(39024464994252847656)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(46074306596485346431)
,p_name=>'P66_AJUSATR_LAYOUT_KANBAN'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46074306690508346432)
,p_event_id=>wwv_flow_api.id(46074306596485346431)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var ulElements = document.getElementsByClassName("connectedSortable");',
'for(i = 0; i < ulElements.length; i++) {',
'    var liNodes = ulElements[i].children;',
'    for(a = 0; a < liNodes.length; a++) {',
'         liNodes[a].setAttribute("style", "max-width:70%;border-radius:4px;background-color:#e2e4e6");',
'         liNodes[a].style.cursor = "pointer";',
'    }',
'}',
'',
'var divElements = document.getElementsByClassName("sortableRegion");',
'for(i = 0; i < divElements.length; i++) {',
'    divElements[i].setAttribute("style", "max-width:104%;border-radius:4px;background-color:#2578cf");',
'}',
'',
'$(''.sortableRegion'').find(''.nodatafound'').remove();'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46684646268387301542)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update_tb_sae_kanban'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'   l_set_no integer := 0;',
'   v_cod_registro_kanban number;',
'begin',
'',
'for i in 1..apex_application.g_f01.count',
'loop',
'   if apex_application.g_f01(i) = ''0'' then',
'      -- End of set',
'      l_set_no := l_set_no + 1;',
'   else',
'      --Precisa recuperar o codigo da linha para que somente a linha em questao, representando o post it, seja atualizada.',
'      --O filtro WHERE utiliza a comparacao de nomes para buscar o COD correspondente ao post it.',
'      select cod',
'      into v_cod_registro_kanban',
'      from tb_sae_kanban',
'      where upper(funcionalidade) = upper(apex_application.g_f01(i))',
'      and cod_projeto = :P66_SELECAO_DO_PROJETO;',
'   ',
'      -- add to current set',
'      update tb_sae_kanban',
'         set numero_coluna = l_set_no',
'         where cod_projeto = :P66_SELECAO_DO_PROJETO',
'         and cod = v_cod_registro_kanban; --Atualiza so o post it em questao, ja que temos o COD agora.',
'   end if;',
'end loop;',
'end;',
'',
'',
'--VEJA O SEU CODIGO ANTIGO',
'',
'--declare',
'--   l_set_no integer := 0;',
'--begin',
'',
'--for i in 1..apex_application.g_f01.count',
'--loop',
'  -- if apex_application.g_f01(i) = ''0'' then',
'      -- End of set',
'    --  l_set_no := l_set_no + 1;',
'   --else',
'      -- add to current set',
'     -- update tb_sae_kanban',
'       --  set cod = l_set_no,     ERRO NESTA LINHA, VOCE ESTA ATUALIZANDO O COD, O CERTO EH O NUMERO_COLUNA.',
'         --numero_coluna = apex_application.g_f01(i)',
'         --where cod_projeto = 1;',
'   --end if;',
'--end loop;',
'--end;',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P66_SELECAO_DO_PROJETO'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'-1'
,p_process_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'   l_set_no integer := 0;',
'begin',
'apex_collection.create_or_truncate_collection (''SETLIST_EDITOR'');',
'for i in 1..apex_application.g_f01.count',
'loop',
'   if apex_application.g_f01(i) = ''0'' then',
'      -- End of set',
'      l_set_no := l_set_no + 1;',
'   else',
'      -- add to current set',
'      apex_collection.add_member',
'         ( ''SETLIST_EDITOR''',
'         , l_set_no',
'         , apex_application.g_f01(i)',
'         );',
'   end if;',
'end loop;',
'end;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46684645874452301542)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Carregar kanban'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
'    if :P66_SELECAO_DO_PROJETO != -1',
'    then',
'        for c in (',
'            select nome_funcionalidade ',
'            from tb_sae_funcionalidade fu, tb_sae_feature fe, tb_sae_projeto pr ',
'            where fu.cod_feature = fe.cod ',
'            and fe.cod_projeto = pr.cod  ',
'            and pr.cod = :P66_SELECAO_DO_PROJETO',
'            and nome_funcionalidade not in (select funcionalidade ',
'                                            from tb_sae_kanban ',
'                                            where cod_projeto = :P66_SELECAO_DO_PROJETO)',
'        ) loop',
'        insert into tb_sae_kanban (cod, cod_projeto, numero_coluna, funcionalidade) values (seq_sae_kanban.nextval, :P66_SELECAO_DO_PROJETO, 0, c.nome_funcionalidade);',
'        end loop;',
'    end if;',
'end;'))
,p_process_when=>'P66_SELECAO_DO_PROJETO'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_collection.create_or_truncate_collection(''SETLIST_EDITOR'');',
'for r in (',
'select 0 list_no, table_name from all_tables where rownum <= 30',
') loop',
'   apex_collection.add_member(''SETLIST_EDITOR'', r.list_no, initcap(replace(r.table_name,''_'','' '')) );',
'end loop;'))
);
end;
/
prompt --application/pages/page_00068
begin
wwv_flow_api.create_page(
 p_id=>68
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Definir Procedimentos de Implantação'
,p_page_mode=>'NORMAL'
,p_step_title=>'Definir Procedimentos de Implantação'
,p_step_sub_title=>'Definir Procedimentos de Implantação'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_html_page_header=>'<link rel="stylesheet" href="#WORKSPACE_IMAGES#eud_estilos.css" type="text/css">'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_upd_yyyymmddhh24miss=>'20161130195304'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46984619788849177773)
,p_plug_name=>'<b>Definir Procedimentos de Implantação</b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46074307767304346443)
,p_name=>'P68_DEFINIR_IMPLANTACAO_CONC_1_TITULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(46984619788849177773)
,p_source=>'Apelido da aplicação'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only_titulo'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46074307829201346444)
,p_name=>'P68_DEFINIR_IMPLANTACAO_CONC_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(46984619788849177773)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Uma aplicação APEX pode ser identificada tanto pelo seu ID quanto pelo seu apelido. Tanto o ID quanto o apelido devem ser únicos, de forma a permitir o acesso à aplicação pelo usuário. Um erro bastante comum é migrar a aplicação do ambiente de desenv'
||'olvimento para o de produção porém mantendo o mesmo apelido nas duas aplicações, o que faz com que a aplicação fique inacessível, já que a engine do APEX não sabe para qual aplicação deve redirecionar.',
'',
'Sempre ao migrar uma aplicação de um espaço de desenvolvimento para um espaço de produção, garanta que o apelido desejado estará somente na aplicação de produção. Por exemplo, suponha que é desejável que o usuário acesse uma aplicação pelo apelido CA'
||'LCULO_IMPOSTO. Desta forma, a única aplicação que deve possuir este apelido é a aplicação no espaço de produção, a do espaço de desenvolvimento poderíamos retirar o apelido ou alterá-lo para algo como: CALCULO_IMPOSTO_DESENV.',
'',
'Para alterar o apelido da aplicação:',
'',
'<img style="height:100%;width:100%" src="#WORKSPACE_IMAGES#eud_p68_editar_propriedades_app.png" />',
'<img style="height:100%;width:100%" src="#WORKSPACE_IMAGES#eud_p68_alterar_apelido.png" />'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46074307944533346445)
,p_name=>'P68_DEFINIR_IMPLANTACAO_CONC_2_TITULO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(46984619788849177773)
,p_source=>'Esquemas de Autenticação/Autorização'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only_titulo'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46074308068386346446)
,p_name=>'P68_DEFINIR_IMPLANTACAO_CONC_2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(46984619788849177773)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Primeiramente é importante diferenciar um esquema de autenticação de um esquema de autorização. De forma resumida, eles são classificados da seguinte forma:<ul><li>Esquema de Autenticação: Restringe o acesso de um usuário à aplicação.</li><li>Esquema'
||' de Autorização: Restringe o acesso de um usuário à partes da aplicação.</li></ul>',
'Levando em conta a explicação acima, se quisessemos que uma aplicação fosse acessível somente para usuários internos do órgão, poderíamos criar um esquema de autenticação. Se quisessemos que partes específicas dela fossem acessíveis somente a usuário'
||'s internos do órgão, poderíamos criar um esquema de autorização.',
'Desta forma, é importante que os esquemas de autenticação/autorização sejam bem pensados, de forma a garantir a devida restrição de acesso a aplicação.',
'',
'Para informações sobre como configurar os esquemas de autorização/autenticação, acesse:<ul><li><a href="https://contas.tcu.gov.br/wikiti/index.php?title=Autentica%C3%A7%C3%A3o_-_Novo_SSO" target="_blank">Criando um Esquema de Autenticação</a></li><li'
||'><a href="https://contas.tcu.gov.br/wikiti/index.php?title=Esquema_b%C3%A1sico_de_autoriza%C3%A7%C3%A3o_no_Apex" target="_blank">Criando um Esquema de Autorização</a></li><li><a href="https://contas.tcu.gov.br/wikiti/index.php?title=Criando_uma_auten'
||'tica%C3%A7%C3%A3o_customizada" target="_blank">Criando um Esquema de Autenticação Customizado</a></li></ul>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46984620521325177777)
,p_name=>'P68_DEFINIR_IMPLANTACAO_TEXTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(46984619788849177773)
,p_source=>'Os procedimentos de implantação da aplicação devem ser bem estabelecidos, pois segundo o autor de engenharia de software Sommerville, esta estapa é muitas vezes ignorada na maioria dos processos e pode se tornar supreendentemente cara e problemática.'
||' Na implantação de uma aplicação APEX, alguns aspectos são de fundamentais importância para serem pensados:<ul><li>Apelido da aplicação</li><li>Esquemas de Autenticação/Autorização</li></ul>'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00069
begin
wwv_flow_api.create_page(
 p_id=>69
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Migrar Aplicação'
,p_page_mode=>'NORMAL'
,p_step_title=>'Migrar Aplicação'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_html_page_header=>'<link rel="stylesheet" href="#WORKSPACE_IMAGES#eud_estilos.css" type="text/css">'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_upd_yyyymmddhh24miss=>'20161129140320'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46074307401011346440)
,p_plug_name=>'<b>Migrar Aplicação</b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46074307651391346442)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(46074307401011346440)
,p_button_name=>'P69_GUIA_MIGRACAO_BOTAO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guia de Migração de Aplicações'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.:RP::'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46074307557945346441)
,p_name=>'P69_MIGRAR_APLICACAO_TEXTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(46074307401011346440)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'O desenvolvimento de aplicações APEX acontece minimamente em dois ambientes distintos:<ul><li>Instância APEX de desenvolvimento</li><li>Instância APEX de produção</li></ul>',
'Como os próprios nomes sugerem, o desenvolvimento e/ou manutenção da aplicação deve ocorrer no ambiente de desenvolvimento, e a disponibilização da aplicação e/ou atualização, aos usuários, ocorre com a sua migração para os espaços de trabalho de pro'
||'dução. Ainda podem haver outros espaços de trabalho que sejam necessários durante desenvolvimento de uma aplicação, como por exemplo um espaço de homologação ou de teste.',
'',
'Levando-se em consideração estes pontos torna-se fundamental ao desenvolvedor da aplicação o conhecimento dos passos envolvidos na migração da mesma.<br/>&nbsp'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00070
begin
wwv_flow_api.create_page(
 p_id=>70
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Guia de Migração de Aplicações'
,p_page_mode=>'NORMAL'
,p_step_title=>'Guia de Migração de Aplicações'
,p_step_sub_title=>'Guia de Homologação de Aplicações'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_html_page_header=>'<link rel="stylesheet" href="#WORKSPACE_IMAGES#eud_estilos.css" type="text/css">'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_upd_yyyymmddhh24miss=>'20161201134527'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46454614352193325126)
,p_plug_name=>'<b>Guia de Migração de Aplicações</b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46074304114871346407)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(46454614352193325126)
,p_button_name=>'P70_MIGRACAO_TUTORIAL_DEPENDENCIA_BOTAO'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Acesse o tutorial'
,p_button_position=>'BODY'
,p_button_redirect_url=>'javascript:w=window.open(''f?p=&APP_ID.:51:&SESSION.::::P51_TIPO_DESCRICAO_VIDEO,P51_TITULO_REGIAO:P70_DB_DEPENDENCIA,Listando as Dependências de Objetos de Dados de uma Aplicação'', "width=1000 height=700");'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46074304636017346412)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(46454614352193325126)
,p_button_name=>'P70_MIGRACAO_TUTORIAL_SCRIPTS_BOTAO'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Acesse o tutorial'
,p_button_position=>'BODY'
,p_button_redirect_url=>'javascript:w=window.open(''f?p=&APP_ID.:51:&SESSION.::::P51_TIPO_DESCRICAO_VIDEO,P51_TITULO_REGIAO:P70_DB_SCRIPTS_OBJETOS_DADOS,Criando Scripts de Exportação de Objetos de Dados de uma Aplicação'', "width=1000 height=700");'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46074306950939346435)
,p_button_sequence=>180
,p_button_plug_id=>wwv_flow_api.id(46454614352193325126)
,p_button_name=>'P70_MIGRACAO_TUTORIAL_EXPORTAR_BOTAO'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Acesse o tutorial'
,p_button_position=>'BODY'
,p_button_redirect_url=>'javascript:w=window.open(''f?p=&APP_ID.:51:&SESSION.::::P51_TIPO_DESCRICAO_VIDEO,P51_TITULO_REGIAO:P70_EXPORTAR_APLICACAO,Exportando uma Aplicação'', "width=1000 height=700");'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46074307240190346438)
,p_button_sequence=>230
,p_button_plug_id=>wwv_flow_api.id(46454614352193325126)
,p_button_name=>'P70_MIGRACAO_TUTORIAL_INSTALAR_BOTAO'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_image_alt=>'Acesse o tutorial'
,p_button_position=>'BODY'
,p_button_redirect_url=>'javascript:w=window.open(''f?p=&APP_ID.:51:&SESSION.::::P51_TIPO_DESCRICAO_VIDEO,P51_TITULO_REGIAO:P70_IMPORTAR_APLICACAO,Instalando uma Aplicação em um Espaço de Trabalho'', "width=1000 height=700");'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46074304348451346409)
,p_name=>'P70_MIGRACAO_CONCEITOS_2_TITULO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(46454614352193325126)
,p_source=>'Criar Scripts de Exportação de Objetos de Dados'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only_titulo'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46074304472370346410)
,p_name=>'P70_MIGRACAO_CONCEITOS_2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(46454614352193325126)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'A criação dos Scripts de exportação de objetos de dados permite que os códigos DDL de criação dos objetos usados pela aplicação (Tabelas, Sequências, Views, Triggers e etc) sejam embutidos nas definições da aplicação, de forma que ao se importar esta'
||' aplicação os objetos necessários serão criados automaticamente.',
'',
'Primeiro é necessário listar quais os objetos de dados dos quais a aplicação depende.'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46074304595919346411)
,p_name=>'P70_MIGRACAO_CONCEITOS_2[2]'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(46454614352193325126)
,p_use_cache_before_default=>'NO'
,p_source=>'<br/>Uma vez listados os objetos de dados, devemos realizar a criação do script de exportação dos mesmos.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46074304734460346413)
,p_name=>'P70_MIGRACAO_CONCEITOS_3_TITULO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(46454614352193325126)
,p_source=>'<br/>Exportando os arquivos estáticos'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only_titulo'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46074304878749346414)
,p_name=>'P70_MIGRACAO_CONCEITOS_3'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(46454614352193325126)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Caso a aplicação use algum arquivo estático deve-se exportá-los manualmente através da funcionalidades Shared Components (Componentes compartilhados). Dentro do Shared Components deve-se acessar a opção Static Workspace Files e fazer os downloads dos'
||' arquivos necessários.',
'',
'<img style="height:100%;width:100%" src="#WORKSPACE_IMAGES#eud_p70_exportar_arq_estaticos_1.png" />',
'',
'<img style="height:100%;width:100%" src="#WORKSPACE_IMAGES#eud_p70_exportar_arq_estaticos_2.png" />'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46074306702382346433)
,p_name=>'P70_MIGRACAO_CONCEITOS_4_TITULO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(46454614352193325126)
,p_source=>'<br/>Exportando a Aplicação'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only_titulo'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46074306801003346434)
,p_name=>'P70_MIGRACAO_CONCEITOS_4'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(46454614352193325126)
,p_use_cache_before_default=>'NO'
,p_source=>'Para realizar a exportação da aplicação junto com os scripts de criação dos objetos de dados, acesse o tutorial a seguir.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46074307094588346436)
,p_name=>'P70_MIGRACAO_CONCEITOS_5'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(46454614352193325126)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Para a instalação da aplicação no novo espaço de trabalho devemos realizar as seguintes etapas:',
'<ol><li>Importar a aplicação</li><li>Fazer o upload dos arquivos estáticos dos quais a aplicação depende (Somente se utiliza algum arquivo estático)</li></ol>',
'A instalação da aplicação pode ser feita conforme o tutorial a seguir.'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46074307145507346437)
,p_name=>'P70_MIGRACAO_CONCEITOS_5_TITULO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(46454614352193325126)
,p_source=>'<br/>Instalando a Aplicação no Novo Espaço de Trabalho'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only_titulo'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46074307385049346439)
,p_name=>'P70_MIGRACAO_CONCEITOS_5[2]'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(46454614352193325126)
,p_use_cache_before_default=>'NO'
,p_source=>'<br/>O upload dos arquivos estáticos da aplicação pode ser feito conforme as intruções da seção <a href="#P70_MIGRACAO_CONCEITOS_3_TITULO_DISPLAY">Exportando os arquivos estáticos</a>.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46454615903313325130)
,p_name=>'P70_INDICE_TITULO'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(46454614352193325126)
,p_source=>'Índice'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only_titulo'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46454616354150325131)
,p_name=>'P70_INDICE'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(46454614352193325126)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#P70_MIGRACAO_CONCEITOS_1_TITULO_DISPLAY">Migrando uma Aplicação para Outro Espaço de Trabalho</a>',
'<a href="#P70_MIGRACAO_CONCEITOS_2_TITULO_DISPLAY">Criar Scripts de Exportação de Objetos de Dados</a>',
'<a href="#P70_MIGRACAO_CONCEITOS_3_TITULO_DISPLAY">Exportando os arquivos estáticos</a>',
'<a href="#P70_MIGRACAO_CONCEITOS_4_TITULO_DISPLAY">Exportando a Aplicação</a>',
'<a href="#P70_MIGRACAO_CONCEITOS_5_TITULO_DISPLAY">Instalando a Aplicação no Novo Espaço de Trabalho</a>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only_indice'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46454616731006325132)
,p_name=>'P70_MIGRACAO_CONCEITOS_1_TITULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(46454614352193325126)
,p_source=>'Migrando uma Aplicação para Outro Espaço de Trabalho'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only_titulo'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46454617141109325132)
,p_name=>'P70_MIGRACAO_CONCEITOS_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(46454614352193325126)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'A migração de uma aplicação de um espaço de trabalho A para um espaço B envolve os seguintes passos:',
'<ol><li>Criar scripts de exportação dos objetos de dados (Tabela, Sequências, Triggers e etc) dos quais a aplicação depende.</li><li>Exportar os arquivos estáticos (Imagens, CSS, JavaScript) dos quais a aplicação depende.</li><li>Exportar a aplicação'
||'</li><li>Instalar a aplicação no novo espaço de trabalho.</li><ol><br/>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00071
begin
wwv_flow_api.create_page(
 p_id=>71
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Backlog'
,p_page_mode=>'NORMAL'
,p_step_title=>'Backlog'
,p_step_sub_title=>'Backlog'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_html_page_header=>'<link rel="stylesheet" href="#WORKSPACE_IMAGES#eud_estilos.css" type="text/css">'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Fonte: Scrum Alliance',
'',
'https://www.scrumalliance.org/community/articles/2007/march/glossary-of-scrum-terms'))
,p_last_updated_by=>'FILIPEBORGES'
,p_last_upd_yyyymmddhh24miss=>'20161206213241'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(47939192693264318262)
,p_plug_name=>'<b>Backlog</b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47672951509141299402)
,p_name=>'P71_SECAO_BACKLOG_CONCEITOS_1_TITULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(47939192693264318262)
,p_source=>'Backlog do Produto'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only_titulo'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47672951623822299403)
,p_name=>'P71_SECAO_BACKLOG_CONCEITOS_2_TITULO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(47939192693264318262)
,p_source=>'Backlog da Iteração'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only_titulo'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47672951745287299404)
,p_name=>'P71_SECAO_BACKLOG_CONCEITOS_2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(47939192693264318262)
,p_source=>'O Backlog da Iteração representa a priorização de itens de backlog, do Backlog do Produto, para serem realizados durante um ciclo de desenvolvimento. Essa priorização normalmente acontece junto com o cliente. Ao finalizar a iteração, prioriza-se novo'
||'s itens do Backlog do Produto para a iteração seguinte.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47672951857992299405)
,p_name=>'P71_IMAGEM_FLUXO_BACKLOG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(47939192693264318262)
,p_source=>'<img src="#WORKSPACE_IMAGES#eud_p71_fluxo_backlog.png" class="display_image_centralizar" />'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47939194401434318267)
,p_name=>'P71_SECAO_BACKLOG_CONCEITOS_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(47939192693264318262)
,p_source=>'O Backlog do Produto pode ser definido como o conjunto de todos os requisitos do sistema a ser desenvolvido, e ele é composto por itens de backlog. Dentre os requisitos representados pelo Backlog do Produto, estão os requisitos funcionais, não-funcio'
||'nais e requisitos técnicos gerado pela equipe de desenvolvimento. Observa-se que o Backlog do Produto não é estático, podendo ser acrescentados ou retirados itens de backlog de acordo com eventuais necessidades que surgirem durante o desenvolvimento.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00072
begin
wwv_flow_api.create_page(
 p_id=>72
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Consulta de Informações'
,p_page_mode=>'NORMAL'
,p_step_title=>'Consulta de Informações'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_upd_yyyymmddhh24miss=>'20161207211252'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(47672952083961299407)
,p_plug_name=>'Consulta de Informações da Solução'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39024443613162847625)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ''<a href="f?p=&APP_ID.:'' || page_id || '':&APP_SESSION.:::'' || page_id || '':::">'' || page_name || ''</a>'' AS info_solucao',
'FROM apex_application_pages',
'WHERE application_id = 88836',
'AND page_id NOT IN (0,1,2,3,4,5,6,7,8,9,10,11,14,15,16,17,18,19,20,22,23,51,59,63,72,101)',
'ORDER BY page_name'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>210
,p_prn_height=>297
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(47672952481337299411)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'FILIPEBORGES'
,p_internal_uid=>47672952481337299411
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47672952606130299413)
,p_db_column_name=>'INFO_SOLUCAO'
,p_display_order=>10
,p_column_identifier=>'B'
,p_column_label=>'Acesso rápido as informações'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(48295950089538898464)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'482959501'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'INFO_SOLUCAO'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00073
begin
wwv_flow_api.create_page(
 p_id=>73
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Lista de Parametros (Tecnica de Elicitação)'
,p_page_mode=>'NORMAL'
,p_step_title=>'Lista de Parametros (Tecnica de Elicitação)'
,p_step_sub_title=>'Lista de Parametros (Tecnica de Elicitação)'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_upd_yyyymmddhh24miss=>'20161208005544'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(47672953227207299419)
,p_plug_name=>'Lista de Parametros Cadastrados'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48334617166192140940)
,p_plug_name=>'Lista de Parametros Cadastrados'
,p_parent_plug_id=>wwv_flow_api.id(47672953227207299419)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39024443613162847625)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_grid_column_span=>5
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'"COD",',
'"NOME_PARAMETRO"',
'from "#OWNER#"."TB_SAE_PARAMETRO"'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_col_allignments=>' : : : : '
,p_plug_query_number_formats=>'<url>f?p=#APP_ID#\589\58#APP_SESSION#\58\58\58\58P9_COD\58#COD#</url><txt><img src="#IMAGE_PREFIX#e2.gif"  border="0"></txt>: : : : '
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>210
,p_prn_height=>297
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(47672952773567299414)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'FILIPEBORGES'
,p_internal_uid=>47672952773567299414
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47672952873315299415)
,p_db_column_name=>'COD'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Editar'
,p_column_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP:P10_COD:#COD#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47672952953232299416)
,p_db_column_name=>'NOME_PARAMETRO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nome parametro'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(48334741663810147694)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'483347417'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'COD:NOME_PARAMETRO'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48334618346566140942)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(48334617166192140940)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Novo Parâmetro'
,p_button_position=>'TEMPLATE_DEFAULT'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10::'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(48334619689406140948)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(42403235927986752010)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47672953084943299417)
,p_name=>'P73_ATUALIZAR_PAGINA'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(48334617166192140940)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47672953161680299418)
,p_event_id=>wwv_flow_api.id(47672953084943299417)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(48334617166192140940)
);
end;
/
prompt --application/pages/page_00074
begin
wwv_flow_api.create_page(
 p_id=>74
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Lista de Pesos (Técnica de Elicitação)'
,p_page_mode=>'NORMAL'
,p_step_title=>'Lista de Pesos (Técnica de Elicitação)'
,p_step_sub_title=>'Lista de Pesos (Tecnica de Elicitação)'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_upd_yyyymmddhh24miss=>'20161208012921'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(47672954034585299427)
,p_plug_name=>'Lista de Pesos Cadastrados'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48339781264704703846)
,p_plug_name=>'Lista de Pesos Cadastrados'
,p_parent_plug_id=>wwv_flow_api.id(47672954034585299427)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39024443613162847625)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select peso."COD", ',
'peso."COD_TECNICA_ELICITACAO",',
'peso."COD_PARAMETRO",',
'peso."VALOR_PESO",',
'tecnica."NOME_TECNICA",',
'parametro."NOME_PARAMETRO"',
'from "#OWNER#"."TB_SAE_PESO" peso,',
'     "#OWNER#"."TB_SAE_TECNICA_ELICITACAO" tecnica,',
'     "#OWNER#"."TB_SAE_PARAMETRO" parametro',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_col_allignments=>' : : : : '
,p_plug_query_number_formats=>'<url>f?p=#APP_ID#\589\58#APP_SESSION#\58\58\58\58P9_COD\58#COD#</url><txt><img src="#IMAGE_PREFIX#e2.gif"  border="0"></txt>: : : : '
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>210
,p_prn_height=>297
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(47672953325798299420)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'FILIPEBORGES'
,p_internal_uid=>47672953325798299420
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47672953427337299421)
,p_db_column_name=>'COD'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Editar'
,p_column_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP:P11_COD:#COD#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47672953573993299422)
,p_db_column_name=>'COD_TECNICA_ELICITACAO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod. Técnica de Elicitação'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47672953637627299423)
,p_db_column_name=>'COD_PARAMETRO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod. Parâmetro'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47672953755686299424)
,p_db_column_name=>'VALOR_PESO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Valor do Peso'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47672953882818299425)
,p_db_column_name=>'NOME_TECNICA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nome da Técnica'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47672953935222299426)
,p_db_column_name=>'NOME_PARAMETRO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nome do Parâmetro'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(48340433985485338592)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'483404340'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'COD:COD_TECNICA_ELICITACAO:COD_PARAMETRO:VALOR_PESO:NOME_TECNICA:NOME_PARAMETRO'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48339784046528703852)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(48339781264704703846)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Adicionar Pesos aos Parâmetros das Técnicas'
,p_button_position=>'TEMPLATE_DEFAULT'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:11::'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(48339789794391703861)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(42403235927986752010)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47672954130623299428)
,p_name=>'P74_ATUALIZAR_PAGINA'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(48339781264704703846)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47672954213614299429)
,p_event_id=>wwv_flow_api.id(47672954130623299428)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(48339781264704703846)
);
end;
/
prompt --application/pages/page_00075
begin
wwv_flow_api.create_page(
 p_id=>75
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Lista de Técnicas (Técnicas de Elicitação)'
,p_page_mode=>'NORMAL'
,p_step_title=>'Lista de Técnicas (Técnicas de Elicitação)'
,p_step_sub_title=>'Lista de Técnicas (Técnicas de Elicitação)'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_upd_yyyymmddhh24miss=>'20161208012741'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(47672954944293299436)
,p_plug_name=>'Lista de Técnicas Cadastradas'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48343421682342816532)
,p_plug_name=>'Lista de Técnicas Cadastradas'
,p_parent_plug_id=>wwv_flow_api.id(47672954944293299436)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39024443613162847625)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "COD", ',
'"NOME_TECNICA",',
'"DESCR_TECNICA",',
'"OBJETIVO",',
'"LINK_DINAMICA"',
'from "#OWNER#"."TB_SAE_TECNICA_ELICITACAO" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_col_allignments=>' : : : : '
,p_plug_query_number_formats=>'<url>f?p=#APP_ID#\589\58#APP_SESSION#\58\58\58\58P9_COD\58#COD#</url><txt><img src="#IMAGE_PREFIX#e2.gif"  border="0"></txt>: : : : '
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>210
,p_prn_height=>297
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(47672954320797299430)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'FILIPEBORGES'
,p_internal_uid=>47672954320797299430
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47672954465471299431)
,p_db_column_name=>'COD'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Editar'
,p_column_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:RP:P9_COD:#COD#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47672954579920299432)
,p_db_column_name=>'NOME_TECNICA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nome tecnica'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47672954630659299433)
,p_db_column_name=>'DESCR_TECNICA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Descr tecnica'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47672954762643299434)
,p_db_column_name=>'OBJETIVO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Objetivo'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47672954899347299435)
,p_db_column_name=>'LINK_DINAMICA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Link dinamica'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(48344080218451445415)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'483440803'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'COD:NOME_TECNICA:DESCR_TECNICA:OBJETIVO:LINK_DINAMICA'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48343424083832816534)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(48343421682342816532)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nova Técnica'
,p_button_position=>'TEMPLATE_DEFAULT'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:9::'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(48343486003884816536)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(48343421682342816532)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(48343486526919816537)
,p_event_id=>wwv_flow_api.id(48343486003884816536)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(48343421682342816532)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(48343486902408816538)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(42403235927986752010)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(48343487487077816538)
,p_event_id=>wwv_flow_api.id(48343486902408816538)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(48343421682342816532)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47673055008872299437)
,p_name=>'P75_ATUALIZAR_PAGINA'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(48343421682342816532)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47673055103982299438)
,p_event_id=>wwv_flow_api.id(47673055008872299437)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(48343421682342816532)
);
end;
/
prompt --application/pages/page_00076
begin
wwv_flow_api.create_page(
 p_id=>76
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Sobre o SISADD'
,p_page_mode=>'NORMAL'
,p_step_title=>'Sobre o SISADD'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_upd_yyyymmddhh24miss=>'20161208160304'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48495487908515029802)
,p_plug_name=>'<b>Sobre o SISADD</b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48495488071204029803)
,p_name=>'P76_SOBRE_TEXTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(48495487908515029802)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Este é um sistema de apoio com o objetivo de proporcionar ajuda ao desenvolvimento de sistemas APEX. Nele você terá acesso a um ciclo de vida de desenvolvimento, contemplando as seguintes etapas:<ol><li>Requisitos</li><li>Banco de Dados</li><li>Imple'
||'mentação</li><li>Teste</li><li>Homologação</li><li>Implantação</li></ol>',
'',
'Autores:<ul><li>Fagner Rodrigues - fagner128@gmail.com</li><li>Filipe Borges - filipebkc2209@gmail.com</li></ul>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(39024470336011847662)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'SISADD - Log In'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(39024429938678847609)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_upd_yyyymmddhh24miss=>'20161208162452'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39024470850314847664)
,p_plug_name=>'Log In'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39024444156989847625)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39024471145087847665)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(39024470850314847664)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39024465198460847656)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Log In'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39024470930134847664)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(39024470850314847664)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39024471093404847664)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(39024470850314847664)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(39024464640151847655)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39024471324189847666)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39024471285864847665)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39024471597600847666)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39024471499773847666)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(46454783922091361395)
);
end;
/
prompt --application/deployment/install
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(49667216244127612765)
,p_install_id=>wwv_flow_api.id(46454783922091361395)
,p_name=>'create_all_sequences'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' CREATE SEQUENCE  "EUD_TB_CODIGO_COD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOPARTITION ;',
'',
' CREATE SEQUENCE  "SEQ_SAE_ATOR_SISTEMA"  MINVALUE 1 MAXVALUE 999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOPARTITION ;',
'',
' CREATE SEQUENCE  "SEQ_SAE_FEATURE"  MINVALUE 1 MAXVALUE 999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOPARTITION ;',
'',
' CREATE SEQUENCE  "SEQ_SAE_FUNCIONALIDADE"  MINVALUE 1 MAXVALUE 999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOPARTITION ;',
'',
' CREATE SEQUENCE  "SEQ_SAE_INFORMACAO_OBTIDA"  MINVALUE 1 MAXVALUE 999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOPARTITION ;',
'',
' CREATE SEQUENCE  "SEQ_SAE_KANBAN"  MINVALUE 1 MAXVALUE 999999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOPARTITION ;',
'',
' CREATE SEQUENCE  "SEQ_SAE_MODELO_DADOS"  MINVALUE 1 MAXVALUE 999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOPARTITION ;',
'',
' CREATE SEQUENCE  "SEQ_SAE_PESO"  MINVALUE 1 MAXVALUE 999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOPARTITION ;',
'',
' CREATE SEQUENCE  "SEQ_SAE_PROJETO"  MINVALUE 1 MAXVALUE 999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOPARTITION ;',
'',
' CREATE SEQUENCE  "SEQ_SAE_SOLUCAO"  MINVALUE 1 MAXVALUE 999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOPARTITION ;',
'',
' CREATE SEQUENCE  "SEQ_SAE_TECNICA_ELICITACAO"  MINVALUE 1 MAXVALUE 999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOPARTITION ;',
'',
' CREATE SEQUENCE  "TB_SAE_ERRO_COD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOPARTITION ;',
'',
' CREATE SEQUENCE  "SEQ_SAE_PARAMETRO"  MINVALUE 1 MAXVALUE 999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOPARTITION ;',
'',
' CREATE SEQUENCE  "SEQ_SAE_REGRA_NEGOCIO"  MINVALUE 1 MAXVALUE 999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOPARTITION ;',
'',
' CREATE SEQUENCE  "SEQ_SAE_REQ_NAO_FUNCIONAL"  MINVALUE 1 MAXVALUE 999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOPARTITION ;',
''))
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(49667216595362612771)
,p_script_id=>wwv_flow_api.id(49667216244127612765)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'EUD_TB_CODIGO_COD_SEQ'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_updated_on=>to_date('20161214132642','YYYYMMDDHH24MISS')
,p_created_by=>'FILIPEBORGES'
,p_created_on=>to_date('20161214132642','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(49667216325637612769)
,p_script_id=>wwv_flow_api.id(49667216244127612765)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'SEQ_SAE_ATOR_SISTEMA'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_updated_on=>to_date('20161214132642','YYYYMMDDHH24MISS')
,p_created_by=>'FILIPEBORGES'
,p_created_on=>to_date('20161214132642','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(49667216951270612772)
,p_script_id=>wwv_flow_api.id(49667216244127612765)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'SEQ_SAE_FEATURE'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_updated_on=>to_date('20161214132642','YYYYMMDDHH24MISS')
,p_created_by=>'FILIPEBORGES'
,p_created_on=>to_date('20161214132642','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(49667217112709612772)
,p_script_id=>wwv_flow_api.id(49667216244127612765)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'SEQ_SAE_FUNCIONALIDADE'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_updated_on=>to_date('20161214132642','YYYYMMDDHH24MISS')
,p_created_by=>'FILIPEBORGES'
,p_created_on=>to_date('20161214132642','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(49667217359272612772)
,p_script_id=>wwv_flow_api.id(49667216244127612765)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'SEQ_SAE_INFORMACAO_OBTIDA'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_updated_on=>to_date('20161214132642','YYYYMMDDHH24MISS')
,p_created_by=>'FILIPEBORGES'
,p_created_on=>to_date('20161214132642','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(49667217506674612773)
,p_script_id=>wwv_flow_api.id(49667216244127612765)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'SEQ_SAE_KANBAN'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_updated_on=>to_date('20161214132642','YYYYMMDDHH24MISS')
,p_created_by=>'FILIPEBORGES'
,p_created_on=>to_date('20161214132642','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(49667217763063612773)
,p_script_id=>wwv_flow_api.id(49667216244127612765)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'SEQ_SAE_MODELO_DADOS'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_updated_on=>to_date('20161214132642','YYYYMMDDHH24MISS')
,p_created_by=>'FILIPEBORGES'
,p_created_on=>to_date('20161214132642','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(49667217907613612773)
,p_script_id=>wwv_flow_api.id(49667216244127612765)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'SEQ_SAE_PARAMETRO'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_updated_on=>to_date('20161214132642','YYYYMMDDHH24MISS')
,p_created_by=>'FILIPEBORGES'
,p_created_on=>to_date('20161214132642','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(49667218148504612773)
,p_script_id=>wwv_flow_api.id(49667216244127612765)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'SEQ_SAE_PESO'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_updated_on=>to_date('20161214132642','YYYYMMDDHH24MISS')
,p_created_by=>'FILIPEBORGES'
,p_created_on=>to_date('20161214132642','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(49667218352223612773)
,p_script_id=>wwv_flow_api.id(49667216244127612765)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'SEQ_SAE_PROJETO'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_updated_on=>to_date('20161214132642','YYYYMMDDHH24MISS')
,p_created_by=>'FILIPEBORGES'
,p_created_on=>to_date('20161214132642','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(49667218502088612774)
,p_script_id=>wwv_flow_api.id(49667216244127612765)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'SEQ_SAE_REGRA_NEGOCIO'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_updated_on=>to_date('20161214132642','YYYYMMDDHH24MISS')
,p_created_by=>'FILIPEBORGES'
,p_created_on=>to_date('20161214132642','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(49667218782978612774)
,p_script_id=>wwv_flow_api.id(49667216244127612765)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'SEQ_SAE_REQ_NAO_FUNCIONAL'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_updated_on=>to_date('20161214132642','YYYYMMDDHH24MISS')
,p_created_by=>'FILIPEBORGES'
,p_created_on=>to_date('20161214132642','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(49667218958182612774)
,p_script_id=>wwv_flow_api.id(49667216244127612765)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'SEQ_SAE_SOLUCAO'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_updated_on=>to_date('20161214132642','YYYYMMDDHH24MISS')
,p_created_by=>'FILIPEBORGES'
,p_created_on=>to_date('20161214132642','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(49667219121453612775)
,p_script_id=>wwv_flow_api.id(49667216244127612765)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'SEQ_SAE_TECNICA_ELICITACAO'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_updated_on=>to_date('20161214132642','YYYYMMDDHH24MISS')
,p_created_by=>'FILIPEBORGES'
,p_created_on=>to_date('20161214132642','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(49667216767117612772)
,p_script_id=>wwv_flow_api.id(49667216244127612765)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'TB_SAE_ERRO_COD_SEQ'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_updated_on=>to_date('20161214132642','YYYYMMDDHH24MISS')
,p_created_by=>'FILIPEBORGES'
,p_created_on=>to_date('20161214132642','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(49666452547501583762)
,p_install_id=>wwv_flow_api.id(46454783922091361395)
,p_name=>'create_all_tables_triggers'
,p_sequence=>30
,p_script_type=>'INSTALL'
,p_script_option=>'TABLE'
,p_script_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'CREATE TABLE "TB_SAE_PROJETO" ',
'   (	"COD" NUMBER(6,0) NOT NULL ENABLE, ',
'	"NOME_PROJETO" VARCHAR2(50), ',
'	"DESCR_PROJETO" VARCHAR2(500), ',
'	"OBJETIVO" VARCHAR2(500), ',
'	"BENEFICIO" VARCHAR2(500), ',
'	"ENVOLVIDO" VARCHAR2(2000), ',
'	"CADASTRADO_POR" VARCHAR2(100), ',
'	 CONSTRAINT "PK_PROJETO" PRIMARY KEY ("COD")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "TB_SAE_ATOR_SISTEMA" ',
'   (	"COD" NUMBER(3,0) NOT NULL ENABLE, ',
'	"COD_PROJETO" NUMBER(6,0) NOT NULL ENABLE, ',
'	"NOME_ATOR" VARCHAR2(100), ',
'	"DESCR_ATOR" VARCHAR2(500), ',
'	"TIPO_INTERACAO" VARCHAR2(50), ',
'	 CONSTRAINT "PK_ATOR_SISTEMA" PRIMARY KEY ("COD")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "TB_SAE_TIPO_CODIGO" ',
'   (	"COD" NUMBER NOT NULL ENABLE, ',
'	"TIPO" VARCHAR2(30 CHAR), ',
'	"FORMATO" VARCHAR2(10 CHAR), ',
'	 CONSTRAINT "EUD_TB_TIPO_CODIGO_PK" PRIMARY KEY ("COD")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "TB_SAE_CODIGO" ',
'   (	"COD" NUMBER NOT NULL ENABLE, ',
'	"TITULO" VARCHAR2(70 CHAR), ',
'	"COMENTARIO" VARCHAR2(100 CHAR), ',
'	"CODIGO" BLOB, ',
'	"NOME_ARQUIVO" VARCHAR2(100 CHAR), ',
'	"TIPO_MIME" VARCHAR2(100 CHAR), ',
'	"DATA_MODIFICACAO_ARQ" DATE, ',
'	"EUD_TB_TIPO_CODIGO_COD" NUMBER NOT NULL ENABLE, ',
'	"CADASTRADO_POR" VARCHAR2(50 CHAR), ',
'	"CADASTRADO_EM" DATE, ',
'	"ATUALIZADO_EM" DATE, ',
'	 CONSTRAINT "EUD_TB_CODIGO_PK" PRIMARY KEY ("COD")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "TB_SAE_TIPO_ERRO" ',
'   (	"COD" NUMBER(20,0) NOT NULL ENABLE, ',
'	"NOME" VARCHAR2(100 CHAR), ',
'	 CONSTRAINT "TB_SAE_TIPO_ERRO_PK" PRIMARY KEY ("COD")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "TB_SAE_ERRO" ',
'   (	"COD" NUMBER(20,0) NOT NULL ENABLE, ',
'	"TB_SAE_TIPO_ERRO_COD" NUMBER(20,0) NOT NULL ENABLE, ',
'	"NOME" VARCHAR2(150 CHAR), ',
'	"DESCRICAO" VARCHAR2(300 CHAR), ',
'	"CAUSA" VARCHAR2(300 CHAR), ',
'	"ANEXO_TELA" BLOB, ',
'	"SOLUCAO" VARCHAR2(300 CHAR), ',
'	"CADASTRADO_POR" VARCHAR2(100 CHAR), ',
'	"CADASTRADO_EM" DATE, ',
'	"ATUALIZADO_POR" VARCHAR2(100 CHAR), ',
'	"ATUALIZADO_EM" DATE, ',
'	"VERSAO_APEX" VARCHAR2(50 CHAR), ',
'	"WORKSPACE_APP" VARCHAR2(150 CHAR), ',
'	"ID_APP" NUMBER(20,0), ',
'	"VERSAO_APP" VARCHAR2(30 CHAR), ',
'	"STATUS_ERRO_APP" CHAR(1 CHAR), ',
'	 CONSTRAINT "TB_SAE_ERRO_PK" PRIMARY KEY ("COD")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "TB_SAE_ERRO_CONHECIDO" ',
'   (	"COD" NUMBER(6,0) NOT NULL ENABLE, ',
'	"NOME_TITULO" VARCHAR2(200), ',
'	"DESCR_ERRO" VARCHAR2(2000), ',
'	"CAUSA_ERRO" VARCHAR2(500), ',
'	"MOMENTO_ERRO" VARCHAR2(100), ',
'	"SE_POSSUI_SOLUCAO" CHAR(1), ',
'	 CONSTRAINT "PK_ERRO_CONHECIDO" PRIMARY KEY ("COD")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "TB_SAE_FEATURE" ',
'   (	"COD" NUMBER(3,0) NOT NULL ENABLE, ',
'	"COD_PROJETO" NUMBER(6,0) NOT NULL ENABLE, ',
'	"NOME_FEATURE" VARCHAR2(50), ',
'	"DESCR_FEATURE" VARCHAR2(100), ',
'	 CONSTRAINT "PK_FEATURE" PRIMARY KEY ("COD")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "TB_SAE_FUNCIONALIDADE" ',
'   (	"COD" NUMBER(6,0) NOT NULL ENABLE, ',
'	"COD_FEATURE" NUMBER(3,0) NOT NULL ENABLE, ',
'	"NOME_FUNCIONALIDADE" VARCHAR2(50), ',
'	"DESCR_FUNCIONALIDADE" VARCHAR2(1000), ',
'	"CRITERIO_ACEITACAO" VARCHAR2(2000), ',
'	 CONSTRAINT "PK_FUNCIONALIDADE" PRIMARY KEY ("COD")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "TB_SAE_INFORMACAO_OBTIDA" ',
'   (	"COD" NUMBER(6,0) NOT NULL ENABLE, ',
'	"COD_PROJETO" NUMBER(6,0) NOT NULL ENABLE, ',
'	"INFORMACAO_LEVANTADA" VARCHAR2(4000), ',
'	"DATA_INFORMACAO" DATE, ',
'	"PROBLEMA" VARCHAR2(4000), ',
'	"PROVAVEL_SOLUCAO" VARCHAR2(4000), ',
'	"LIMITE_APLICACAO" VARCHAR2(500), ',
'	"OBSERVACAO" VARCHAR2(4000), ',
'	 CONSTRAINT "PK_INFORMACAO_OBTIDA" PRIMARY KEY ("COD")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "TB_SAE_KANBAN" ',
'   (	"COD" NUMBER(9,0) NOT NULL ENABLE, ',
'	"COD_PROJETO" NUMBER(6,0) NOT NULL ENABLE, ',
'	"NUMERO_COLUNA" NUMBER, ',
'	"FUNCIONALIDADE" VARCHAR2(50), ',
'	 CONSTRAINT "PK_KANBAN" PRIMARY KEY ("COD")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "TB_SAE_MODELO_DADOS" ',
'   (	"COD" NUMBER(6,0) NOT NULL ENABLE, ',
'	"COD_PROJETO" NUMBER(6,0) NOT NULL ENABLE, ',
'	"NOME_MODELO" VARCHAR2(50), ',
'	"DESCR_MODELO" VARCHAR2(500), ',
'	"ARQUIVO_MODELO" BLOB, ',
'	"NOME_ARQUIVO" VARCHAR2(100), ',
'	"MIMETYPE" VARCHAR2(255), ',
'	"FILENAME" VARCHAR2(400), ',
'	"DATA_CADASTRO_EM" TIMESTAMP (6) WITH LOCAL TIME ZONE, ',
'	"DATA_ATUALIZADO_EM" TIMESTAMP (6) WITH LOCAL TIME ZONE, ',
'	"UPADO_POR" VARCHAR2(55), ',
'	"ATUALIZADO_POR" VARCHAR2(55), ',
'	"OBSERVACAO" VARCHAR2(2000), ',
'	"SE_VALIDA" CHAR(1), ',
'	 CONSTRAINT "PK_MODELO_DADOS" PRIMARY KEY ("COD")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "TB_SAE_PARAMETRO" ',
'   (	"COD" NUMBER(3,0) NOT NULL ENABLE, ',
'	"NOME_PARAMETRO" VARCHAR2(20), ',
'	"SE_EXCLUIR" CHAR(1), ',
'	 CONSTRAINT "PK_PARAMETRO" PRIMARY KEY ("COD")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "TB_SAE_TECNICA_ELICITACAO" ',
'   (	"COD" NUMBER(3,0) NOT NULL ENABLE, ',
'	"NOME_TECNICA" VARCHAR2(50), ',
'	"DESCR_TECNICA" VARCHAR2(500), ',
'	"OBJETIVO" VARCHAR2(500), ',
'	"LINK_DINAMICA" VARCHAR2(100), ',
'	 CONSTRAINT "PK_TECNICA_ELICITACAO" PRIMARY KEY ("COD")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "TB_SAE_PESO" ',
'   (	"COD" NUMBER(6,0) NOT NULL ENABLE, ',
'	"COD_TECNICA_ELICITACAO" NUMBER(3,0) NOT NULL ENABLE, ',
'	"COD_PARAMETRO" NUMBER(3,0) NOT NULL ENABLE, ',
'	"VALOR_PESO" NUMBER(2,0), ',
'	 CONSTRAINT "PK_PESO" PRIMARY KEY ("COD")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "TB_SAE_REGRA_NEGOCIO" ',
'   (	"COD" NUMBER(6,0) NOT NULL ENABLE, ',
'	"COD_PROJETO" NUMBER(6,0) NOT NULL ENABLE, ',
'	"NOME_REGRA_NEGOCIO" VARCHAR2(50), ',
'	"DESCR_REGRA_NEGOCIO" VARCHAR2(2000), ',
'	 CONSTRAINT "PK_REGRA_NEGOCIO" PRIMARY KEY ("COD")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "TB_SAE_REQUISITO_NAO_FUNCIONAL" ',
'   (	"COD" NUMBER(6,0) NOT NULL ENABLE, ',
'	"COD_PROJETO" NUMBER(6,0) NOT NULL ENABLE, ',
'	"NOME_REQ_NAO_FUNCIONAL" VARCHAR2(50), ',
'	"DESCR_REQ_NAO_FUNCIONAL" VARCHAR2(500), ',
'	 CONSTRAINT "PK_REQUISITO_NAO_FUNCIONAL" PRIMARY KEY ("COD")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "TB_SAE_SOLUCAO" ',
'   (	"COD" NUMBER(6,0) NOT NULL ENABLE, ',
'	"COD_ERRO_CONHECIDO" NUMBER(6,0) NOT NULL ENABLE, ',
'	"POSSIVEL_SOLUCAO" VARCHAR2(4000), ',
'	"SOLUCAO_DEFINITIVA" VARCHAR2(4000), ',
'	 CONSTRAINT "PK_SOLUCAO" PRIMARY KEY ("COD")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'ALTER TABLE "TB_SAE_CODIGO" ADD CONSTRAINT "EUD_TB_COD_EUD_TB_TIPO_COD_FK" FOREIGN KEY ("EUD_TB_TIPO_CODIGO_COD")',
'	  REFERENCES "TB_SAE_TIPO_CODIGO" ("COD") ENABLE;',
'',
'ALTER TABLE "TB_SAE_ATOR_SISTEMA" ADD CONSTRAINT "FK_ATOR_SISTEMA_PROJETO" FOREIGN KEY ("COD_PROJETO")',
'	  REFERENCES "TB_SAE_PROJETO" ("COD") ENABLE;',
'',
'ALTER TABLE "TB_SAE_FEATURE" ADD CONSTRAINT "FK_FEATURE_PROJETO" FOREIGN KEY ("COD_PROJETO")',
'	  REFERENCES "TB_SAE_PROJETO" ("COD") ENABLE;',
'',
'ALTER TABLE "TB_SAE_FUNCIONALIDADE" ADD CONSTRAINT "FK_FUNCIONALIDADE_FEATURE" FOREIGN KEY ("COD_FEATURE")',
'	  REFERENCES "TB_SAE_FEATURE" ("COD") ENABLE;',
'',
'ALTER TABLE "TB_SAE_INFORMACAO_OBTIDA" ADD CONSTRAINT "FK_INFORMACAO_OBTIDA_PROJETO" FOREIGN KEY ("COD_PROJETO")',
'	  REFERENCES "TB_SAE_PROJETO" ("COD") ENABLE;',
'',
'ALTER TABLE "TB_SAE_KANBAN" ADD CONSTRAINT "FK_KANBAN_PROJETO" FOREIGN KEY ("COD_PROJETO")',
'	  REFERENCES "TB_SAE_PROJETO" ("COD") ENABLE;',
'',
'ALTER TABLE "TB_SAE_MODELO_DADOS" ADD CONSTRAINT "FK_MODELO_DADOS_PROJETO" FOREIGN KEY ("COD_PROJETO")',
'	  REFERENCES "TB_SAE_PROJETO" ("COD") ENABLE;',
'',
'ALTER TABLE "TB_SAE_PESO" ADD CONSTRAINT "FK_PESO_PARAMETRO" FOREIGN KEY ("COD_PARAMETRO")',
'	  REFERENCES "TB_SAE_PARAMETRO" ("COD") ENABLE;',
'',
'ALTER TABLE "TB_SAE_PESO" ADD CONSTRAINT "FK_PESO_TECNICA_ELICITACAO" FOREIGN KEY ("COD_TECNICA_ELICITACAO")',
'	  REFERENCES "TB_SAE_TECNICA_ELICITACAO" ("COD") ENABLE;',
'',
'ALTER TABLE "TB_SAE_REGRA_NEGOCIO" ADD CONSTRAINT "FK_REGRA_NEGOCIO_PROJETO" FOREIGN KEY ("COD_PROJETO")',
'	  REFERENCES "TB_SAE_PROJETO" ("COD") ENABLE;',
'',
'ALTER TABLE "TB_SAE_REQUISITO_NAO_FUNCIONAL" ADD CONSTRAINT "FK_REQ_NAO_FUNCIONAL_PROJETO" FOREIGN KEY ("COD_PROJETO")',
'	  REFERENCES "TB_SAE_PROJETO" ("COD") ENABLE;',
'',
'ALTER TABLE "TB_SAE_SOLUCAO" ADD CONSTRAINT "FK_SOLUCAO_ERRO_CONHECIDO" FOREIGN KEY ("COD_ERRO_CONHECIDO")',
'	  REFERENCES "TB_SAE_ERRO_CONHECIDO" ("COD") ENABLE;',
'',
'ALTER TABLE "TB_SAE_ERRO" ADD CONSTRAINT "TB_SAE_ERRO_TIPO_ERRO_FK" FOREIGN KEY ("TB_SAE_TIPO_ERRO_COD")',
'	  REFERENCES "TB_SAE_TIPO_ERRO" ("COD") ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "BI_SAE_ATOR_SISTEMA" ',
'BEFORE INSERT ON TB_SAE_ATOR_SISTEMA ',
'FOR EACH ROW ',
' WHEN (NEW.COD IS NULL) BEGIN ',
'    SELECT SEQ_SAE_ATOR_SISTEMA.NEXTVAL INTO :NEW.COD FROM DUAL; ',
'END;',
'',
'/',
'',
'',
'ALTER TRIGGER "BI_SAE_ATOR_SISTEMA" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "BI_SAE_ERRO_CONHECIDO" ',
'BEFORE INSERT ON TB_SAE_ERRO_CONHECIDO ',
'FOR EACH ROW ',
' WHEN (NEW.COD IS NULL) BEGIN ',
'    SELECT SEQ_SAE_ERRO_CONHECIDO.NEXTVAL INTO :NEW.COD FROM DUAL; ',
'END;',
'',
'/',
'',
'',
'ALTER TRIGGER "BI_SAE_ERRO_CONHECIDO" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "BI_SAE_FEATURE" ',
'BEFORE INSERT ON TB_SAE_FEATURE ',
'FOR EACH ROW ',
' WHEN (NEW.COD IS NULL) BEGIN ',
'    SELECT SEQ_SAE_FEATURE.NEXTVAL INTO :NEW.COD FROM DUAL; ',
'END;',
'',
'/',
'',
'',
'ALTER TRIGGER "BI_SAE_FEATURE" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "BI_SAE_FUNCIONALIDADE" ',
'BEFORE INSERT ON TB_SAE_FUNCIONALIDADE ',
'FOR EACH ROW ',
' WHEN (NEW.COD IS NULL) BEGIN ',
'    SELECT SEQ_SAE_FUNCIONALIDADE.NEXTVAL INTO :NEW.COD FROM DUAL; ',
'END;',
'',
'/',
'',
'',
'ALTER TRIGGER "BI_SAE_FUNCIONALIDADE" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "BI_SAE_INFORMACAO_OBTIDA" ',
'BEFORE INSERT ON TB_SAE_INFORMACAO_OBTIDA ',
'FOR EACH ROW ',
' WHEN (NEW.COD IS NULL) BEGIN ',
'    SELECT SEQ_SAE_INFORMACAO_OBTIDA.NEXTVAL INTO :NEW.COD FROM DUAL; ',
'    if :new.DATA_INFORMACAO is null then',
'        :new.DATA_INFORMACAO := localtimestamp;',
'    end if;',
'END;',
'',
'/',
'',
'',
'ALTER TRIGGER "BI_SAE_INFORMACAO_OBTIDA" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "BI_SAE_MODELO_DADOS" ',
'BEFORE INSERT ON TB_SAE_MODELO_DADOS ',
'FOR EACH ROW ',
' WHEN (NEW.COD IS NULL) BEGIN ',
'    SELECT SEQ_SAE_MODELO_DADOS.NEXTVAL INTO :NEW.COD FROM DUAL; ',
'END;',
'',
'/',
'',
'',
'ALTER TRIGGER "BI_SAE_MODELO_DADOS" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "BI_SAE_PARAMETRO" ',
'BEFORE INSERT ON TB_SAE_PARAMETRO ',
'FOR EACH ROW ',
' WHEN (NEW.COD IS NULL) BEGIN ',
'    SELECT SEQ_SAE_PARAMETRO.NEXTVAL INTO :NEW.COD FROM DUAL; ',
'END;',
'',
'/',
'',
'',
'ALTER TRIGGER "BI_SAE_PARAMETRO" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "BI_SAE_PESO" ',
'BEFORE INSERT ON TB_SAE_PESO ',
'FOR EACH ROW ',
' WHEN (NEW.COD IS NULL) BEGIN ',
'    SELECT SEQ_SAE_PESO.NEXTVAL INTO :NEW.COD FROM DUAL; ',
'END;',
'',
'/',
'',
'',
'ALTER TRIGGER "BI_SAE_PESO" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "BI_SAE_PROJETO" ',
'BEFORE INSERT ON TB_SAE_PROJETO ',
'FOR EACH ROW ',
' WHEN (NEW.COD IS NULL) BEGIN ',
'    SELECT SEQ_SAE_PROJETO.NEXTVAL INTO :NEW.COD FROM DUAL; ',
'END;',
'',
'/',
'',
'',
'ALTER TRIGGER "BI_SAE_PROJETO" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "BI_SAE_REGRA_NEGOCIO" ',
'BEFORE INSERT ON TB_SAE_REGRA_NEGOCIO ',
'FOR EACH ROW ',
' WHEN (NEW.COD IS NULL) BEGIN ',
'    SELECT SEQ_SAE_REGRA_NEGOCIO.NEXTVAL INTO :NEW.COD FROM DUAL; ',
'END;',
'',
'/',
'',
'',
'ALTER TRIGGER "BI_SAE_REGRA_NEGOCIO" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "BI_SAE_REQUISITO_NAO_FUNCIONAL" ',
'BEFORE INSERT ON TB_SAE_REQUISITO_NAO_FUNCIONAL ',
'FOR EACH ROW ',
' WHEN (NEW.COD IS NULL) BEGIN ',
'    SELECT SEQ_SAE_REQ_NAO_FUNCIONAL.NEXTVAL INTO :NEW.COD FROM DUAL; ',
'END;',
'',
'/',
'',
'',
'ALTER TRIGGER "BI_SAE_REQUISITO_NAO_FUNCIONAL" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "BI_SAE_SOLUCAO" ',
'BEFORE INSERT ON TB_SAE_SOLUCAO ',
'FOR EACH ROW ',
' WHEN (NEW.COD IS NULL) BEGIN ',
'    SELECT SEQ_SAE_SOLUCAO.NEXTVAL INTO :NEW.COD FROM DUAL; ',
'END;',
'',
'/',
'',
'',
'ALTER TRIGGER "BI_SAE_SOLUCAO" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "BI_SAE_TECNCA _ELICITACAO" ',
'BEFORE INSERT ON TB_SAE_TECNICA_ELICITACAO ',
'FOR EACH ROW ',
' WHEN (NEW.COD IS NULL) BEGIN ',
'    SELECT SEQ_SAE_TECNICA_ELICITACAO.NEXTVAL INTO :NEW.COD FROM DUAL; ',
'END;',
'',
'/',
'',
'',
'ALTER TRIGGER "BI_SAE_TECNCA _ELICITACAO" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "BI_SAE_KANBAN" ',
'BEFORE INSERT ON TB_SAE_KANBAN ',
'FOR EACH ROW ',
' WHEN (NEW.COD IS NULL) BEGIN ',
'    SELECT SEQ_SAE_KANBAN.NEXTVAL INTO :NEW.COD FROM DUAL; ',
'END;',
'',
'/',
'',
'',
'ALTER TRIGGER "BI_SAE_KANBAN" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "EUD_TB_CODIGO_COD_TRG" BEFORE',
'  INSERT ON "TB_SAE_CODIGO" FOR EACH ROW  WHEN (NEW.COD IS NULL) BEGIN :NEW.COD := EUD_TB_CODIGO_COD_SEQ.NEXTVAL;',
'END;',
'',
'/',
'',
'',
'ALTER TRIGGER "EUD_TB_CODIGO_COD_TRG" ENABLE;',
'',
'CREATE OR REPLACE EDITIONABLE TRIGGER "TB_SAE_ERRO_COD_TRG" BEFORE',
'  INSERT ON TB_SAE_ERRO FOR EACH ROW  WHEN (NEW.COD IS NULL) BEGIN :NEW.COD := TB_SAE_ERRO_COD_SEQ.NEXTVAL;',
'END;',
'',
'/',
'',
'',
'ALTER TRIGGER "TB_SAE_ERRO_COD_TRG" ENABLE;',
''))
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(49666452629478583783)
,p_script_id=>wwv_flow_api.id(49666452547501583762)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TB_SAE_ATOR_SISTEMA'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_updated_on=>to_date('20161214132152','YYYYMMDDHH24MISS')
,p_created_by=>'FILIPEBORGES'
,p_created_on=>to_date('20161214132152','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(49666452898282583785)
,p_script_id=>wwv_flow_api.id(49666452547501583762)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TB_SAE_CODIGO'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_updated_on=>to_date('20161214132152','YYYYMMDDHH24MISS')
,p_created_by=>'FILIPEBORGES'
,p_created_on=>to_date('20161214132152','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(49666453003176583785)
,p_script_id=>wwv_flow_api.id(49666452547501583762)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TB_SAE_ERRO'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_updated_on=>to_date('20161214132152','YYYYMMDDHH24MISS')
,p_created_by=>'FILIPEBORGES'
,p_created_on=>to_date('20161214132152','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(49666453226316583785)
,p_script_id=>wwv_flow_api.id(49666452547501583762)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TB_SAE_ERRO_CONHECIDO'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_updated_on=>to_date('20161214132152','YYYYMMDDHH24MISS')
,p_created_by=>'FILIPEBORGES'
,p_created_on=>to_date('20161214132152','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(49666453445188583785)
,p_script_id=>wwv_flow_api.id(49666452547501583762)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TB_SAE_FEATURE'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_updated_on=>to_date('20161214132152','YYYYMMDDHH24MISS')
,p_created_by=>'FILIPEBORGES'
,p_created_on=>to_date('20161214132152','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(49666453675757583785)
,p_script_id=>wwv_flow_api.id(49666452547501583762)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TB_SAE_FUNCIONALIDADE'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_updated_on=>to_date('20161214132152','YYYYMMDDHH24MISS')
,p_created_by=>'FILIPEBORGES'
,p_created_on=>to_date('20161214132152','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(49666453811660583785)
,p_script_id=>wwv_flow_api.id(49666452547501583762)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TB_SAE_INFORMACAO_OBTIDA'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_updated_on=>to_date('20161214132152','YYYYMMDDHH24MISS')
,p_created_by=>'FILIPEBORGES'
,p_created_on=>to_date('20161214132152','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(49666454016984583786)
,p_script_id=>wwv_flow_api.id(49666452547501583762)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TB_SAE_KANBAN'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_updated_on=>to_date('20161214132152','YYYYMMDDHH24MISS')
,p_created_by=>'FILIPEBORGES'
,p_created_on=>to_date('20161214132152','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(49666454208702583786)
,p_script_id=>wwv_flow_api.id(49666452547501583762)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TB_SAE_MODELO_DADOS'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_updated_on=>to_date('20161214132152','YYYYMMDDHH24MISS')
,p_created_by=>'FILIPEBORGES'
,p_created_on=>to_date('20161214132152','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(49666454427511583786)
,p_script_id=>wwv_flow_api.id(49666452547501583762)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TB_SAE_PARAMETRO'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_updated_on=>to_date('20161214132152','YYYYMMDDHH24MISS')
,p_created_by=>'FILIPEBORGES'
,p_created_on=>to_date('20161214132152','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(49666454647205583786)
,p_script_id=>wwv_flow_api.id(49666452547501583762)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TB_SAE_PESO'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_updated_on=>to_date('20161214132152','YYYYMMDDHH24MISS')
,p_created_by=>'FILIPEBORGES'
,p_created_on=>to_date('20161214132152','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(49666454814096583786)
,p_script_id=>wwv_flow_api.id(49666452547501583762)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TB_SAE_PROJETO'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_updated_on=>to_date('20161214132152','YYYYMMDDHH24MISS')
,p_created_by=>'FILIPEBORGES'
,p_created_on=>to_date('20161214132152','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(49666465036588583787)
,p_script_id=>wwv_flow_api.id(49666452547501583762)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TB_SAE_REGRA_NEGOCIO'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_updated_on=>to_date('20161214132152','YYYYMMDDHH24MISS')
,p_created_by=>'FILIPEBORGES'
,p_created_on=>to_date('20161214132152','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(49666465282456583787)
,p_script_id=>wwv_flow_api.id(49666452547501583762)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TB_SAE_REQUISITO_NAO_FUNCIONAL'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_updated_on=>to_date('20161214132152','YYYYMMDDHH24MISS')
,p_created_by=>'FILIPEBORGES'
,p_created_on=>to_date('20161214132152','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(49666465488836583787)
,p_script_id=>wwv_flow_api.id(49666452547501583762)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TB_SAE_SOLUCAO'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_updated_on=>to_date('20161214132152','YYYYMMDDHH24MISS')
,p_created_by=>'FILIPEBORGES'
,p_created_on=>to_date('20161214132152','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(49666465684333583788)
,p_script_id=>wwv_flow_api.id(49666452547501583762)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TB_SAE_TECNICA_ELICITACAO'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_updated_on=>to_date('20161214132152','YYYYMMDDHH24MISS')
,p_created_by=>'FILIPEBORGES'
,p_created_on=>to_date('20161214132152','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(49666465888496583788)
,p_script_id=>wwv_flow_api.id(49666452547501583762)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TB_SAE_TIPO_CODIGO'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_updated_on=>to_date('20161214132152','YYYYMMDDHH24MISS')
,p_created_by=>'FILIPEBORGES'
,p_created_on=>to_date('20161214132152','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(49666466082396583788)
,p_script_id=>wwv_flow_api.id(49666452547501583762)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TB_SAE_TIPO_ERRO'
,p_last_updated_by=>'FILIPEBORGES'
,p_last_updated_on=>to_date('20161214132152','YYYYMMDDHH24MISS')
,p_created_by=>'FILIPEBORGES'
,p_created_on=>to_date('20161214132152','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(49667404570241626307)
,p_install_id=>wwv_flow_api.id(46454783922091361395)
,p_name=>'insert_necessary_data'
,p_sequence=>40
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'INSERT INTO TB_SAE_TIPO_CODIGO(COD, TIPO, FORMATO) VALUES(1, ''HTML'', ''.html'');',
'INSERT INTO TB_SAE_TIPO_CODIGO(COD, TIPO, FORMATO) VALUES(2, ''CSS'', ''.css'');',
'INSERT INTO TB_SAE_TIPO_CODIGO(COD, TIPO, FORMATO) VALUES(3, ''JAVASCRIPT'', ''.js'');',
'INSERT INTO TB_SAE_TIPO_CODIGO(COD, TIPO, FORMATO) VALUES(4, ''PL/SQL'', ''.sql'');',
'INSERT INTO TB_SAE_TIPO_CODIGO(COD, TIPO, FORMATO) VALUES(5, ''SQL'', ''.sql'');',
'',
'INSERT INTO TB_SAE_TIPO_ERRO(COD, NOME) VALUES(1, ''Erro APEX''); ',
'INSERT INTO TB_SAE_TIPO_ERRO(COD, NOME) VALUES(2, ''Erro Aplicação'');'))
);
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
