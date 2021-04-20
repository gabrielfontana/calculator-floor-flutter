const kRequiredField = 'Campo obrigatório';
const kNegativeValue = 'Não utilize valores negativos';
const kZeroValue = 'Não utilize valores iguais a 0';

class ValidatorHelper {
  static String checkValidation(String text) {
    var value = text;
    double convertedText = double.tryParse(value.replaceAll(',', '.'));
    if (text.isEmpty)
      return kRequiredField;
    else if (text.startsWith('-'))
      return kNegativeValue;
    else if (convertedText * 1 == 0)
      return kZeroValue;
    else
      return null;
  }
}
