object Form1: TForm1
  Left = 199
  Top = 136
  Width = 437
  Height = 201
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 24
    Width = 239
    Height = 20
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1076#1074#1091#1079#1085#1072#1095#1085#1086#1077' '#1095#1080#1089#1083#1086':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 72
    Width = 59
    Height = 20
    Caption = #1054#1090#1074#1077#1090':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 248
    Top = 120
    Width = 155
    Height = 33
    Caption = #1042#1099#1095#1080#1089#1083#1080#1090#1100
    TabOrder = 0
    OnClick = Button1Click
  end
  object input: TEdit
    Left = 288
    Top = 24
    Width = 113
    Height = 21
    TabOrder = 1
  end
  object output: TEdit
    Left = 288
    Top = 72
    Width = 113
    Height = 21
    TabOrder = 2
    Text = '0'
  end
end
