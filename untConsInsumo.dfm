object frmConsInsumo: TfrmConsInsumo
  Left = 0
  Top = 0
  Caption = 'Insumo'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 299
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 635
      Height = 299
      Align = alClient
      DataSource = dsInsumo
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CDINSUMO'
          Width = 103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DSINSUMO'
          Width = 475
          Visible = True
        end>
    end
  end
  object qryInsumo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select CDINSUMO,   DSINSUMO from CADINSUMO'
      'order by CDINSUMO, DSINSUMO')
    SQLConnection = dmPrincipal.cnRestauranteTeste
    Left = 112
    Top = 79
    object qryInsumoCDINSUMO: TStringField
      FieldName = 'CDINSUMO'
      Required = True
      Size = 10
    end
    object qryInsumoDSINSUMO: TStringField
      FieldName = 'DSINSUMO'
      Required = True
      Size = 100
    end
  end
  object dsInsumo: TDataSource
    DataSet = clInsumo
    Left = 112
    Top = 247
  end
  object prInsumo: TDataSetProvider
    DataSet = qryInsumo
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 135
  end
  object clInsumo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prInsumo'
    Left = 112
    Top = 191
    object clInsumoCDINSUMO: TStringField
      DisplayLabel = 'C'#243'd. Insumo'
      FieldName = 'CDINSUMO'
      Required = True
      Size = 10
    end
    object clInsumoDSINSUMO: TStringField
      DisplayLabel = 'Insumo'
      FieldName = 'DSINSUMO'
      Required = True
      Size = 100
    end
  end
end
