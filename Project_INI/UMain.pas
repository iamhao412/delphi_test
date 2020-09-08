unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls
  ,System.IniFiles ,EncdDecd ,StrUtils;

type
  TFmain = class(TForm)
    edtID: TEdit;
    edtName: TEdit;
    rgSex: TRadioGroup;
    grpHobby: TGroupBox;
    chk01: TCheckBox;
    chk02: TCheckBox;
    chk03: TCheckBox;
    chk04: TCheckBox;
    btnRead: TButton;
    btnWrite: TButton;
    lblID: TLabel;
    lblName: TLabel;
    btnReadSection2: TButton;
    mmo1: TMemo;
    btnReadSectionS: TButton;
    btnReadsectionvalues: TButton;
    btnReadSection: TButton;
    mmoEncode: TMemo;
    btnEncodeString: TButton;
    BtnDecodeString: TButton;
    edtCode: TEdit;
    btnFileExists: TButton;
    procedure btnWriteClick(Sender: TObject);
    procedure btnReadClick(Sender: TObject);
    procedure btnReadSection2Click(Sender: TObject);
    procedure btnReadSectionSClick(Sender: TObject);
    procedure btnReadsectionvaluesClick(Sender: TObject);
    procedure btnReadSectionClick(Sender: TObject);
    procedure btnEncodeStringClick(Sender: TObject);
    procedure BtnDecodeStringClick(Sender: TObject);
    procedure btnFileExistsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fmain: TFmain;
  myInifile : Tinifile;
  Filename : string;
  Section :string;
  list : TStrings;

implementation

procedure TFmain.btnWriteClick(Sender: TObject);
begin
  myInifile.WriteString(Section,lblID.Caption, edtID.Text);
  myInifile.WriteString(Section,lblName.Caption, edtName.Text);
  myInifile.WriteInteger(Section,rgSex.Caption, rgSex.ItemIndex);
  myInifile.WriteBool(grpHobby.Caption, chk01.Caption,chk01.Checked);
  myInifile.WriteBool(grpHobby.Caption, chk02.Caption,chk02.Checked);
  myInifile.WriteBool(grpHobby.Caption, chk03.Caption,chk03.Checked);
  myInifile.WriteBool(grpHobby.Caption, chk04.Caption,chk04.Checked);
end;

procedure TFmain.btnReadSection2Click(Sender: TObject);
var
  i ,j : Integer;
  list_tmp,list_tmp2 : TStringList;
begin
  list_tmp := TStringList.Create;
  list_tmp2 := TStringList.Create;
  mmo1.Clear;

  myInifile.ReadSections(list_tmp);
  for i := 0 to list_tmp.Count -1 do
  begin
    mmo1.Lines.Add( '['+ list_tmp[i] +']'  );
      myInifile.ReadSection(list_tmp[i],list_tmp2);
      for j := 0 to list_tmp2.Count -1 do
      begin
        mmo1.Lines.Add( list_tmp2[j] );
      end;
    mmo1.Lines.Add( ''  );
  end;

end;

procedure TFmain.btnReadSectionClick(Sender: TObject);
begin
  myInifile.ReadSection(Section,list);
  mmo1.Clear;
  mmo1.Lines :=list;
end;

procedure TFmain.btnReadSectionSClick(Sender: TObject);
begin
  myInifile.ReadSections(list);
  mmo1.Clear;
  mmo1.Lines :=list;
end;

procedure TFmain.btnReadsectionvaluesClick(Sender: TObject);
var
  i ,j : Integer;
  list_tmp,list_tmp2 : TStringList;
begin
  list_tmp := TStringList.Create;
  list_tmp2 := TStringList.Create;
  mmo1.Clear;

  myInifile.ReadSections(list_tmp);
  for i := 0 to list_tmp.Count -1 do
  begin
    mmo1.Lines.Add('['+ list_tmp[i] +']' );
      myInifile.ReadSectionValues(list_tmp[i],list_tmp2);
      for j := 0 to list_tmp2.Count -1 do
      begin
        mmo1.Lines.Add( list_tmp2[j] );
      end;
    mmo1.Lines.Add( ''  );
  end;
end;

procedure TFmain.BtnDecodeStringClick(Sender: TObject);
var
  str,strEncode,strDecode: string;
begin
  mmoEncode.Clear;
  str := edtCode.Text;
  strEncode := EncodeBase64(BytesOf(str), Length(BytesOf(str)));

  strDecode := StringOf(DecodeBase64(strEncode));
  mmoEncode.Lines.Add(strEncode);
  mmoEncode.Lines.Add(strDecode);
end;

procedure TFmain.btnEncodeStringClick(Sender: TObject);
var
   strEncode :string;
   strEncode_sun :string;
   strEncode_sun_decode :string;
   times :Integer;
begin

  times :=3;
  mmoEncode.Clear;
  list.Clear;
  strEncode := EncodeString( edtCode.Text);
  list.Add('一次加密') ;
  list.Add(strEncode) ;

  list.Add('一次解密') ;
  list.Add(DecodeString(strEncode));

  list.Add('再次加密') ;
  //少取times位逆序
  strEncode_sun :=   ReverseString(LeftStr(strEncode, Length(strEncode)-times ) ) + RightStr(strEncode,times) ;

  strEncode_sun_decode := ReverseString(LeftStr(strEncode_sun, Length(strEncode_sun)-times ) ) +   RightStr(strEncode_sun,times)    ;
  list.Add(  strEncode_sun );
  list.Add(  strEncode_sun_decode );
  list.Add(DecodeString(strEncode_sun_decode));


  mmoEncode.Lines :=list;
end;

procedure TFmain.btnFileExistsClick(Sender: TObject);
var
  isExists :Boolean;
begin

  isExists := FileExists(Filename); //检查目录是否存在function FileExists(const FileName: string): Boolean;

  ShowMessage(Filename +' (0不存在 -1 存在): '+ BoolToStr(isExists));
end;

procedure TFmain.btnReadClick(Sender: TObject);
begin
  edtID.Text := myInifile.ReadString(Section,lblID.Caption,'')     ;
  edtName.Text  := myInifile.ReadString(Section,lblName.Caption, '');
  rgSex.ItemIndex := myInifile.ReadInteger(Section,rgSex.Caption,-1);
  chk01.Checked := myInifile.ReadBool(grpHobby.Caption, chk01.Caption,False);
  chk02.Checked := myInifile.ReadBool(grpHobby.Caption, chk02.Caption,False);
  chk03.Checked := myInifile.ReadBool(grpHobby.Caption, chk03.Caption,False);
  chk04.Checked := myInifile.ReadBool(grpHobby.Caption, chk04.Caption,False);
end;

{$R *.dfm}
begin
  Filename:=ExtractFilePath(Paramstr(0))+'DB.ini';
  Section := '基本信息';
  myInifile := Tinifile.Create(filename);
  list := TStringList.Create;
end.
