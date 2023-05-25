{% 
This test program checks for function and procedure error
%}

var a:int

% Declaration Error
% Err 1 : Function no result but Procedure is fine
function test():int
end test

procedure test(a:int, b:bool)
end test

% Err2 : Variable declared ( test is already defined by procedure )
function test():int
	result 1+1
end test

% Err3: Result type different with Function Result type
function test2 ():int
	result false
end test2

% Err4: Same parameter name
function test2(a:int, a:bool):int
	result 1
end test2

% Err5: Result in a procedure
procedure test2(a:int, b:bool)
	result 1
end test2

% Err6: Return in a function
function test2(a:int, b:bool):string
	return
end test2

% Statement Error
% Err1: Invocation has different size parameter
test(1, false, 10)
test(1)

% Err2: Invocation has different type
test(false, false)

% Err3: Parameter is not initialized with value
test(a, false)