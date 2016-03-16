#pragma once
#include "GraphObject.h"

ref class GraphPoint : public GraphObject
{
private:
	int X, Y;
public:
	GraphPoint(Graphics^ _field);
	GraphPoint(Graphics^ _field, int, int);

	void Drow(Graphics^) override;
};
