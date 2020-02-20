namespace CoreLibrary
{
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    public class SearchForm : IValidatableObject
    {
        public string itemsPerPage { get; set; }

        public string PageNum { get; set; }

        public IEnumerable<ValidationResult> Validate(ValidationContext validationContext)
        {
            List<ValidationResult> errors = new List<ValidationResult>();
            bool ipp_empty = string.IsNullOrEmpty(itemsPerPage);
            bool pn_empty = string.IsNullOrEmpty(PageNum);

            int fake_value = -1;

            if (ipp_empty && pn_empty)
            {
                errors.Add(new ValidationResult("Один из параметров необходимо заполнить обязательно."));
            }
            if (!ipp_empty && !int.TryParse(itemsPerPage, out fake_value))
            {
                errors.Add(new ValidationResult("Значение параметра `Кол-во элементов на странице` должно быть натуральным числом в диапазоне 1-12."));
            }
            if (!ipp_empty && fake_value == 0)
            {
                errors.Add(new ValidationResult("Значение параметра `Кол-во элементов на странице` должно быть натуральным числом в диапазоне 1-12."));
            }
            if (ipp_empty && !pn_empty && !int.TryParse(PageNum, out fake_value))
            {
                errors.Add(new ValidationResult("Значение параметра `№ страницы` должно быть натуральным числом."));
            }
            if (!pn_empty && fake_value == 0)
            {
                errors.Add(new ValidationResult("Значение параметра `№ страницы` должно быть натуральным числом."));
            }

            return errors;
        }
    }
}
