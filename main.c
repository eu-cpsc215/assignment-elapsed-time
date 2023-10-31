#include <stdarg.h>
#include <stdio.h>

// Declare function defined in the assembly module
void _program();

// Main entry point
void main()
{
	_program();
}

void PrintString(char* fmt, ...)
{
	va_list args;
	va_start(args, fmt);
	vprintf_s(fmt, args);
	va_end(args);
}
