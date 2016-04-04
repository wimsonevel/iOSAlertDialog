//
//  ViewController.m
//  iOSAlertDialog
//
//  Created by Docotel on 4/4/16.
//  Copyright © 2016 Wim. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)alertControllerBackgroundTapped {
    [self dismissViewControllerAnimated: YES
                             completion: nil];
}

- (IBAction)btnAlert1:(id)sender {
    UIAlertController* alertDialog = [UIAlertController
                                  alertControllerWithTitle:@"Ini Judul Ya?"
                                  message:@"Hai Semuanya !"
                                  preferredStyle:UIAlertControllerStyleAlert];
    
    [self presentViewController:alertDialog animated:YES completion:^{
        alertDialog.view.superview.userInteractionEnabled = YES;
        [alertDialog.view.superview addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget: self action: @selector(alertControllerBackgroundTapped)]];
    }];
}

- (IBAction)btnAlert2:(id)sender {
    UIAlertController* alertDialog = [UIAlertController
                                  alertControllerWithTitle:@"Ini Judul Ya?"
                                  message:@"Apakah Anda ingin melanjutkan ?"
                                  preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* ok = [UIAlertAction
                         actionWithTitle:@"Ya"
                         style:UIAlertActionStyleDefault
                         handler:^(UIAlertAction * action)
                         {
                             [alertDialog dismissViewControllerAnimated:YES completion:nil];
                             
                         }];
    UIAlertAction* cancel = [UIAlertAction
                             actionWithTitle:@"Batal"
                             style:UIAlertActionStyleDefault
                             handler:^(UIAlertAction * action)
                             {
                                 [alertDialog dismissViewControllerAnimated:YES completion:nil];
                                 
                             }];
    
    [alertDialog addAction:ok];
    [alertDialog addAction:cancel];
    
    [self presentViewController:alertDialog animated:YES completion:nil];
}

- (IBAction)btnAlert3:(id)sender {
    UIAlertController* alertDialog = [UIAlertController
                                 alertControllerWithTitle:@"Ini Judul Ya?"
                                 message:@"Pilih salah satu member JKT48 untuk jadi pacar kamu"
                                 preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction* pil1 = [UIAlertAction
                         actionWithTitle:@"Melody JK48"
                         style:UIAlertActionStyleDefault
                         handler:^(UIAlertAction * action)
                         {
                             [alertDialog dismissViewControllerAnimated:YES completion:nil];
                             
                         }];
    UIAlertAction* pil2 = [UIAlertAction
                             actionWithTitle:@"Nabilah JKT48"
                             style:UIAlertActionStyleDefault
                             handler:^(UIAlertAction * action)
                             {
                                 [alertDialog dismissViewControllerAnimated:YES completion:nil];
                                 
                             }];
    
    UIAlertAction* pil3 = [UIAlertAction
                           actionWithTitle:@"Veranda JKT48"
                           style:UIAlertActionStyleDefault
                           handler:^(UIAlertAction * action)
                           {
                               [alertDialog dismissViewControllerAnimated:YES completion:nil];
                               
                           }];

    
    [alertDialog addAction:pil1];
    [alertDialog addAction:pil2];
    [alertDialog addAction:pil3];
    
    [self presentViewController:alertDialog animated:YES completion:nil];
}

- (IBAction)btnAlert4:(id)sender {
    UIAlertController* alertDialog = [UIAlertController
                                  alertControllerWithTitle:@"Ini Judul Ya?"
                                  message:@"Masukkan username dan password :"
                                  preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                               handler:^(UIAlertAction * action) {
                                                   //Do Some action here
                                                   
                                               }];
    UIAlertAction* cancel = [UIAlertAction actionWithTitle:@"Batal" style:UIAlertActionStyleDefault
                                                   handler:^(UIAlertAction * action) {
                                                       [alertDialog dismissViewControllerAnimated:YES completion:nil];
                                                   }];
    
    [alertDialog addAction:ok];
    [alertDialog addAction:cancel];
    
    [alertDialog addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"Username";
    }];
    [alertDialog addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"Password";
        textField.secureTextEntry = YES;
    }];
    
    [self presentViewController:alertDialog animated:YES completion:nil];
}

@end
