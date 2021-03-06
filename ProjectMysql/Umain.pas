unit Umain;

interface

uses
  Utest,Data.SqlExpr, UMySQLHelper, Winapi.Windows, Winapi.Messages, System.SysUtils,
  System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls;

type
  TFmain = class(TForm)
    Button1: TButton;

    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Mykeydown(var msg :TWMKeyDown) ; message WM_KEYDOWN;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fmain: TFmain;
  MySQLHelper: TMySQLHelper;
  SQLQuery: TSQLQuery;
  bass :TBass;
implementation

procedure TFmain.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      ShowMessage('system');
  self.text :=Char(Key);
end;

{$R *.dfm}

procedure TFmain.Mykeydown(var msg: TWMKeyDown);
begin
  ShowMessage('my');
   self.text :=Char(msg.CharCode);
   inherited; //这样，自己的和系统的都会调用一次。
end;

begin
//bass :=TBass.Create;


{
  MySQLHelper := TMySQLHelper.Create;

  MySQLHelper.HOST := '192.168.0.2';
  MySQLHelper.User_name := 'root';
  MySQLHelper.Password := 'root';
  MySQLHelper.Database := 'root';

  MySQLHelper.HOST := '127.0.0.1';
  MySQLHelper.User_name := 'root';
  MySQLHelper.Password := 'java';
  MySQLHelper.Database := 'test531';

  ShowMessage('影响行数:' + IntToStr(MySQLHelper.ExecSQL('INSERT INTO srm_stock_check_plan(id,site,ent,create_date,doc_no)values(uuid(),1,99,now(),''9999'')')));

  SQLQuery := TSQLQuery.Create(nil);
  SQLQuery := MySQLHelper.Query('select doc_no from   srm_stock_check_plan ORDER BY create_date DESC limit 2;');
  while not SQLQuery.Eof do
  begin
    ShowMessage(VarToStr(SQLQuery.FieldValues['doc_no']));
    SQLQuery.Next;
  end;

  MySQLHelper.Free;
}





end.

