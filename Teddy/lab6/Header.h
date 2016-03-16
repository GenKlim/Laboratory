#pragma once

#define _CRT_NONSTDC_NO_DEPRECATE
#include "iostream"
#include "string"
#include "conio.h"

struct Range // —труктура дл€ хранени€ двух чисел (позици€ откр. и закр. скобки)
{
	int a, b;
};

using namespace std;
#define USE_STATICK_STACK 0		//“ут 0 значит использовать стек на основе односв€зного списка, 1 - использовать стек на основе статичного массива
typedef Range STACK_ITEM_TYPE;	//”станавливаем тип элементов стека - Range

#include "StackStatick.h"
#include "StackNode.h"