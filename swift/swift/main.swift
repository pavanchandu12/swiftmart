import Foundation

// Simulate user location (e.g., somewhere in Bangalore)
let userLocation = Location(latitude: 12.9718, longitude: 77.5937)
let radius = 5.0 // km

let manager = DealManager()
let nearbyDeals = manager.deals(near: userLocation, within: radius)

print("\nNearby Deals (within \(radius) km):\n")
for (index, item) in nearbyDeals.enumerated() {
    let deal = item.deal
    let distance = String(format: "%.2f", item.distance)
    print("\(index + 1). \(deal.title) [\(deal.category)] - \(deal.offer) (\(distance) km away)")
}

// Simulate favoriting a deal
let favoritesFile = "favorites.txt"
func saveFavorite(deal: Deal) {
    let line = "\(deal.id)\n"
    if let data = line.data(using: .utf8) {
        if let handle = FileHandle(forWritingAtPath: favoritesFile) {
            handle.seekToEndOfFile()
            handle.write(data)
            handle.closeFile()
        }
    } else {
        try? data.write(to: URL(fileURLWithPath: favoritesFile))
    }
}

func loadFavorites() -> [Int] {
    guard let data = try? String(contentsOfFile: favoritesFile) else { return [] }
    return data.split(separator: "\n").compactMap { Int($0) }
}

print("\nEnter the number of a deal to save as favorite, or press Enter to skip:")
if let input = readLine(), let num = Int(input), num > 0, num <= nearbyDeals.count {
    let deal = nearbyDeals[num - 1].deal
    saveFavorite(deal: deal)
    print("Saved \(deal.title) to favorites!")
}

let favoriteIDs = loadFavorites()
let favoriteDeals = manager.deals.filter { favoriteIDs.contains($0.id) }
if !favoriteDeals.isEmpty {
    print("\nYour Favorite Deals:")
    for deal in favoriteDeals {
        print("- \(deal.title) [\(deal.category)] - \(deal.offer)")
    }
} else {
    print("\nNo favorites yet.")
} 