unit unitFuncoes;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, sqldb, ZDataSet;

Procedure exibirClientes(Query:TzQuery);

Procedure incluirCliente(Query:TzQuery; Nome:String;Endereco:String;Cidade:String;UF:String);

Procedure alterarCliente(Query:TzQuery; Nome:String;Endereco:String;Cidade:String;UF:String; ID:Integer);

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

Procedure incluirCliente(Query:TzQuery)
begin
Query.Close;
Query.SQL.Clear;
Query.SQL.Add(' INSERT INTO CLIENTE(ID,NOME,ENDERECO,CIDADE,ESTADO)');
Query.SQL.Add(' VALUES (genid(id_cliente,1),:NOME,:ENDERECO,:CIDADE,:ESTADO)');

Query.Params[0].AsString:= Nome;
Query.Params[1].AsString:= Endereco;
Query.Params[2].AsString:= Cidade;
Query.Params[3].AsString:= UF;

Query.ExecSQL;
end;

Procedure alterarCliente(Query:TzQuery; Nome:String;Endereco:String;Cidade:String;UF:String; ID:Integer);
begin
  Query.Close;
  Query.SQL.Clear;
  Query.SQL.Add(' UPDATE CLIENTE SET NOME=:NOME,ENDERECO=:ENDERECO,CIDADE=:CIDADE,ESTADO=:ESTADO WHERE ID=:ID');

  Query.Params[0].AsString:= Nome;
  Query.Params[1].AsString:= Endereco;
  Query.Params[2].AsString:= Cidade;
  Query.Params[3].AsString:= UF;
  Query.Params[4].AsInteger:= ID;

  Query.ExecSQL;
end;

Procedure excluirCliente(Query:TzQuery; ID:Integer);
begin
  Query.Close;
  Query.SQL.Clear;
  Query.SQL.Add(' DELETE FROM CLIENTE WHERE ID ID=:ID');

  Query.Params[0].AsInteger:= ID;
end;







end.

