{%
  Test_1 program
%}

% declare array
var arr :array 1..10 of int

% declare variables with type and init
const a: int := 5
var n: int := 10

% declare variables with type only
var index: int
var sum: int

% declare variables with init only
var c := 0
const hellow := "Hello world"

% function declaration random
function random (a: int, b: int) : int
  % declare variables in function
  var d :int := 500
  
  % assign to variables
  sum := 0
  
  % for loop
  for id: 1 .. 8 
   sum := sum + id
  end for
	
  result a+b*d/sum
end random

% procedure declaration hello world
procedure hello()
  put "Hello World"
end hello

% assign to array elements
arr[0] := 200

% assign function invocation
c := random(a, arr[0])

% nested if statement
if c = a then
  put -c
else
  put c

  if c not= n then
    var a :int := 100
    put a
  end if

end if

% begin statement
begin
  var a :int
  a := n

  % procedure invocation
  hello()
end

% loop statement
loop
  sum := sum + index
  index := index + 1
  exit when index = n
end loop

% put expr
put hellow
