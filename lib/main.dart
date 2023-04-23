import 'package:flutter/material.dart';

enum Genero { masculino, feminino }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formulário Flutter',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyForm(),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  Genero? _generoSelecionado;
  bool _termosAceitos = false;
  double _sliderValue = 18;
  bool _checkedValue1 = false;
  bool _checkedValue2 = false;
  bool _checkedValue3 = false;
  bool _switchValue1 = false;
  bool _switchValue2 = false;
  bool _switchValue3 = false;
  bool _switchValue4 = false;
  bool _switchValue5 = false;

  String _dropdownValue = 'Centro';

  void _submitForm() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Formulário está sendo processado...'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulário Flutter'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(
                labelText: 'Nome',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                labelText: 'E-mail',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const Text('Gênero'),
            RadioListTile(
              title: const Text('Masculino'),
              value: Genero.masculino,
              groupValue: _generoSelecionado,
              onChanged: (Genero? value) {
                setState(() {
                  _generoSelecionado = value;
                });
              },
            ),
            RadioListTile(
              title: const Text('Feminino'),
              value: Genero.feminino,
              groupValue: _generoSelecionado,
              onChanged: (Genero? value) {
                setState(() {
                  _generoSelecionado = value;
                });
              },
            ),
            const SizedBox(height: 16),
            const Text('Idade (mínimo 18)'),
            Slider(
              value: _sliderValue,
              min: 18,
              max: 100,
              divisions: 82,
              label: _sliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _sliderValue = value;
                });
              },
            ),
            const SizedBox(height: 16),
            const Text('Bebida favorita?'),
            CheckboxListTile(
              title: const Text('Café'),
              value: _checkedValue1,
              onChanged: (bool? value) {
                setState(() {
                  _checkedValue1 = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Energético'),
              value: _checkedValue2,
              onChanged: (bool? value) {
                setState(() {
                  _checkedValue2 = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Chá'),
              value: _checkedValue3,
              onChanged: (bool? value) {
                setState(() {
                  _checkedValue3 = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Cerveja'),
              value: _checkedValue3,
              onChanged: (bool? value) {
                setState(() {
                  _checkedValue3 = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Refrigerante'),
              value: _checkedValue3,
              onChanged: (bool? value) {
                setState(() {
                  _checkedValue3 = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Vodka'),
              value: _checkedValue3,
              onChanged: (bool? value) {
                setState(() {
                  _checkedValue3 = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Cachaça'),
              value: _checkedValue3,
              onChanged: (bool? value) {
                setState(() {
                  _checkedValue3 = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Whisky'),
              value: _checkedValue3,
              onChanged: (bool? value) {
                setState(() {
                  _checkedValue3 = value!;
                });
              },
            ),
            const SizedBox(height: 16),
            const Text('Linguagens de Programação que você utiliza:'),
            SwitchListTile(
              title: const Text('JavaScript'),
              value: _switchValue1,
              onChanged: (bool value) {
                setState(() {
                  _switchValue1 = value;
                });
              },
            ),
            SwitchListTile(
              title: const Text('Python'),
              value: _switchValue2,
              onChanged: (bool value) {
                setState(() {
                  _switchValue2 = value;
                });
              },
            ),
            SwitchListTile(
              title: const Text('PHP'),
              value: _switchValue3,
              onChanged: (bool value) {
                setState(() {
                  _switchValue3 = value;
                });
              },
            ),
            SwitchListTile(
              title: const Text('C/C++'),
              value: _switchValue4,
              onChanged: (bool value) {
                setState(() {
                  _switchValue4 = value;
                });
              },
            ),
            SwitchListTile(
              title: const Text('Ruby'),
              value: _switchValue5,
              onChanged: (bool value) {
                setState(() {
                  _switchValue5 = value;
                });
              },
            ),
            SwitchListTile(
              title: const Text('Node.JS'),
              value: _switchValue5,
              onChanged: (bool value) {
                setState(() {
                  _switchValue5 = value;
                });
              },
            ),
            SwitchListTile(
              title: const Text('Java'),
              value: _switchValue5,
              onChanged: (bool value) {
                setState(() {
                  _switchValue5 = value;
                });
              },
            ),
            SwitchListTile(
              title: const Text('Julia'),
              value: _switchValue5,
              onChanged: (bool value) {
                setState(() {
                  _switchValue5 = value;
                });
              },
            ),
            SwitchListTile(
              title: const Text('Typescript'),
              value: _switchValue5,
              onChanged: (bool value) {
                setState(() {
                  _switchValue5 = value;
                });
              },
            ),
            SwitchListTile(
              title: const Text('Rust'),
              value: _switchValue5,
              onChanged: (bool value) {
                setState(() {
                  _switchValue5 = value;
                });
              },
            ),
            SwitchListTile(
              title: const Text('R'),
              value: _switchValue5,
              onChanged: (bool value) {
                setState(() {
                  _switchValue5 = value;
                });
              },
            ),
            SwitchListTile(
              title: const Text('C#'),
              value: _switchValue5,
              onChanged: (bool value) {
                setState(() {
                  _switchValue5 = value;
                });
              },
            ),
            SwitchListTile(
              title: const Text('Objective-C'),
              value: _switchValue5,
              onChanged: (bool value) {
                setState(() {
                  _switchValue5 = value;
                });
              },
            ),
            SwitchListTile(
              title: const Text('Switch'),
              value: _switchValue5,
              onChanged: (bool value) {
                setState(() {
                  _switchValue5 = value;
                });
              },
            ),
            SwitchListTile(
              title: const Text('Kotlin'),
              value: _switchValue5,
              onChanged: (bool value) {
                setState(() {
                  _switchValue5 = value;
                });
              },
            ),
            SwitchListTile(
              title: const Text('Dart'),
              value: _switchValue5,
              onChanged: (bool value) {
                setState(() {
                  _switchValue5 = value;
                });
              },
            ),
            SwitchListTile(
              title: const Text('Go'),
              value: _switchValue5,
              onChanged: (bool value) {
                setState(() {
                  _switchValue5 = value;
                });
              },
            ),
            const SizedBox(height: 16),
            const Text('Em qual bairro de Caicó você mora?'),
            DropdownButton<String>(
              value: _dropdownValue,
              items: <String>[
                "Centro",
                "Acampamento",
                "Penedo",
                "Nova Descoberta",
                "Castelo Branco",
                "Santa Costa",
                "Canuto e Filhos",
                "Jardim Satélite - IPE",
                "Vila Altiva",
                "Loteamento Graciosa",
                "Maynard",
                "Itans",
                "Loteamento Santa Clara",
                "Bento XVI",
                "Loteamento Severiano Alves dos Santos",
                "Boa Passagem",
                "Vila do Príncipe",
                "Recreio",
                "Darcy Fonseca",
                "Alto da Boa Vista",
                "Samanaú",
                "Salviano Santos",
                "Nova Caicó",
                "Loteamento Serrote Branco",
                "Loteamento Serrote Branco II",
                "Loteamento Serrote Branco III",
                "Caicó Norte Shopping",
                "Barra Nova",
                "Barra Nova II",
                "João XXIII",
                "Paulo VI",
                "João Paulo II",
                "Walfredo Gurgel",
                "Adjunto Dias",
                "Frei Damião",
                "Casas Populares",
                "Novo Horizonte",
                "Paraíba",
                "Soledade",
                "Laginhas",
                "Palma",
                "Perímetro Irrigado Itans-Sabugi"
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? value) {
                setState(() {
                  _dropdownValue = value!;
                });
              },
            ),
            const SizedBox(height: 16),
            const Text('Termos de Uso'),
            SwitchListTile(
              title: const Text('Aceito todos os termos'),
              value: _termosAceitos,
              onChanged: (bool value) {
                setState(() {
                  _termosAceitos = value;
                });
              },
            ),
            //ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: _content ,duration: Duration(milliseconds: 200),));
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('Enviar'),
              onPressed: () {
                _submitForm();
              },
            ),
          ],
        ),
      ),
    );
  }
}
