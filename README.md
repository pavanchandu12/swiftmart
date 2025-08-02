
# 🛍️ SwiftMart – Hyperlocal Deal Finder (iOS App)

SwiftMart is a SwiftUI-based iOS application that helps users discover shopping deals from local stores near their current location. Designed with Bharat-scale utility in mind, the app filters and displays offers within a defined radius, making it ideal for hyperlocal commerce and small businesses.

---

## 🚀 Features

- 📍 **Location-Based Deals**: Uses GPS to find nearby offers based on your current location.
- 🔍 **Smart Filtering**: Filters deals by distance, category (e.g., Grocery, Clothing), and price.
- ❤️ **Save Favorites**: Users can bookmark interesting deals for quick access later.
- 📦 **Offline Support**: Deal data loaded from a local JSON file, can be extended to Firebase or REST APIs.
- 🌙 **Dark Mode Ready**: Supports both light and dark themes.

---

## 📸 Screenshots

<img width="629" height="881" alt="image" src="https://github.com/user-attachments/assets/3d643b64-89ce-4ee8-9d4b-5ce048008ffd" />
<img width="613" height="892" alt="image" src="https://github.com/user-attachments/assets/627174a7-f525-4541-aec3-2aa532c48ccb" />
<img width="622" height="828" alt="image" src="https://github.com/user-attachments/assets/f8477693-27f6-4b37-bcf8-3f2ad155cbcc" />
<img width="626" height="799" alt="image" src="https://github.com/user-attachments/assets/2d279a96-961a-4c1a-9092-0f4f3c9c1fae" />
<img width="618" height="802" alt="image" src="https://github.com/user-attachments/assets/031e1247-e233-46eb-a80e-be722644d06e" />

---

## 🧠 Tech Stack

| Area              | Technology          |
|-------------------|---------------------|
| Language          | Swift               |
| UI Framework      | SwiftUI             |
| Location Services | CoreLocation        |
| Storage           | JSON, UserDefaults  |
| Architecture      | MVVM                |
| IDE               | Xcode               |

---

## 🛠️ How to Run

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/SwiftMart.git
2. Open the project in Xcode (v15 or later).

3. Build and run on an iOS Simulator or physical device.

4. Ensure location permissions are granted to the app.

Deals are stored in a local JSON file (deals.json), structured like this:
[
  {
    "id": 1,
    "title": "50% off on Kurtis",
    "category": "Clothing",
    "price": 299,
    "latitude": 12.9300,
    "longitude": 77.5800
  },
  {
    "id": 2,
    "title": "Buy 1 Get 1 on Groceries",
    "category": "Grocery",
    "price": 150,
    "latitude": 12.9250,
    "longitude": 77.5900
  }
]


Project Goal
This project was built to demonstrate:

Real-world application of SwiftUI + CoreLocation

Problem-solving for hyperlocal commerce

End-to-end app development with clean UI/UX

Alignment with Meesho’s AI-first, Bharat-scale product vision
