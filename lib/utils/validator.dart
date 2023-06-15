String? validaCampoVazio(String? value) {
  if (value == null || value.isEmpty) {
    return "Campo vazio";
  }
  return null;
}

String? validaCampoSelect(String? value) {
  if (value == "Selecione") {
    return "Valor invalído";
  }
  return null;
}
