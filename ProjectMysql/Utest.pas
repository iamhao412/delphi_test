unit Utest;

interface

uses
  Vcl.Dialogs;

type
  TBass = class (TObject)
  private
    Fname: String;
    procedure Setname(const Value: String);
  published

    property name :String   read Fname write Setname;

    procedure Proc;
    function Fun: string; virtual; abstract;

  end;




implementation


procedure TBass.Proc;
begin
  ShowMessage('1');
end;



procedure TBass.Setname(const Value: String);
begin
  Fname := Value;
end;

end.

