package Mahjong;

import java.util.Random;

/*  Класс генератора шума Перлина
	Нужен для генерации 'кучек' с картачками
	Метод Get2D выдает двумерный массив float, заполненный случайными числами
	в отличее от простого Random.nextFloat() позволяем получить шум без резких перепадов
	Тут все взято из этой статьи http://www.gamedev.ru/code/articles/?id=4212
	Еще есть такая статья с картинками https://habrahabr.ru/post/142592/
*/

class NoiseGenerator
{
	private static final Random rand = new Random();//Простой генератор случайных чисел

	//Ф-ия для двумерного шума Перлина
	private static float noise2D(int x, int y)
	{
		int n = x + y * 57;
		n = (n << 13) ^ n;
		return (1.0f - ((n * (n * n * 15731 + 789221) + 1376312589) & 0x7fffffff) / 1073741824.0f);
	}

	private static float smoothedNoise2D(int x, int y)
	{
		float corners = (noise2D(x - 1, y - 1) + noise2D(x + 1, y - 1) + noise2D(x - 1, y + 1) + noise2D(x + 1, y + 1)) / 16;
		float sides = (noise2D(x - 1, y) + noise2D(x + 1, y) + noise2D(x, y - 1) + noise2D(x, y + 1)) / 8;
		float center = noise2D(x, y) / 4;
		return corners + sides + center;
	}

	private static float powf(float base, int power)//Возведение в степень (вариант для float)
	{
		float result = 1;
		for(int i = 0; i < power; i++)
			result *= base;
		return result;
	}

	private static float interpolateCos(float x, float y, float a)//Интерполяция по косиусу
	{
		float fac1 = 3 * powf(1 - a, 2) - 2 * powf(1 - a, 3);
		float fac2 = 3 * powf(a, 2) - 2 * powf(a, 3);
		return x * fac1 + y * fac2;
	}

	private static float compileNoise(float x, float y)
	{
		int int_X = (int) x;
		int int_Y = (int) y;
		float fractional_X = x - int_X;
		float fractional_Y = y - int_Y;

		float v1 = smoothedNoise2D(int_X, int_Y);
		float v2 = smoothedNoise2D(int_X + 1, int_Y);
		float v3 = smoothedNoise2D(int_X, int_Y + 1);
		float v4 = smoothedNoise2D(int_X + 1, int_Y + 1);

		float i1 = interpolateCos(v1, v2, fractional_X);
		float i2 = interpolateCos(v3, v4, fractional_X);

		return interpolateCos(i1, i2, fractional_Y);
	}

	private static float perlinNoise2D(float x, float y, float factor)
	{
		float total = 0;
		float persistence = 0.5f;
		float frequency = 0.25f;
		float amplitude = 1;
		x += factor;
		y += factor;
		for(int i = 0; i < 5; i++)
		{
			total += compileNoise(x * frequency, y * frequency) * amplitude;
			amplitude *= persistence;
			frequency *= 2;
		}
		total = Math.abs(total);
		return total * 8.0f;
	}

	//Аозвращает двумерный массив со случайными числами
	static float[][] Get2D(int w, int h)
	{
		float[][] map = new float[w][h];

		float f = (float) Math.PI * 2 * 10 + rand.nextFloat() % (float) Math.PI * 10;
		for(int i = 0; i < w; i++)
		{
			for(int j = 0; j < h; j++)
				map[i][j] = perlinNoise2D(i, j, f);
		}

		return map;
	}
}
