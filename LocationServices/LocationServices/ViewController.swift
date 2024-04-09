//
//  ViewController.swift
//  LocationServices
//
//  Created by Alexandra Burke on 11/7/23.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create map annotations (pins)
        let reykjavik = MKPointAnnotation()
        reykjavik.coordinate = CLLocationCoordinate2DMake(64.147209, -21.942400)
        reykjavik.title = "Iceland"
     
        let greenland = MKPointAnnotation()
        greenland.coordinate = CLLocationCoordinate2DMake(71.706940, -42.604301)
        greenland.title = "Greenland"
        
        // Display on map
        
        mapLocation.addAnnotations([reykjavik,greenland])
        
   //     let region = MKCoordinateRegion(center: reykjavik.coordinate, latitudinalMeters: 10000, longitudinalMeters: 10000)
        
   //     mapLocation.setRegion(region, animated: true)
      
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
    }

    var locationManager =  CLLocationManager()
    
    @IBOutlet weak var mapLocation: MKMapView!

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let userLocation:CLLocation = locations[0]
        
        locationManager.stopUpdatingLocation()
        
        let here = MKPointAnnotation()
        here.coordinate = CLLocationCoordinate2DMake(userLocation.coordinate.latitude, userLocation.coordinate.longitude)
        here.title = "Hello, I am here."
        
        mapLocation.addAnnotation(here)
        
        let region = MKCoordinateRegion(center: userLocation.coordinate, latitudinalMeters: 10000, longitudinalMeters: 10000)
         
        mapLocation.setRegion(region, animated: true)
        
    }

}

