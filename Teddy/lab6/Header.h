#pragma once

#define _CRT_NONSTDC_NO_DEPRECATE
#include "iostream"
#include "string"
#include "conio.h"

struct Range // ��������� ��� �������� ���� ����� (������� ����. � ����. ������)
{
	int a, b;
};

using namespace std;
#define USE_STATICK_STACK 0		//��� 0 ������ ������������ ���� �� ������ ������������ ������, 1 - ������������ ���� �� ������ ���������� �������
typedef Range STACK_ITEM_TYPE;	//������������� ��� ��������� ����� - Range

#include "StackStatick.h"
#include "StackNode.h"