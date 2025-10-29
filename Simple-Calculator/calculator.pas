program SimpleCalculator;
uses
	sysutils;

var
	number1, number2: real;
	operation: char;
	result: real;

begin
	write('Enter first number: ');
	readln(number1);

	write('Enter operation (+, -, *, /): ');
	readln(operation);

	write('Enter second number: ');
	readln(number2);

	case operation of
  		'+':
		begin
			result := number1 + number2;
			writeln('Result: ', format('%.2f', [result]));
		end;
		'-':
		begin
			result := number1 - number2;
			writeln('Result: ', format('%.2f', [result]));
		end;
		'*':
		begin
			result := number1 * number2;
			writeln('Result: ', format('%.2f', [result]));
		end;
		'/':
		begin
			if number2 <> 0 then
			begin
        			result := number1 / number2;
        			writeln('Result: ', format('%.2f', [result]));
			end
			else
			begin
				writeln('Error: Division by zero!');
			end;
		end;
	else
		writeln('Invalid operation. Please enter +, -, *, or /.');
	end;
end.
