object uPrincipal: TuPrincipal
  Left = 0
  Top = 0
  Caption = 'Sala'
  ClientHeight = 431
  ClientWidth = 720
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 0
    Top = 0
    Width = 720
    Height = 431
    Align = alClient
    ColCount = 5
    DataSource = DataSource1
    PanelHeight = 143
    PanelWidth = 140
    TabOrder = 0
    OnClick = DBCtrlGrid1Click
    OnPaintPanel = DBCtrlGrid1PaintPanel
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 140
      Height = 143
      Align = alClient
      Caption = 'Panel1'
      Color = clHighlight
      ParentBackground = False
      TabOrder = 0
      OnClick = Panel1Click
    end
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 472
    Top = 80
    object FDMemTable1Vaga: TStringField
      FieldName = 'Vaga'
    end
    object FDMemTable1Ocupada: TBooleanField
      FieldName = 'Ocupada'
    end
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 560
    Top = 80
  end
end
