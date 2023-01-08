import Foundation

func readLocalJsonFile(forName name: String) -> Data? {
    do {
        if let filePath = Bundle.main.path(forResource: name, ofType: "json"){
            let fileUrl = URL(fileURLWithPath: filePath)
            let data = try Data(contentsOf: fileUrl)
            return data
        }
    } catch {
        print("Deu merda")
    }
    
    return nil
}

func parse(jsonData: Data) -> [Outflow]? {
    do {
        let decodedData = try JSONDecoder().decode([Outflow].self, from: jsonData)
        return decodedData
    } catch {
        print("error: \(error)")
    }
    
    return nil
}
