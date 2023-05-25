{% 
This test program checks for general error
%}

% Declaration Error
% Err 1 : Declare var or const with non-const expression
var a:int
var test := a
const test := a
var b:int

% Err2 : Variable declared
var a := 10
var c:int

% Err3: Variable type not the same as expression type
var test:int := "HELLO"
const d:string := "HELLO"

% Err4: Array declaration error
var test: array a .. b of int 
var test: array "one" .. "two" of int
var test: array 2 .. 1 of int
var arr: array 1..50 of real

%Statement Error
% Err1: Assignment different type
c := d
arr[0] := d

% Err2: Assignment expression must be initiated
c := arr[0]

% Err3: Assignment expression must be scalar type
c := arr

% Err4: Identifier with const type cannot be assigned
d := "WORLD"

% Err5: Variable not found
e := 5
c := 5

% Err6: If expr not bool
if c then
end if

% Err7: For loop expr not const_expr
for decreasing a: c .. 10
end for