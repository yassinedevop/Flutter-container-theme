import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

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
          title: Text('Edit Text'),
          content: TextField(
            controller: _textController,
            decoration: InputDecoration(hintText: 'Enter new text'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  _displayText = _textController.text;
                });
                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
          ],
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
              SizedBox(height: 20),
              Text('Select Container Color:'),
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
              SizedBox(height: 20),
              Text('Select Border Color:'),
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
              SizedBox(height: 20),
              Text('Select Border Radius:'),
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
              SizedBox(height: 20),
              Text('Select Border Thickness:'),
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
        margin: EdgeInsets.symmetric(horizontal: 8),
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(
            color: _selectedColor == color ? Colors.black : Colors.transparent,
            width: 2,
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
        margin: EdgeInsets.symmetric(horizontal: 8),
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(
            color: _selectedBorderColor == color ? Colors.black : Colors.transparent,
            width: 2,
          ),
        ),
      ),
    );
  }
}

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: const Color(0xFF6368EC), // Primary color
    scaffoldBackgroundColor: const Color(0xFF0f1923), // Background color
    cardColor: const Color(0xFF1A253B), // Cards color
    textTheme: TextTheme(
      displayLarge: GoogleFonts.lato(
        textStyle: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
      ),
      bodyLarge: GoogleFonts.roboto(
        textStyle: const TextStyle(color: Colors.white, fontSize: 16),
      ),
      bodyMedium: GoogleFonts.openSans(
        textStyle: const TextStyle(color: Colors.white, fontSize: 14),
      ),
      titleMedium: GoogleFonts.montserrat(
        textStyle: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
      ),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Color(0xFF6368EC), // Primary color
      textTheme: ButtonTextTheme.primary,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF6368EC), // Primary color
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xFF6368EC), // Primary color
    ),
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF6368EC), // Primary color
      secondary: Color(0xFF6368EC), // Primary color
      surface: Color(0xFF1A253B), // Cards color
    ),
    navigationBarTheme: const NavigationBarThemeData(
      backgroundColor: Color(0xFF0f1923),
      indicatorColor: Color(0xFF6368EC),
     shadowColor: Colors.white30,
     overlayColor:WidgetStatePropertyAll(Color(0xFF6368EC)),
    ),
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: Color(0xFF1A253B), // Cards color
      contentTextStyle: TextStyle(color: Colors.white),
    ),
    sliderTheme: SliderThemeData(
       inactiveTrackColor: Color(0xFF6368EC).withOpacity(0.4),
       inactiveTickMarkColor: Color(0xFF1A253B)
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    shadowColor: Colors.white30,
    primaryColor: const Color(0xFF6368EC), // Primary color
    scaffoldBackgroundColor: const Color(0xFF0f1923), // Background color
    cardColor: const Color(0xFF1A253B), // Cards color
    textTheme: TextTheme(
      displayLarge: GoogleFonts.lato(
        textStyle: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
      ),
      bodyLarge: GoogleFonts.roboto(
        textStyle: const TextStyle(color: Colors.white, fontSize: 16),
      ),
      bodyMedium: GoogleFonts.openSans(
        textStyle: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
      ),
      titleMedium: GoogleFonts.montserrat(
        textStyle: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
      ),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Color(0xFF6368EC), // Primary color
      textTheme: ButtonTextTheme.primary,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF0f1923), // Primary color
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xFF6368EC), // Primary color
    ),
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFF6368EC), // Primary color
      secondary: Color(0xFF6368EC), // Primary color
      surface: Color(0xFF1A253B), // Cards color
    ),
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: Color(0xFF1A253B), // Cards color
      contentTextStyle: TextStyle(color: Colors.white),
    ),
    sliderTheme: SliderThemeData(
      inactiveTrackColor: Color(0xFF6368EC).withOpacity(0.4),
      inactiveTickMarkColor: Color(0xFF1A253B)
    ),
  );
}