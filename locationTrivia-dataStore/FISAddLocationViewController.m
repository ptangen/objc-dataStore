//
//  FISAddLocationViewController.m
//  locationTrivia-dataStore
//
//  Created by Joe Burgess on 7/1/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISAddLocationViewController.h"
#import "FISLocation.h"
#import "FISLocationsDataStore.h"

@interface FISAddLocationViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *latField;
@property (weak, nonatomic) IBOutlet UITextField *lngField;

@end

@implementation FISAddLocationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)saveTapped:(id)sender {
    FISLocation *newLocation = [[FISLocation alloc] init];
    newLocation.name = self.nameField.text;
    newLocation.latitude = [self.latField.text floatValue];
    newLocation.longitude = [self.lngField.text floatValue];

    FISLocationsDataStore *dataStore = [FISLocationsDataStore sharedManager];

    [dataStore.locations addObject:newLocation];

    [self.navigationController popViewControllerAnimated:YES];



}

@end
