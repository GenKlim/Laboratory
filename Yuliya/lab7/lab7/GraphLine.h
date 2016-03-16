#pragma once
#include "GraphObject.h"

ref class GraphLine : public GraphObject
{
private:
		int X1, Y1, X2, Y2;
public:
	GraphLine(Graphics^ _field, int X1, int Y1, int X2, int Y2);
	void Drow(Graphics^) override;
};

