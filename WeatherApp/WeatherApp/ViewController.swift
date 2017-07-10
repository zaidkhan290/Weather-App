//
//  ViewController.swift
//  WeatherApp
//
//  Created by vm mac on 07/07/2017.
//  Copyright © 2017 vm mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    @IBOutlet weak var cityNameLabel: UILabel!
    
    @IBOutlet weak var CityTempLabel: UILabel!
  
 

    //var cities = ["Karachi","Lahore","Islamabad"]
    let data = Parsing()
   // @IBAction func getButton(_ sender: Any) {
        
       // let city:String = searchLabel.text
       // data.getData(cityName: city)
   // }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
       let (name,temp) = data.getData(cityName: "Karachi")
        //self.cityNameLabel.text = name
        //self.CityTempLabel.text = temp
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
       
   }

