#ifdef __WIN32__
#include "win/win.h"
#endif

#include "setenv.h"

int
setenv (const char *var, const char *val, int ovr)
{
  BOOL b;
  char c[2];
  if (!ovr)
  {
    DWORD d;
    d = GetEnvironmentVariableA (var, c, 2);
    if (0 != d && GetLastError () != ERROR_ENVVAR_NOT_FOUND)
      return 0;
  }
  b = SetEnvironmentVariableA (var, val);
  if (b)
    return 0;
  return 1;
}
