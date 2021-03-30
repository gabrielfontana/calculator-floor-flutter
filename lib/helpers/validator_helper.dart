const kRequiredField = 'Campo obrigatório';
const kNegativeValue = 'Não utilize valores negativos';
const kZeroValue = 'Não utilize valores iguais a 0';

class ValidatorHelper {
  static String checkValidation(String text) {
    if (text.isEmpty)
      return kRequiredField;
    else if (text.startsWith('-'))
      return kNegativeValue;
    else if (text == '0')
      return kZeroValue;
    else
      return null;
  }
}
