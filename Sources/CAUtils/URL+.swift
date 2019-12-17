//
//  File.swift
//  
//
//  Created by Anatolie on 12/17/19.
//

import Foundation

extension URL {
    public static func createFolder(folderName: String) -> Void {
        let fileManager = FileManager.default
        // Get document directory for device, this should succeed
        if let documentDirectory = fileManager.urls(for: .documentDirectory,
                                                    in: .userDomainMask).first {
            // Construct a URL with desired folder name
            let folderURL = documentDirectory.appendingPathComponent(folderName)
            // If folder URL does not exist, create it
            if !fileManager.fileExists(atPath: folderURL.path) {
                do {
                    // Attempt to create folder
                    try fileManager.createDirectory(atPath: folderURL.path,
                                                    withIntermediateDirectories: true,
                                                    attributes: nil)
                    print("folder created: \(folderName)")
                } catch {
                    // Creation failed. Print error & return nil
                    print("folder fail: \(folderName)", error.localizedDescription)
                    return
                }
            }
            // Folder either exists, or was created. Return URL
            //print("folder exists: \(folderName)".warning)
            return
        }
        // Will only be called if document directory not found
        return
    }
}
