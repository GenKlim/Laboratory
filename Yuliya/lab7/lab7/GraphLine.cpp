#include "GraphLine.h"

GraphLine::GraphLine(Graphics ^ _field, int X1, int Y1, int X2, int Y2) : GraphObject(_field)
{
	this->X1 = X1;
	this->X2 = X2;
	this->Y1 = Y1;
	this->Y2 = Y2;
}

void GraphLine::Drow(Graphics^ e)
{
	e->DrawLine(gcnew Pen(color, thickness), X1, Y1, X2, Y2);
}