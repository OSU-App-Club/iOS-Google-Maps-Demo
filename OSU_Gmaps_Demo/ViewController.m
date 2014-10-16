//
//  ViewController.m
//  OSU_Gmaps_Demo
//
//  Created by Benjamin Friedman on 10/13/14.
//

#import "ViewController.h"

@implementation ViewController

@synthesize latField;
@synthesize longField;

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)takeMeThereSelected:(id)sender {
    MapsController *mc = [self.storyboard instantiateViewControllerWithIdentifier: @"map_controller"];
    [self.navigationController pushViewController: mc animated: YES];
    
    if([latField.text isEqualToString: @""] || [longField.text isEqualToString: @""]) {
        latField.text = @"44.567";
        longField.text = @"-123.278";
    }
    
    [mc setLatitude: [latField.text doubleValue] andLongitude: [longField.text doubleValue]];
    [mc showMap];
}

@end
