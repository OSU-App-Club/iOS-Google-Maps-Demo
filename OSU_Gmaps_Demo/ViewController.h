//
//  ViewController.h
//  OSU_Gmaps_Demo
//
//  Created by Benjamin Friedman on 10/13/14.
//

#import <UIKit/UIKit.h>
#import "MapsController.h"

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UITextField *latField;
@property (nonatomic, weak) IBOutlet UITextField *longField;

-(IBAction)takeMeThereSelected:(id)sender;

@end

