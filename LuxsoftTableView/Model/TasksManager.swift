//
//  DataManager.swift
//  LuxsoftTableView
//
//  Created by René Sestier on 09/07/21.
//

import Foundation

struct TasksManager {
    
    func loadJSONData(filename: String) -> Data? {
        do {
            if let filePath = Bundle.main.path(forResource: filename, ofType: "json") {
                let fileUrl = URL(fileURLWithPath: filePath)
                let data = try Data(contentsOf: fileUrl)
                return data
            }
        } catch {
            print("error: \(error)")
        }
        return nil
    }

    func parse(jsonData: Data) -> [TaskModel]? {
        do {
            let decodedData = try JSONDecoder().decode([TaskModel].self, from: jsonData)
            return decodedData
        } catch {
            print("error: \(error)")
        }
        
        return nil
    }
}
