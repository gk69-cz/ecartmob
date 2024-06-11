import 'package:flutter/material.dart';

// Function to convert string representation of icon to Icon widget
Icon getIconFromString(String iconName) {
  // Split the icon string to get the class and icon name
  List<String> iconParts = iconName.split('.');
  String iconClass = iconParts[0]; // Icons
  String iconNameWithoutClass = iconParts[1]; // electrical_services_outlined

  // Get the IconData corresponding to the icon name
  IconData? iconData = IconData(0); // Initialize with a default value
  switch (iconClass) {
    case 'Icons':
      iconData = IconsHelper.getIconData(iconNameWithoutClass);
      break;
    // Add more cases if you have icons from other classes
  }

  // Return Icon widget
  return Icon(iconData);
}

// Helper class to get IconData from icon name
class IconsHelper {
  static IconData? getIconData(String iconName) {
    print(iconName);
    switch (iconName) {
      case 'accessibility_new':
        return Icons.accessibility_new;
      case 'checkroom_outlined':
        return Icons.checkroom_outlined;
      case 'home_outlined':
        return Icons.home_outlined;
      case 'sports_soccer_outlined':
        return Icons.sports_soccer_outlined;
      case 'toys_outlined':
        return Icons.toys_outlined;
      case 'local_hospital_outlined':
        return Icons.local_hospital_outlined;
      case 'electrical_services_outlined':
        return Icons.electrical_services_outlined;


      // Add more cases for other icons as needed
      default:
        return Icons.electrical_services_outlined; // Return null for unknown icons
    }
  }
}

// Usage example:
void main() {
  // Sample JSON data
  Map<String, dynamic> jsonData = {
    "categoryName": "electronics",
    "icon": "Icons.electrical_services_outlined",
    "imagePath": "",
    "itemCount": 4
  };

  // Get the icon from JSON and create Icon widget
  Icon icon = getIconFromString(jsonData['icon']);

  // Use the icon in your component
  // For example:
  // CategoryBox(categoryName: jsonData['categoryName'], iconValue: icon);
}
