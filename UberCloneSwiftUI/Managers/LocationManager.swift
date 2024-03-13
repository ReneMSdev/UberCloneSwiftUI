//
//  LocationManager.swift
//  UberCloneSwiftUI
//
//  Created by Rene Salomone on 3/13/24.
//

import CoreLocation

class LocationManager: NSObject, ObservableObject {
    private let locationManager = CLLocationManager()
    
    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
}

extension LocationManager: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard !locations.isEmpty else {return}
        // stops updating location. otherwise you would get constant updates.
        // unnecessary once initial location is known and drains battery
        locationManager.stopUpdatingLocation()
    }
}
