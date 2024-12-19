using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfApp1.utility
{
    // класс для 4 пункта
    // Метод должен рассчитывать целое количество материала, необходимого
    // для производства указанного количества продукции, учитывая возможный
    // брак материала.
    internal class Zadanie4cs
    {
        public static int CalculateRequiredMaterial(double Length, double Width, double Height,double productCoefficient,double defectRate, int productCount)
        {
            // Проверка на корректность данных
            if (Length <= 0 || Width <= 0 || Height <= 0 ||
                productCoefficient <= 0 || defectRate < 0 || productCount <= 0)
            {
                return -1;
            }

            try
            {
                // Рассчитываем объем материала на одну единицу продукции
                double materialPerUnit = Length * Width * Height * productCoefficient;

                // Учитываем процент брака
                double defectMultiplier = 1 + defectRate / 100;
                double totalMaterial = materialPerUnit * defectMultiplier * productCount;

                // Округляем до целого количества
                return (int)Math.Ceiling(totalMaterial);
            }
            catch
            {
                // Обработка ошибок
                return -1;
            }
        }
    }
}
