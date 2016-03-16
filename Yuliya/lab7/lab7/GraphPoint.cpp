#include "GraphPoint.h"

GraphPoint::GraphPoint(Graphics^ _field) :GraphObject(_field)
{
	X = 0; Y = 0;
}

GraphPoint::GraphPoint(Graphics^ _field, int _X, int _Y) :GraphObject(_field)
{
	X = _X;
	Y = _Y;
}

void GraphPoint::Drow(Graphics^ _field)
{
	SolidBrush^ b = gcnew SolidBrush(color);
	_field->FillEllipse(b, (int)(X - thickness / 2), (int)(Y - thickness / 2), thickness, thickness);
}