//
//  ViewController.swift
//  MapKitSwift3
//
//  Created by Juan Morillo on 11/12/16.
//  Copyright © 2016 Juan Morillo. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
  @IBOutlet weak var mapContainer: MKMapView!

  @IBOutlet weak var control: UISegmentedControl!
  override func viewDidLoad() {
    super.viewDidLoad()
  
    //User Location
    mapContainer.showsUserLocation = true
 
  }

  @IBAction func changeMapaView(_ sender: Any) {
    
    switch control.selectedSegmentIndex {
    
    case 0:
      mapContainer.mapType = .standard
    
    case 1:
      mapContainer.mapType = .satellite
    
    case 2:
      mapContainer.mapType = .hybrid
    
    default:
      
      break
    }
  
  }

}

