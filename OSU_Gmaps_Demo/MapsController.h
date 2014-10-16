//
//  MapsController.h
//  OSU_Gmaps_Demo
//
//  Created by Benjamin Friedman on 10/13/14.
//

#import <UIKit/UIKit.h>
#import <GoogleMaps/GoogleMaps.h>

@interface MapsController : UIViewController {
    GMSMapView *_mapView;
    double _latitude;
    double _longitude;
}

-(void)setLatitude: (double) latitude andLongitude: (double) longitude;

-(void)showMap;

@end
