//
//  ViewController.m
//  Obj-C-CoreBluetooth-Peripheral
//
//  Created by Christopher Moore on 5/16/17.
//  Copyright © 2017 Christopher Moore. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // Assign TableView Datasource and Delegate
    [self.tableView delegate];
    [self.tableView dataSource];
    
    
    CBCentralManager *centralManager = [[CBCentralManager alloc] initWithDelegate:self queue:nil options:nil];
    [centralManager scanForPeripheralsWithServices:nil options:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - CB Protocols
- (void) centralManagerDidUpdateState:(CBCentralManager *)central {

}

- (void) centralManager:(CBCentralManager *)central didConnectPeripheral:(nonnull CBPeripheral *)peripheral {
    [_peripherals addObject:[peripheral name]];
}

# pragma mark - UITableView DataSource Protocols

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  
    return [_peripherals count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *celly = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    [self configureCell:celly forRow:indexPath];
    
    return [UITableViewCell alloc];
}

- (void) configureCell:(UITableViewCell *)cell forRow:(NSIndexPath *) row {
    int i;
    for (i = 0; i < [_peripherals count]; i++) {
        [cell textLabel]
        some changes
    }
}




@end
