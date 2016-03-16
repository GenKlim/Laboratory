//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Button1Click(TObject *Sender)
{
        int x = StrToInt(input->Text);
        int l = x % 10;
	int h = (x - l) / 10;
	double result = double(h) / l;
	result = h * (result - (int)result);
        output->Text=FloatToStr(result);
}
//---------------------------------------------------------------------------

