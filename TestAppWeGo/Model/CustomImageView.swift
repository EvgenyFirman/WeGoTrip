//
//  CustomImageView.swift
//  TestAppWeGo
//
//  Created by Евгений Фирман on 11.08.2021.
//

import UIKit

class CustomImageView: UIImageView {

    // Loading image from remote API
    
    func loadImage(from url: URL) {
        
        let task = URLSession.shared.dataTask(with: url) { (data,response,error) in
            
            guard let data = data, let newImage = UIImage(data: data) else {
                
                print("Cant load image from \(url)")
                
                return
                
            }
            
            DispatchQueue.main.async {
                self.image = newImage
            }
        }
        
        task.resume()
        
    }
}
