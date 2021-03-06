//-------------------------------------------------------------------------------------------------
// Data : 24/01/2012
// Desenvolvedor : P1
// Descri��o Fun��o/Procedure/Tela : Tela principal do sistema, menu concentrador da chamada
// de todas as tela
///ALTERA��ES --------------------------------------------------------------------------------------
// Data :					Descri��o da mudan�a
//
///-------------------------------------------------------------------------------------------------
unit UMain_Logistica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinsdxBarPainter, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxRibbon, dxRibbonGallery, dxScreenTip,
  dxBar, dxRibbonMiniToolbar, Vcl.ImgList, dxBarApplicationMenu, dxBarExtItems,
  cxClasses, dxSkinsdxStatusBarPainter, RzDBStat, RzStatus, Vcl.ExtCtrls,
  RzPanel, dxStatusBar, cxDBExtLookupComboBox, cxDropDownEdit,
  dxSkinChooserGallery, cxBarEditItem, cxPC, dxSkinscxPCPainter,
  cxPCdxBarPopupMenu, dxTabbedMDI, Vcl.RibbonLunaStyleActnCtrls, Vcl.Ribbon;

type
  TFMainLogistica = class(TForm)
    BarManager: TdxBarManager;
    barCadastrosParametros: TdxBar;
    BarManagerBar7: TdxBar;
    BarManagerBar8: TdxBar;
    barCadastrosAuxiliares: TdxBar;
    BarManagerBar9: TdxBar;
    BarManagerBar10: TdxBar;
    BarManagerBar11: TdxBar;
    BarCadastrosBasicos: TdxBar;
    BarManagerBar6: TdxBar;
    BarManagerBar13: TdxBar;
    dxBtnGrupo: TdxBarLargeButton;
    dxBtnRegional: TdxBarLargeButton;
    dxBtnUnidade: TdxBarLargeButton;
    dxBtnFazendas: TdxBarLargeButton;
    dxBtnTipoCarga: TdxBarLargeButton;
    dxBtnTipoCana: TdxBarLargeButton;
    cxBtnTalhoes: TdxBarLargeButton;
    dxBtnLogisticaEspacial: TdxBarLargeButton;
    dxBtnMonitoramentoTrafego: TdxBarLargeButton;
    dxGroupBar: TdxBarGroup;
    dxBarPopupMenu: TdxRibbonPopupMenu;
    ApplicationMenu: TdxBarApplicationMenu;
    ilStatusBarImages: TImageList;
    MiniToolbar: TdxRibbonMiniToolbar;
    ppmFontColor: TdxRibbonPopupMenu;
    dxBarScreenTipRepository1: TdxBarScreenTipRepository;
    stGrupo: TdxBarScreenTip;
    stRegional: TdxBarScreenTip;
    stUnidade: TdxBarScreenTip;
    stTiposCana: TdxBarScreenTip;
    stTiposColheita: TdxBarScreenTip;
    stTiposCarga: TdxBarScreenTip;
    stTipoFazenda: TdxBarScreenTip;
    stTipoEquipamento: TdxBarScreenTip;
    stEquipamento: TdxBarScreenTip;
    stTiposPercurso: TdxBarScreenTip;
    stJustificativas: TdxBarScreenTip;
    stRotasFazendas: TdxBarScreenTip;
    stSafras: TdxBarScreenTip;
    stFazendas: TdxBarScreenTip;
    stTalhoes: TdxBarScreenTip;
    stFrentes: TdxBarScreenTip;
    stLogisticaEspacial: TdxBarScreenTip;
    stMonitoramentoTrafego: TdxBarScreenTip;
    stAtivarunidade: TdxBarScreenTip;
    stAtivarSafra: TdxBarScreenTip;
    stTrocarUsuario: TdxBarScreenTip;
    stJanelas: TdxBarScreenTip;
    stLadoaLado: TdxBarScreenTip;
    stCascata: TdxBarScreenTip;
    stSair: TdxBarScreenTip;
    UndoDropDownGallery: TdxRibbonDropDownGallery;
    dxBtnTiposColheita: TdxBarButton;
    dxBtnSafras: TdxBarLargeButton;
    dxBtnFrentes: TdxBarLargeButton;
    dxBtnTiposFazendas: TdxBarButton;
    BarManagerBar3: TdxBar;
    dxBtnAlocacoes: TdxBarLargeButton;
    BarManagerBar5: TdxBar;
    dxBtnRelPosicaoFrentes: TdxBarLargeButton;
    dxBtnRelAlocacoesManuais: TdxBarLargeButton;
    dxBtnTipoEquipamento: TdxBarButton;
    ParametosAtivos: TdxBar;
    dxComboUnidade: TCustomdxBarCombo;
    dxComboSafraAtiva: TCustomdxBarCombo;
    dxBtnSair: TdxBarLargeButton;
    dxComboUsuario: TCustomdxBarCombo;
    OpcoesTela: TdxBar;
    dxBtnJanela: TdxBarSubItem;
    dxBtnLadoLado: TdxBarButton;
    dxBtnCascata: TdxBarButton;
    dxBtnOrganizar: TdxBarButton;
    QA: TdxBar;
    dxBtnAtivaUnidade: TdxBarButton;
    dxBtnSelecionarSafra: TdxBarButton;
    dxBtnSelecionarUsuario: TdxBarButton;
    dxBtnTiposPercurso: TdxBarButton;
    dxBtnJustificativas: TdxBarButton;
    dxBtnEquipamentos: TdxBarButton;
    stOrganizar: TdxScreenTip;
    stAlocacao: TdxScreenTip;
    dbxBtnRotasFazendas: TdxBarLargeButton;
    dxBtnParametrosLogistica: TdxBarLargeButton;
    dxBtnParametroMedia: TdxBarLargeButton;
    BarManagerBar1: TdxBar;
    BarManagerBar2: TdxBar;
    dxBtnUsuarios: TdxBarLargeButton;
    dxBtnPerfil: TdxBarLargeButton;
    dxBtnPermissao: TdxBarLargeButton;
    RibbonMenu: TdxRibbon;
    tabCadastros: TdxRibbonTab;
    tabFerramentas: TdxRibbonTab;
    tabRelatorios: TdxRibbonTab;
    tabSelection: TdxRibbonTab;
    tabAdministracao: TdxRibbonTab;
    dxBtnCheckListSistema: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dbxBtnGerenciamentoEnvioRotas: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBtnPerfilAcesso: TdxBarLargeButton;
    dxBtnFormularios: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBtnSafrasClick(Sender: TObject);
    procedure dxBtnGrupoClick(Sender: TObject);
    procedure dxBtnRegionalClick(Sender: TObject);
    procedure dxBtnUnidadeClick(Sender: TObject);
    procedure dxBtnTipoCanaClick(Sender: TObject);
    procedure dxBtnTiposColheitaClick(Sender: TObject);
    procedure dxBtnTiposFazendasClick(Sender: TObject);
    procedure dxBtnFrentesClick(Sender: TObject);
    procedure dxBtnFazendasClick(Sender: TObject);
    procedure cxBtnTalhoesClick(Sender: TObject);
    procedure dxBtnAlocacoesClick(Sender: TObject);
    procedure dxBtnTipoEquipamentoClick(Sender: TObject);
    procedure dxBtnSairClick(Sender: TObject);
    procedure dxComboRegionalDropDown(Sender: TObject);
    procedure dxComboUnidadeDropDown(Sender: TObject);
    procedure dxComboSafraAtivaDropDown(Sender: TObject);
    procedure dxComboGrupoDropDown(Sender: TObject);
    procedure AtualizarStatusBar;
    procedure dxBtnLadoLadoClick(Sender: TObject);
    procedure dxBtnCascataClick(Sender: TObject);
    procedure dxBtnOrganizarClick(Sender: TObject);
    procedure dxBtnLogisticaEspacialClick(Sender: TObject);
    procedure dxBtnMonitoramentoTrafegoClick(Sender: TObject);
    procedure dxBtnTiposPercursoClick(Sender: TObject);
    procedure dxComboUsuarioDropDown(Sender: TObject);
    procedure dxBtnJustificativasClick(Sender: TObject);
    procedure dxBtnEquipamentosClick(Sender: TObject);
    procedure dxBtnTipoCargaClick(Sender: TObject);
    procedure dbxBtnRotasFazendasClick(Sender: TObject);
    procedure dxBtnParametrosLogisticaClick(Sender: TObject);
    procedure dxBtnParametroMediaClick(Sender: TObject);
    procedure dxBtnUsuariosClick(Sender: TObject);
    procedure dxBtnPerfilClick(Sender: TObject);
    procedure dxBtnCheckListSistemaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbxBtnGerenciamentoEnvioRotasClick(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure dxBtnFormulariosClick(Sender: TObject);
    procedure dxBtnPerfilAcessoClick(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMainLogistica: TFMainLogistica;

implementation

{$R *.dfm}

uses U_DM, u_recursos, U_Safras, U_Grupo, U_Regional, U_Unidade, U_Tipo_Cana,
  U_Modalidade_Colheita, U_TipoCargas, U_Tipos_Fazendas, U_Fazendas,
  U_Frentes, U_Talhoes, U_AlocacaoEquipamento,
  U_TipoEquipamento, U_SelecionarSafra, U_AtivarUnidade, U_Traducao_Dev,
  U_Monitoramento_Trafego_Estatico,
  U_Tipos_Percurso, U_Justificativas,
  U_Equipamentos, U_RotasFazenda_Mapas,U_Logistica_Espacial_GMAPS, U_Login,
  U_ParametrosLogistica, U_ParametrosMedia, U_Usuarios, U_PerfilUsuario,
  U_SplashLogin, U_FormLegendaLogisticaGMAPS, U_LoginUsuario,
  U_CheckList_Sistema, U_ControleRotas, U_DisponibilidadesFrentes,
  U_Formularios, U_PermissoesPerfil, U_PerfilPermissao;

procedure TFMainLogistica.dxBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFMainLogistica.cxBtnTalhoesClick(Sender: TObject);
begin
  Criar_Formulario(TF_Talhoes,TdxBarItem(Sender).Caption,false);
end;

procedure TFMainLogistica.dbxBtnGerenciamentoEnvioRotasClick(Sender: TObject);
begin
  Criar_Formulario(TF_ControleRotas,TdxBarItem(Sender).Caption,false);
end;

procedure TFMainLogistica.dbxBtnRotasFazendasClick(Sender: TObject);
begin
  Criar_Formulario(TF_RotasFazenda_Mapas,TdxBarItem(Sender).Caption,false);
end;

procedure TFMainLogistica.dxBtnUsuariosClick(Sender: TObject);
begin
  Criar_Formulario(TF_Usuarios,TdxBarItem(Sender).Caption,false);
end;

procedure TFMainLogistica.dxBarLargeButton2Click(Sender: TObject);
begin
  Criar_Formulario(TF_DisponibilidadesFrentes,TdxBarItem(Sender).Caption,False);
end;

procedure TFMainLogistica.dxBarLargeButton3Click(Sender: TObject);
begin
  Criar_Formulario(TF_PerfilPermissao,TdxBarItem(Sender).Caption,False);
end;

procedure TFMainLogistica.dxBtnAlocacoesClick(Sender: TObject);
begin
  Criar_Formulario(TF_AlocacaoEquipamento,TdxBarItem(Sender).Caption,True);
end;

procedure TFMainLogistica.dxBtnCascataClick(Sender: TObject);
begin
  Cascade;
end;

procedure TFMainLogistica.dxBtnCheckListSistemaClick(Sender: TObject);
begin
  Criar_Formulario(TF_CheckList_Sistema,TdxBarItem(Sender).Caption,false);
end;

procedure TFMainLogistica.dxBtnEquipamentosClick(Sender: TObject);
begin
  Criar_Formulario(TF_Equipamentos,TdxBarItem(Sender).Caption,false);
end;

procedure TFMainLogistica.dxBtnFazendasClick(Sender: TObject);
begin
  Criar_Formulario(TF_Fazendas,TdxBarItem(Sender).Caption,false);
end;

procedure TFMainLogistica.dxBtnFormulariosClick(Sender: TObject);
begin
  Criar_Formulario(TF_Formularios,TdxBarItem(Sender).Caption,False);
end;

procedure TFMainLogistica.dxBtnFrentesClick(Sender: TObject);
begin
  Criar_Formulario(TF_Frentes,TdxBarItem(Sender).Caption,false);
end;

procedure TFMainLogistica.dxBtnGrupoClick(Sender: TObject);
begin
  Criar_Formulario(TF_Grupo,TdxBarItem(Sender).Caption,false);
end;

procedure TFMainLogistica.dxBtnJustificativasClick(Sender: TObject);
begin
  Criar_Formulario(TF_Justificativas,TdxBarItem(Sender).Caption,false);
end;

procedure TFMainLogistica.dxBtnLadoLadoClick(Sender: TObject);
begin
  Tile;
end;

procedure TFMainLogistica.dxBtnOrganizarClick(Sender: TObject);
begin
  ArrangeIcons;
end;

procedure TFMainLogistica.dxBtnParametroMediaClick(Sender: TObject);
begin
  Criar_Formulario(TF_ParametrosMedia,TdxBarItem(Sender).Caption,true);
end;

procedure TFMainLogistica.dxBtnParametrosLogisticaClick(Sender: TObject);
begin
  Criar_Formulario(TF_ParametrosLogistica,TdxBarItem(Sender).Caption,true);
end;

procedure TFMainLogistica.dxBtnPerfilAcessoClick(Sender: TObject);
begin
  Criar_Formulario(TF_PerfilUsuario,TdxBarItem(Sender).Caption,false);
end;

procedure TFMainLogistica.dxBtnPerfilClick(Sender: TObject);
begin
  Criar_Formulario(TF_PerfilUsuario,TdxBarItem(Sender).Caption,false);
end;

procedure TFMainLogistica.dxBtnLogisticaEspacialClick(Sender: TObject);
begin
  Criar_Formulario(TF_Logistica_Espacial_GMAPS ,TdxBarItem(Sender).Caption,true);
end;

procedure TFMainLogistica.dxBtnMonitoramentoTrafegoClick(Sender: TObject);
begin
  Criar_Formulario(TF_Monitoramento_Trafego_Estatico,TdxBarItem(Sender).Caption,false);
end;

procedure TFMainLogistica.dxBtnRegionalClick(Sender: TObject);
begin
  Criar_Formulario(TF_Regional,TdxBarItem(Sender).Caption,false);
end;

procedure TFMainLogistica.dxBtnSafrasClick(Sender: TObject);
begin
  Criar_Formulario(TF_Safras,TdxBarItem(Sender).Caption,false);
end;

procedure TFMainLogistica.dxBtnTipoCanaClick(Sender: TObject);
begin
  Criar_Formulario(TF_Tipo_Cana,TdxBarItem(Sender).Caption,false);
end;

procedure TFMainLogistica.dxBtnTipoCargaClick(Sender: TObject);
begin
  Criar_Formulario(TF_TipoCargas,TdxBarItem(Sender).Caption,false);
end;

procedure TFMainLogistica.dxBtnTipoEquipamentoClick(Sender: TObject);
begin
  Criar_Formulario(TF_TipoEquipamento,TdxBarItem(Sender).Caption,false);
end;

procedure TFMainLogistica.dxBtnTiposColheitaClick(Sender: TObject);
begin
  Criar_Formulario(TF_Modalidade_Colheita,TdxBarItem(Sender).Caption,false);
end;

procedure TFMainLogistica.dxBtnTiposFazendasClick(Sender: TObject);
begin
  Criar_Formulario(TF_Tipos_Fazendas,TdxBarItem(Sender).Caption,false);
end;

procedure TFMainLogistica.dxBtnTiposPercursoClick(Sender: TObject);
begin
  Criar_Formulario(TF_Tipos_Percurso,TdxBarItem(Sender).Caption,false);
end;

procedure TFMainLogistica.dxBtnUnidadeClick(Sender: TObject);
begin
  Criar_Formulario(TF_Unidade,TdxBarItem(Sender).Caption,false);
end;

procedure TFMainLogistica.dxComboGrupoDropDown(Sender: TObject);
begin
  Criar_Formulario(TF_AtivarUnidade,'Selecionar unidade',false);
  AtualizarStatusBar;
end;

procedure TFMainLogistica.dxComboRegionalDropDown(Sender: TObject);
begin
  Criar_Formulario(TF_AtivarUnidade,'Selecionar unidade',false);
  AtualizarStatusBar;
end;

procedure TFMainLogistica.dxComboSafraAtivaDropDown(Sender: TObject);
begin
   Criar_Formulario(TF_SelecionarSafra,'Selecionar safra',false);
   AtualizarStatusBar;
end;

procedure TFMainLogistica.dxComboUnidadeDropDown(Sender: TObject);
begin
  Criar_Formulario(TF_AtivarUnidade,'Selecionar unidade',false);
  AtualizarStatusBar;
end;

procedure TFMainLogistica.dxComboUsuarioDropDown(Sender: TObject);
begin
  Application.CreateForm(TF_LoginUsuario,F_LoginUsuario);
  F_LoginUsuario.ShowModal;
  F_LoginUsuario.Free;
{  Application.CreateForm(TF_Login,F_Login);
  F_Login.ShowModal;
  F_Login.Free;
}
  AtualizarStatusBar;
  AtivarMenu_Ribbon(BarManager,DM.QR_Modulos.FieldByName('cod_modulo').AsInteger);
end;

procedure TFMainLogistica.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Application.MessageBox('Deseja sair do sistema ?','Confirma��o',MB_YESNO + MB_ICONQUESTION) = mrYes then
    Action := caFree
  else
    Abort;
end;

procedure TFMainLogistica.FormCreate(Sender: TObject);
begin
  //Traduz os componentes do DEv para portugues
  SetResorcePortugues;
end;

procedure TFMainLogistica.FormShow(Sender: TObject);
Var vSafraAtual : Boolean;
begin

  DM.QR_Modulos.Open;
  DM.QR_Usuarios.Open;
  RegistrarExtensao('logexp32', 'Arquivo de atualiza��o/licen�a do logExplorer', 'Atualizar Log Explorer', ParamStr(0));

  Verificar_Atualizacoes;

  //----------------------------------------------------------------------------
  //P1 Faz o login do usuario no sistema
  LoginUsuario;

  DM.QR_Safras.Open;

  vSafraAtual := False ;
  while (not vSafraAtual) do
  begin
     if (DM.QR_SafrasDATA_TERMINO.AsString = '') or (DM.QR_Safras.eof) then
       vSafraAtual := True
     else
       DM.QR_Safras.Next;
  end;
   if not DM.QR_Safras.isEmpty then
   begin
       Registrar_Safra(DM.QR_SafrasCOD_SAFRA.AsFloat,
                       DM.QR_SafrasDESCRICAO.AsFloat);
   end;

  AtualizarStatusBar;


  AtivarMenu_Ribbon(BarManager,DM.QR_Modulos.FieldByName('cod_modulo').AsInteger);

  if DM.QR_UsuariosADMINISTRADOR.AsString = 'S' then
    tabAdministracao.Visible := true
   else
    tabAdministracao.Visible := false;

end;

procedure TFMainLogistica.AtualizarStatusBar;
begin
  DM.QR_SafraSelecionada.Close;
  DM.QR_SafraSelecionada.Open;

  Caption := 'LogExplorer';
  Caption := Caption + '                        ' + ' Safra atual ' +  '   '  + (DM.QR_SafraSelecionadaDESCRICAO_SAFRA .AsString);

  dxComboUnidade.Text    := 'Unidade  ' + DM.QR_UnidadeNOME.AsString;
  dxComboSafraAtiva.Text := 'Safra    ' + Zeros_Esquerda(DM.QR_SafraSelecionadaCOD_SAFRA.AsString,3) + ' - ' + DM.QR_SafraSelecionadaDESCRICAO_SAFRA.AsString;
  dxComboUsuario.Text    := DM.QR_UsuariosUSUARIO.AsString;
  dxComboUnidade.Width    := 180;
  dxComboSafraAtiva.Width := 180;
  dxComboUsuario.Width    := 180;
end;
end.
