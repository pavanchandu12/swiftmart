import Foundation

struct Location {
    let latitude: Double
    let longitude: Double
}

class DealManager {
    var deals: [Deal] = []
    
    init(jsonFile: String = "deals.json") {
        loadDeals(from: jsonFile)
    }
    
    private func loadDeals(from file: String) {
        guard let url = Bundle.main.url(forResource: file, withExtension: nil) ?? URL(string: FileManager.default.currentDirectoryPath + "/" + file) else {
            print("Could not find deals.json")
            return
        }
        do {
            let data = try Data(contentsOf: url)
            let decoded = try JSONDecoder().decode([Deal].self, from: data)
            self.deals = decoded
        } catch {
            print("Error loading deals: \(error)")
        }
    }
    
    func deals(near location: Location, within radius: Double) -> [(deal: Deal, distance: Double)] {
        deals.compactMap { deal in
            let distance = DealManager.distance(from: location, to: Location(latitude: deal.latitude, longitude: deal.longitude))
            return distance <= radius ? (deal, distance) : nil
        }.sorted { $0.distance < $1.distance }
    }
    
    static func distance(from: Location, to: Location) -> Double {
        let earthRadius = 6371.0 // km
        let dLat = (to.latitude - from.latitude) * .pi / 180
        let dLon = (to.longitude - from.longitude) * .pi / 180
        let lat1 = from.latitude * .pi / 180
        let lat2 = to.latitude * .pi / 180
        let a = sin(dLat/2) * sin(dLat/2) + sin(dLon/2) * sin(dLon/2) * cos(lat1) * cos(lat2)
        let c = 2 * atan2(sqrt(a), sqrt(1-a))
        return earthRadius * c
    }
} 