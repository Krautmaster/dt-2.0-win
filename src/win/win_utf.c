
#include <windows.h>
#include "win\debug.h"

/* Convert string from UTF-8 to Windows-ANSI */
int win_utf8_to_ansi(char *dest, int dlen, const char *src)
{
  const size_t len = strlen(src) + 1;
  wchar_t temp[len];
  MultiByteToWideChar( CP_UTF8, 0, src, -1, temp, len);
  size_t result = WideCharToMultiByte( CP_ACP, 0, temp, -1, dest, dlen, NULL, NULL);
  
  win_debug("win_utf8_to_ansi\n -- utf8:%s\n -- ansi:%s", src, dest);
  return result;
}

int win_utf8_to_utf16(wchar_t *dest, int dlen, const char *src)
{
  return MultiByteToWideChar( CP_UTF8, 0, src, -1, dest, dlen);
}

/* Convert string from Windows-ANSI to UTF-8 */
int win_ansi_to_utf8(char *dest, int dlen, const char *src)
{
  const size_t len = strlen(src) + 1;
  wchar_t temp[len];
  MultiByteToWideChar( CP_ACP, 0, src, -1, temp, len);
  size_t result = WideCharToMultiByte( CP_UTF8, 0, temp, -1, dest, dlen, NULL, NULL);
  win_debug("win_ansi_to_utf8\n -- ansi:%s\n -- utf8:%s", src, dest);
  return result;
}

