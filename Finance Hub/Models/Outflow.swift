import Foundation

struct Outflow: Codable {
    let category: String
    let summary: [Summary]?
}

struct Summary: Codable {
    let currency: Currency?
    let amount: Double
    let subcategory: String
}


