//
//  ViewController.swift
//  NotesApp_Map
//
//  Created by ELLA MADALINSKI on 1/18/22.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapOutlet: MKMapView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.requestWhenInUseAuthorization()
        mapOutlet.showsUserLocation = true
        
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let center = CLLocationCoordinate2D(latitude: 42.2371 , longitude: -88.3226)
        let region = MKCoordinateRegion(center: center, latitudinalMeters: 500, longitudinalMeters: 500)
        let region2 = MKCoordinateRegion(center: center, span: span)
        mapOutlet.setRegion(region2, animated: true)
        
    }


}

