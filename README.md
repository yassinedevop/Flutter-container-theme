# **Custom Button Flutter App**  

A sleek and intuitive Flutter application for designing and previewing customizable button-like containers. Tailor attributes such as colors, borders, and text dynamically, and seamlessly integrate the generated `Container` widget code into your Flutter projects.

---

## **Features**  

### **Interactive Customization:**  
- Customize container properties such as background color, border color, thickness, and corner radius using intuitive sliders and palettes.  
- Dynamically edit the display text inside the container.  

### **Real-Time Preview:**  
- Instantly preview changes in a responsive UI, ensuring accurate design reflection.  

### **Code Generation:**  
- Generate clean and reusable Flutter `Container` widget code automatically.  
- Copy the code to your clipboard with a single tap for effortless integration.  

### **User-Friendly Experience:**  
- Modern and minimalist design for seamless navigation.  
- Built-in light and dark modes to enhance accessibility.  

---

## **App Previews**  

### **Interactive Design Customization:**  
![Demo](https://github.com/yassinedevop/Flutter-container-theme/raw/master/screenshots/custom_container.mp4)  

### **Code Generation and Copy to Clipboard:**  
![Code Generation](https://github.com/yassinedevop/Flutter-container-theme/raw/master/screenshots/copy_to_clipboard.mp4)  

---

## **How It Works**  

1. **Edit Text:** Tap the container to modify its text dynamically.  
2. **Customize Appearance:**  
   - Use sliders to adjust border thickness and radius.  
   - Select colors for the container and border using the color palette.  
3. **Generate Code:** Preview the widget's Flutter code and copy it with a single tap.  

---

## **Getting Started**  

### **Prerequisites:**  
Ensure your environment includes:  
- [Flutter SDK](https://docs.flutter.dev/get-started/install)  
- [Dart](https://dart.dev/get-dart)  
- A code editor like [VS Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio)  

### **Installation Steps:**  
1. Clone the repository:  
   ```bash
   git clone https://github.com/your-username/custom-button-flutter-app.git
   ```  
2. Navigate to the project folder:  
   ```bash
   cd custom-button-flutter-app  
   ```  
3. Fetch dependencies:  
   ```bash
   flutter pub get  
   ```  
4. Run the app:  
   ```bash
   flutter run  
   ```  

---

## **Sample Code**  

Below is an example of the Flutter code generated for a customized container:  

```dart
Container(
  padding: const EdgeInsets.all(16),
  decoration: BoxDecoration(
    color: Colors.blue.withOpacity(0.5),
    borderRadius: BorderRadius.circular(8),
    border: Border.all(color: Colors.blue, width: 1),
  ),
  child: Text(
    'Custom Text',
    style: Theme.of(context).textTheme.bodyLarge,
  ),
);
```  

---

## **Roadmap**  

**Planned Features:**  
- Gradient background support for containers.  
- Advanced font customization for text styling.  
- Additional themes for diverse design options.  

---

## **Contributing**  

We welcome contributions to enhance this app! Here's how you can get involved:  

1. Fork the repository.  
2. Create a new branch for your feature:  
   ```bash
   git checkout -b feature-name  
   ```  
3. Commit your changes:  
   ```bash
   git commit -m "Add feature description"  
   ```  
4. Push to the branch:  
   ```bash
   git push origin feature-name  
   ```  
5. Open a pull request.  

---

## **License**  

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.  

---

**Create stunning UI components effortlessly with Custom Button Flutter App! 🚀**

