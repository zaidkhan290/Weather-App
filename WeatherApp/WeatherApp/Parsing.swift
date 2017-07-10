//
//  Parsing.swift
//  WeatherApp
//
//  Created by Zaid on 7/7/17.
//  Copyright © 2017 vm mac. All rights reserved.
//

import UIKit

var citName: String!
var citTemp: String!

class Parsing: UIView{
   
   
    
    func getData(cityName: String)->(String,String){
        
        let urlString = "http://api.openweathermap.org/data/2.5/weather?q=\(cityName)&appid=fd32baf87e1d8a0b42a94ee72979906a&units=metric"
        
        let urlRequest = URL(string: urlString)
    
        let task = URLSession.shared.dataTask(with: urlRequest!){
            (data,response,error) in
            if error != nil{
                print(error!)
                return
            }
            
            do{
                let json = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as! [String : AnyObject]
                print(json)
                
                
                if let name = json["name"] as? String{
                   // self.cityNameLabel.text = name
                    citName! = name
                    print(citName)
                    
                }
                
                if let main = json["main"] as? NSDictionary{
                    if let temp = main["temp"] as? Double{
                     //   self.CityTempLabel.text = String(format: "%.1f",temp)
                       citTemp! = String(format: "%.1f",temp)
                        print(citTemp)
                    }
                    
                }
                
                DispatchQueue.main.async {
                    //  self.tableView.reloadData()
                }
            }catch let error{
                print(error)
            }
            
        }
        task.resume()
       
        //return(citName,citTemp)
        return(citName,citTemp)
        
  }
  
}
