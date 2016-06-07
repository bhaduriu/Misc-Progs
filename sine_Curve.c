#include <stdio.h>
#include <math.h>
#include <string.h>
#include <windows.h>

int main(void)
{
  int x, y;
  COLORREF yellow = RGB(255,255,0);
  COLORREF red    = RGB(255,0,0);
  COLORREF green  = RGB(0,200,0);
  COLORREF blue   = RGB(0,0,255);

  SetConsoleTitle("ConGraphics");
  HWND hWnd = FindWindow(NULL, "ConGraphics");
  HDC hDC = GetDC(hWnd);

  for(x = 0; x < 700; x++)
  {
    y = (int)(sin(x/100.0)*100 + 200);
    SetPixel(hDC, x, y, yellow);
  }

  for(x = 0; x < 700; x++)
  {
    SetPixel(hDC, x, 200, blue);
  }

  ReleaseDC(hWnd, hDC);
  getchar();
  return 0;
}

