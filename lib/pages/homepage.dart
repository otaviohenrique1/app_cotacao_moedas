import 'package:app_cotacao_moedas/components/botao.dart';
import 'package:app_cotacao_moedas/components/campo_texto.dart';
import 'package:app_cotacao_moedas/components/margin.dart';
import 'package:app_cotacao_moedas/components/select.dart';
import 'package:app_cotacao_moedas/utils/validator.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var formKey = GlobalKey<FormState>();
  final TextEditingController _moedaControler = TextEditingController();
  final TextEditingController _moeda2Controler = TextEditingController();

  @override
  void dispose() {
    _moedaControler.dispose();
    _moeda2Controler.dispose();
    super.dispose();
  }

  final List<String> items = [
    'Selecione',
    'Real Brasileiro',
    'Dolar Americano',
  ];

  double moeda = 0;

  @override
  Widget build(BuildContext context) {
    String selectedItem1 = items.first;
    String selectedItem2 = items.first;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Cotação de modedas"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
        children: <Widget>[
          ListTile(
            title: Text(
              "Resultado:",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            subtitle: Text(
              moeda.toString(),
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.right,
            ),
          ),
          const Margin(
            margin: EdgeInsets.only(bottom: 16),
            child: Divider(),
          ),
          Form(
            key: formKey,
            child: Column(
              children: [
                Select(
                  lista: items,
                  onChanged: (String? novoValor) {
                    if (novoValor != null) {
                      selectedItem1 = novoValor;
                    }
                  },
                  dropdownValue: selectedItem1,
                  label: "Moeda 1",
                  exibeLabel: true,
                  validator: validaCampoSelect,
                ),
                Margin(
                  margin: const EdgeInsets.only(top: 16),
                  child: Select(
                    lista: items,
                    onChanged: (String? novoValor) {
                      if (novoValor != null) {
                        selectedItem2 = novoValor;
                      }
                    },
                    dropdownValue: selectedItem2,
                    label: "Moeda 2",
                    exibeLabel: true,
                    validator: validaCampoSelect,
                  ),
                ),
                Margin(
                  margin: const EdgeInsets.only(top: 16),
                  child: CampoTexto(
                    label: "Valor",
                    exibeLabel: true,
                    controller: _moedaControler,
                    hintText: "Digite o valor da moeda",
                    obscureText: false,
                    validator: validaCampoVazio,
                    keyboardType: TextInputType.number,
                  ),
                ),
                const Margin(
                  margin: EdgeInsets.symmetric(vertical: 16),
                  child: Divider(),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Botao(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            if (selectedItem1 == items[1] &&
                                selectedItem1 == items[2]) {}
                          }
                        },
                        fontColor: Colors.white,
                        label: "Buscar",
                        backgroundColor: Colors.blue,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Botao(
                        onPressed: () {
                          formKey.currentState!.reset();
                          _moedaControler.text = "";
                          selectedItem1 = items.first;
                          selectedItem2 = items.first;
                        },
                        fontColor: Colors.white,
                        label: "Limpar",
                        backgroundColor: Colors.red,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
