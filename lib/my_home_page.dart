import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  double _colorShade = 400;
  double _borderColorShade = 400;
  double _borderRadius = 8;
  double _borderThickness = 1;
  Color _selectedColor = Colors.blue;
  Color _selectedBorderColor = Colors.blue;
  String _displayText = 'Text Here ...';
  final TextEditingController _textController = TextEditingController();

  final List<Color> colors = [
    Colors.blue,
    Colors.cyan,
    Colors.teal,
    Colors.green,
    Colors.lime,
    Colors.yellow,
    Colors.orange,
    Colors.red,
    Colors.pink,
    Colors.purple,
    Colors.indigo,
    Colors.brown,
  ];

  void _editText() {
    _textController.text = _displayText;
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Edit Text'),
          content: TextField(
            controller: _textController,
            decoration: const InputDecoration(hintText: 'Enter new text'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  _displayText = _textController.text;
                });
                Navigator.of(context).pop();
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }

  void _showCustomContainer() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SelectableText.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Container(\n  padding: ',
                      style: TextStyle(color: Colors.blue),
                    ),
                    TextSpan(
                      text: 'const EdgeInsets.all(16),\n  decoration: BoxDecoration(\n    color: ',
                      style: TextStyle(color: Colors.green),
                    ),
                    TextSpan(
                      text: '${_selectedColor.withOpacity(_colorShade / 900)},\n',
                      style: TextStyle(color: Colors.orange),
                    ),
                    TextSpan(
                      text: '    borderRadius: BorderRadius.circular(',
                      style: TextStyle(color: Colors.green),
                    ),
                    TextSpan(
                      text: '$_borderRadius',
                      style: TextStyle(color: Colors.orange),
                    ),
                    TextSpan(
                      text: '),\n    border: Border.all(color: ',
                      style: TextStyle(color: Colors.green),
                    ),
                    TextSpan(
                      text: '${_selectedBorderColor.withOpacity(_borderColorShade / 900)}',
                      style: TextStyle(color: Colors.orange),
                    ),
                    TextSpan(
                      text: ', width: ',
                      style: TextStyle(color: Colors.green),
                    ),
                    TextSpan(
                      text: '$_borderThickness',
                      style: TextStyle(color: Colors.orange),
                    ),
                    TextSpan(
                      text: '),\n  ),\n  child: Text(\n    ',
                      style: TextStyle(color: Colors.blue),
                    ),
                    TextSpan(
                      text: '$_displayText',
                      style: TextStyle(color: Colors.orange),
                    ),
                    TextSpan(
                      text: ',\n    style: Theme.of(context).textTheme.bodyLarge,\n  ),\n)',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Clipboard.setData(ClipboardData(
                    text: '''
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
              color: ${_selectedColor.withOpacity(_colorShade / 900)},
                borderRadius: BorderRadius.circular($_borderRadius),
                border: Border.all(color: ${_selectedBorderColor.withOpacity(_borderColorShade / 900)}, width: $_borderThickness),
                ),
                child: Text(
                $_displayText,
                style: Theme.of(context).textTheme.bodyLarge,
                ),
              )
              '''
                  ));
                  Navigator.of(context).pop();
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Copied to clipboard')),
                  );
                },
                child: const Text('Copy to Clipboard'),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: _editText,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: _selectedColor.withOpacity(_colorShade / 900),
                    borderRadius: BorderRadius.circular(_borderRadius),
                    border: Border.all(color: _selectedBorderColor.withOpacity(_borderColorShade / 900), width: _borderThickness),
                  ),
                  child: Text(
                    _displayText,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text('Select Container Color:'),
              Wrap(
                alignment: WrapAlignment.center,
                children: colors.map((color) => _buildColorCircle(color)).toList(),
              ),
              Slider(
                value: _colorShade,
                min: 100,
                max: 900,
                divisions: 8,
                label: _colorShade.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _colorShade = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              const Text('Select Border Color:'),
              Wrap(
                alignment: WrapAlignment.center,
                children: colors.map((color) => _buildBorderColorCircle(color)).toList(),
              ),
              Slider(
                value: _borderColorShade,
                min: 100,
                max: 900,
                divisions: 8,
                label: _borderColorShade.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _borderColorShade = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              const Text('Select Border Radius:'),
              Slider(
                value: _borderRadius,
                min: 0,
                max: 50,
                divisions: 50,
                label: _borderRadius.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _borderRadius = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              const Text('Select Border Thickness:'),
              Slider(
                value: _borderThickness,
                min: 1,
                max: 10,
                divisions: 9,
                label: _borderThickness.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _borderThickness = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showCustomContainer,
        child: const Icon(Icons.visibility),
      ),
    );
  }

  Widget _buildColorCircle(Color color) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedColor = color;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(
            color: _selectedColor == color ? Colors.white : Colors.transparent,
            width: 1,
          ),
        ),
      ),
    );
  }

  Widget _buildBorderColorCircle(Color color) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedBorderColor = color;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(
            color: _selectedBorderColor == color ? Colors.white : Colors.transparent,
            width: 1,
          ),
        ),
      ),
    );
  }
}
