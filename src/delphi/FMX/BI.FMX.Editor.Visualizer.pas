{*********************************************}
{  TeeBI Software Library                     }
{  Data Visualizer Editor                     }
{  Copyright (c) 2015-2016 by Steema Software }
{  All Rights Reserved                        }
{*********************************************}
unit BI.FMX.Editor.Visualizer;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms,

  {$IF CompilerVersion<26} // Cannot use FireMonkeyVersion<21 (or 21.0)
  {$DEFINE HASFMX20}
  {$ENDIF}

  {$IFNDEF HASFMX20}
  FMX.Graphics,
  {$ENDIF}

  {$IF CompilerVersion<28} // Cannot use FireMonkeyVersion<21 (or 21.0)
  {$DEFINE HASFMX22}
  {$ENDIF}

  {$IFNDEF HASFMX22}
  FMX.Controls.Presentation, FMX.EditBox, FMX.SpinBox,
  {$ENDIF}

  FMX.Dialogs, FMX.Layouts,

  BI.FMX.Visualizer,
  FMX.ListBox, FMX.StdCtrls, FMX.TabControl, FMX.Edit;

type
  TVisualizerEditor = class(TForm)
    TabControl1: TTabControl;
    TabGroups: TTabItem;
    TabValues: TTabItem;
    Layout1: TLayout;
    Button1: TButton;
    Layout2: TLayout;
    SBUpGroup: TSpeedButton;
    SBDownGroup: TSpeedButton;
    Layout3: TLayout;
    Layout4: TLayout;
    SBUpValue: TSpeedButton;
    SBDownValue: TSpeedButton;
    LBGroups: TListBox;
    LBValues: TListBox;
    PageSettings: TTabControl;
    Layout5: TLayout;
    TabCombo: TTabItem;
    LClass: TLabel;
    CBClass: TComboBox;
    LCurrent: TLabel;
    LCurrentHeader: TLabel;
    Label1: TLabel;
    CBGroupBy: TComboBox;
    TabMulti: TTabItem;
    TabChart: TTabItem;
    TabList: TTabItem;
    TabSeries: TTabItem;
    Label2: TLabel;
    CBComboAlign: TComboBox;
    Label3: TLabel;
    CBMultiScroll: TComboBox;
    Label4: TLabel;
    UDColumns: TSpinBox;
    Button2: TButton;
    Label5: TLabel;
    CBListAlign: TComboBox;
    Label6: TLabel;
    CBAutoStack: TComboBox;
    CBAddNulls: TCheckBox;
    Label7: TLabel;
    CB2D: TComboBox;
    Label8: TLabel;
    CB3D: TComboBox;
    CBSeriesStyle: TComboBox;
    Label9: TLabel;
    procedure SBUpGroupClick(Sender: TObject);
    procedure SBDownGroupClick(Sender: TObject);
    procedure SBUpValueClick(Sender: TObject);
    procedure SBDownValueClick(Sender: TObject);
    procedure LBValuesChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure LBGroupsChange(Sender: TObject);
    procedure LBGroupsChangeCheck(Sender: TObject);
    procedure LBValuesChangeCheck(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CBComboAlignChange(Sender: TObject);
    procedure CBMultiScrollChange(Sender: TObject);
    procedure UDColumnsChangeTracking(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CBListAlignChange(Sender: TObject);
    procedure CBAddNullsChange(Sender: TObject);
    procedure CBAutoStackChange(Sender: TObject);
    procedure CB2DChange(Sender: TObject);
    procedure CB3DChange(Sender: TObject);
    procedure CBClassChange(Sender: TObject);
    procedure CBSeriesStyleChange(Sender: TObject);
  private
    { Private declarations }

    Viz : TBIVisualizer;
    VizUI : TBIVisualizerUI;

    IChanging : Boolean;

    procedure MoveGroup(const ADelta:Integer);
    procedure MoveValue(const ADelta:Integer);
  public
    { Public declarations }

    class function Embedd(const AOwner:TComponent; const AParent:TWinControl):TVisualizerEditor;
    procedure Refresh(const AVisualizer:TBIVisualizer);
  end;

implementation