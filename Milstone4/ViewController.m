//
//  ViewController.m
//  Milstone4
//
//  Created by Abbi H Safaie on 27/03/2014.
//  Copyright (c) 2014 Abbas H Safaie. All rights reserved.
//

#import "ViewController.h"
#import "PhoneBookEntry.h"


@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad

{
    [super viewDidLoad];
	
    // Do any additional setup after loading the view, typically from a nib.
        self.elements=[[NSMutableArray alloc]init];


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.elements.count;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    cell.textLabel.text=[self.elements objectAtIndex: indexPath.row];
    
    return cell;
}



#pragma mark- Sgue

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    DetailViewController* dvc = (DetailViewController*)segue.destinationViewController;
    [self.myTableView reloadData];
    dvc.delegate=self;
    dvc.receieved = self;

}

#pragma mark -Detail View Controller Delegate

// method to dispear the detailViewController

-(void) detailViewControllerWillDisppear:(DetailViewController *)detailViewController{
    [self dismissViewControllerAnimated:YES completion:nil];
    
//alloc our object



//get text from TextField and add it to our Object(entry)
    
 
//put our object(entry) into the Array (element)
    

    
    //load our element into the table?!!!?!!
    



}







@end
