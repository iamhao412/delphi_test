unit SearchDIR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
list : TStrings;
CurrentDir : string;

//�г�һ��Ŀ¼������Ŀ¼(����Ƕ��)�ĺ���
procedure GetDirs(dirName: string; List: TStrings);
var
  SRec: TSearchRec;            {���� TSearchRec �ṹ����}
  dir: string;
const
  attr: Integer = faDirectory; {�ļ����Գ���, ��ʾ�����ļ���}
begin
  dirName := ExcludeTrailingBackslash(dirName) ; {��֪������Ĳ���������ǲ��� \; ��ȥ��, �ټ���}
  dir := dirName + '\*.*'; {���� \; *.* �� * ��ʾ�����ļ�, ϵͳ���Ŀ¼Ҳ����һ���ļ�}

  if FindFirst(dir, attr, SRec) = 0 then {��ʼ����,���� SRec ������Ϣ, ����0��ʾ�ҵ���һ��}
  begin
    repeat
      if (SRec.Attr = attr) and              {������ļ���}
         (SRec.Name <> '.') and              {�ų��ϲ�Ŀ¼}
         (SRec.Name <> '..') then            {�ų���Ŀ¼}
       begin
         List.Add(dirName + SRec.Name);      {��List���½��}
         GetDirs(dirName + SRec.Name, List); {�����ǵݹ����, ���û�����, ֻ��������ǰĿ¼}
       end;
    until(FindNext(SRec)<>0);                {����һ��, ����0��ʾ�ҵ�}
  end;

  FindClose(SRec);                           {��������}
end;


begin

CurrentDir := System.SysUtils.GetCurrentDir ;

  list := TStringList.Create;
  GetDirs('D:\SOFT\',list);
  Memo1.Lines :=list;
  list.Free;
end;

end.