#include "GraphRect.h"

GraphRect::GraphRect(Graphics^ _field, int X1, int Y1, int X2, int Y2, bool fill) : GraphObject(_field)
{
	this->X1 = X1;
	this->X2 = X2;
	this->Y1 = Y1;
	this->Y2 = Y2;
	this->fill = fill;
}

void GraphRect::Drow(Graphics^ e)
{
	if (fill)
		e->FillRectangle(gcnew SolidBrush(color), X1, Y1, X2, Y2);
	else
		e->DrawRectangle(gcnew Pen(color, thickness), X1, Y1, X2, Y2);
}
