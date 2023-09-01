object frmConsReceita: TfrmConsReceita
  Left = 0
  Top = 0
  Caption = 'Receita'
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
      DataSource = dsReceita
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
          FieldName = 'CDRECEITA'
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DSRECEITA'
          Width = 448
          Visible = True
        end>
    end
  end
  object qryReceita: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select CDRECEITA,   DSRECEITA from CADRECEITA'
      'order by CDRECEITA, DSRECEITA')
    SQLConnection = dmPrincipal.cnRestauranteTeste
    Left = 112
    Top = 79
    object qryReceitaCDRECEITA: TStringField
      FieldName = 'CDRECEITA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object qryReceitaDSRECEITA: TStringField
      FieldName = 'DSRECEITA'
      Required = True
      Size = 100
    end
  end
  object dsReceita: TDataSource
    DataSet = clReceita
    Left = 112
    Top = 247
  end
  object prReceita: TDataSetProvider
    DataSet = qryReceita
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 135
  end
  object clReceita: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'prReceita'
    Left = 112
    Top = 191
    object clReceitaCDRECEITA: TStringField
      DisplayLabel = 'C'#243'd. Receita'
      FieldName = 'CDRECEITA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object clReceitaDSRECEITA: TStringField
      DisplayLabel = 'Receita'
      FieldName = 'DSRECEITA'
      Required = True
      Size = 100
    end
  end
end
