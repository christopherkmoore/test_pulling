//
//  ViewController.h
//  Obj-C-CoreBluetooth-Peripheral
//
//  Created by Christopher Moore on 5/16/17.
//  Copyright © 2017 Christopher Moore. All rights reserved.
//

#import <UIKit/UIKit.h>
@import CoreBluetooth;

@interface ViewController : UIViewController <CBCentralManagerDelegate, UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) CBCentralManager *centralManager;
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *peripherals;

- (void) centralManagerDidUpdateState:(CBCentralManager *)central;

@end

