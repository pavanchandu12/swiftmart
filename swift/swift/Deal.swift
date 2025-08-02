import Foundation

struct Deal: Codable, Identifiable {
    let id: Int
    let title: String
    let category: String
    let offer: String
    let latitude: Double
    let longitude: Double
} 