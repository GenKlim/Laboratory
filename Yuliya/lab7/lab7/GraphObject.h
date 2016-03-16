#pragma once
using namespace System::Drawing;

ref class GraphObject
{
protected:
	Color color;
	Graphics^ field;
public:
	unsigned int thickness;

	GraphObject() 
	{ 
		color = Color::Black;
	}

	GraphObject(Graphics^ _field)
	{
		field = _field; color = Color::Black;
	}

	Color GetColor()
	{ 
		return color;
	}

	void SetColor(Color c)
	{
		color = c;
	} 

	virtual void Drow(Graphics^) = 0;
};
