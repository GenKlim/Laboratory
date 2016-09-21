#pragma once
#include <stdio.h>
#include <string.h>

#define HashTableSize 256 //Размер таблици

template<typename T>
class HashTable// Самая простая хеш таблица, не поддерживает коллизиии. Имеет константный размер
{
	T* table[HashTableSize];
public:
	HashTable() 
	{
		memset(table, 0, sizeof(table));//Обнуляем таблицу
	}

	void add(T* value)
	{
		table[getHash(value)] = value;
	}

	size_t getHash(T* value)//Ровняет хеш до размера таблици
	{
		return value->getHash() % HashTableSize;
	}

	T* get(size_t has)
	{
		return table[has % HashTableSize];
	}

	void remove(T* value)
	{
		table[getHash(value)] = 0;
	}

	size_t getMemorySize()
	{
		return sizeof(HashTable<T>);
	}
};