
#ifndef __WIN_UTF_H
#define __WIN_UTF_H

/* Convert string from UTF-8 to Windows-ANSI */
int win_utf8_to_ansi(char *dest, int dlen, const char *src);

/* Convert string from UTF-8 to UTF-16/widechar */
int win_utf8_to_utf16(wchar_t *dest, int dlen, const char *src);

/* Convert string from Windows-ANSI to UTF-8 */
int win_ansi_to_utf8(char *dest, int dlen, const char *src);

#endif // __WIN_UTF_H