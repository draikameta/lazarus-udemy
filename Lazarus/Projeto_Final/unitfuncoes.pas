unit unitFuncoes;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, sqldb, ZDataSet;

Procedure exibirClientes(Query:TzQuery);

Procedure incluirCliente(Query:TzQuery; Nome:String;Endereco:String;Cidade:String;UF:String;DOCUMENTO:String);

Procedure alterarCliente(Query:TzQuery; Nome:String;Endereco:String;Cidade:String;UF:String;DOCUMENTO:String;ID:Integer);

Procedure excluirCliente(Query:TzQuery; ID:Integer);

implementation

Procedure exibirClientes(Query:TzQuery);
begin
  Query.Close;
  Query.SQL.Clear;
  Query.SQL.Add(' SELECT * FROM CLIENTE');
  Query.ExecSQL;
  Query.Open;
end;

Procedure incluirCliente(Query:TzQuery; Nome:String;Endereco:String;Cidade:String;UF:String;DOCUMENTO:String);
begin
Query.Close;
Query.SQL.Clear;
Query.SQL.Add(' INSERT INTO CLIENTE(ID,NOME,ENDERECO,CIDADE,ESTADO,DOCUMENTO)');
Query.SQL.Add(' VALUES (genid(id_cliente,1),:NOME,:ENDERECO,:CIDADE,:ESTADO,:DOCUMENTO)');

Query.Params[0].AsString:= Nome;
Query.Params[1].AsString:= Endereco;
Query.Params[2].AsString:= Cidade;
Query.Params[3].AsString:= UF;
Query.Params[4].AsString:= DOCUMENTO;

Query.ExecSQL;
end;

Procedure alterarCliente(Query:TzQuery; Nome:String;Endereco:String;Cidade:String;UF:String;DOCUMENTO:String; ID:Integer);
begin
  Query.Close;
  Query.SQL.Clear;
  Query.SQL.Add(' UPDATE CLIENTE SET NOME=:NOME,ENDERECO=:ENDERECO,CIDADE=:CIDADE,ESTADO=:ESTADO, DOCUMENTO=:DOCUMENTO WHERE ID=:ID');

  Query.Params[0].AsString:= Nome;
  Query.Params[1].AsString:= Endereco;
  Query.Params[2].AsString:= Cidade;
  Query.Params[3].AsString:= UF;
  Query.Params[4].AsString:= DOCUMENTO;
  Query.Params[5].AsInteger:= ID;

  Query.ExecSQL;
end;

Procedure excluirCliente(Query:TzQuery; ID:Integer);
begin
  Query.Close;
  Query.SQL.Clear;
  Query.SQL.Add(' DELETE FROM CLIENTE WHERE ID ID=:ID');

  Query.Params[0].AsInteger:= ID;

  Query.ExecSQL;
end;







end.

