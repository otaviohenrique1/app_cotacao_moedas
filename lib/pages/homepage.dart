import 'package:app_cotacao_moedas/components/botao.dart';
import 'package:app_cotacao_moedas/components/campo_texto.dart';
import 'package:app_cotacao_moedas/components/margin.dart';
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
  final TextEditingController _moeda1Controler = TextEditingController();
  final TextEditingController _moeda2Controler = TextEditingController();

  @override
  void dispose() {
    _moeda1Controler.dispose();
    _moeda2Controler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
              "0,00:",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          const Divider(),
          ListTile(
            title: Text("Resultado:"),
            subtitle: Text(
              "0,00:",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          const Divider(),
          Margin(
            margin: const EdgeInsets.only(top: 22),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Margin(
                    margin: const EdgeInsets.only(bottom: 22),
                    child: CampoTexto(
                      label: "Moeda 1",
                      exibeLabel: true,
                      controller: _moeda1Controler,
                      hintText: "Digite o valor da moeda 1",
                      obscureText: false,
                      validator: validaCampoVazio,
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  Margin(
                    margin: const EdgeInsets.only(bottom: 22),
                    child: CampoTexto(
                      label: "Moeda 2",
                      exibeLabel: true,
                      controller: _moeda2Controler,
                      hintText: "Digite o valor da moeda 2",
                      obscureText: false,
                      validator: validaCampoVazio,
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Botao(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {}
                          },
                          fontColor: Colors.white,
                          label: "Buscar",
                          backgroundColor: Colors.blue,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Botao(
                          onPressed: () {},
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
          ),
        ],
      ),
    );
  }
}
