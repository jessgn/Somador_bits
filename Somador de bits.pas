Program Pzim ;

var binario, binario2, aux, vai, resultado : string[4];
i, auxn, erro, opcao, soma: integer;

Begin

writeln('1: Converter binário.');
writeln('2: Somar binário.');

readln(opcao);


case opcao of

1: 
Begin
writeln ('Digite um binário de 4 bits: ');
read(binario);

aux := binario[1];

val(aux, i, erro);
			 						
soma := i*(2*2*2);

aux := binario[2];
val(aux, i, erro);
soma := soma + (i*(2*2));

aux := binario[3];
val(aux, i, erro);
soma := soma + (i*(2));

aux := binario[4];
val(aux, i, erro);
soma := soma + (i*(1));

writeln('Numero decimal :');
write(soma);	
end;
2:
Begin
writeln('Digite o primeiro numero: ');
read(binario);
writeln('Digite o segundo numero: ');
read(binario2);

vai:='0';

for i:=4 downto 1 do

Begin
if (vai = '0') then
Begin
	if(binario[i] = '1') and (binario2[i] = '1') then
		Begin
			resultado[i] := '0';
			vai := '1';
	end;
	                          
	if (binario[i] = '1') and (binario2[i] = '0') or (binario[i] = '0') and (binario2[i] = '1') then
		Begin
			resultado[i] := '1';
			vai := '0';
	  end;
	   
	if (binario[i] = '0') and (binario2[i] = '0') then
		Begin
			resultado[i] := '0';
			vai := '0';
		end;    
end;

if (vai = '1') then
Begin
	if(binario[i] = '1') and (binario2[i] = '1') then
		Begin
			resultado[i] := '1';
			vai := '1';
		end;
	                          
	if (binario[i] = '1') and (binario2[i] = '0') or (binario[i] = '0') and (binario2[i] = '1') then
		Begin
			resultado[i] := '0';
			vai := '1';
	  end; 
	   
	if (binario[i] = '0') and (binario2[i] = '0') then
		Begin
			resultado[i] := '1';
			vai := '0';
		end;   
end;

end;

binario := resultado;

aux := binario[1];

val(aux, i, erro);
									
soma := i*(2*2*2);

aux := binario[2];
val(aux, i, erro);
soma := soma + (i*(2*2));

aux := binario[3];
val(aux, i, erro);
soma := soma + (i*(2));

aux := binario[4];
val(aux, i, erro);
soma := soma + (i*(1));

writeln(resultado);
writeln('Numero decimal :');
writeln(soma);	
writeln('Soma binaria :');
writeln(binario);
end;  
End;
end.