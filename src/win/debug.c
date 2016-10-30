#include <stdio.h>
#include <windows.h>

void win_debug(const char *msg, ...) {
  va_list ap;
  char tmp[1024];
  va_start(ap, msg);
  vsnprintf( tmp, 1024, msg, ap);
  va_end(ap);
  OutputDebugStringA(tmp);
}

void win_debugW(const wchar_t *msg, ...) {
  va_list ap;
  wchar_t tmp[1024];
  va_start(ap, msg);
  vsnwprintf( tmp, 1024, msg, ap);
  va_end(ap);
  OutputDebugStringW(tmp);
}