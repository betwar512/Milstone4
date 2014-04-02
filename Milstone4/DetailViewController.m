//
//  DetailViewController.m
//  Milstone4
//
//  Created by Abbi H Safaie on 27/03/2014.
//  Copyright (c) 2014 Abbas H Safaie. All rights reserved.
//

#import "DetailViewController.h"
#import "DirectoryEntry.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.mvc = self.receieved;
    self.elements=[[NSMutableArray alloc]init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)Goback:(id)sender {


    
}
//for better design - O -

//-(void) viewWillDisappear:(BOOL)animated{
  //  [self.delegate detailViewControllerWillDisppear:self];

//}



//method use for hide keyboard
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:(YES)];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

// using method for add objects
- (IBAction)DoneButton:(id)sender {
    

        self.mvc.entry=[[DirectoryEntry alloc]init];
        self.mvc.entry.firstName=self.FirstName.text;
        self.mvc.entry.lastName=self.LastName.text;
        self.mvc.entry.address=self.Address.text;
        self.mvc.entry.PhoneNumber=self.PhoneNumber.text;
        
        [self.mvc.elements addObject: self.mvc.entry];
        [self.delegate detailViewControllerWillDisppear:self];

  //  [self.delegate goBackToLastPage];
    
}



@end
