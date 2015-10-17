//
//  DetailViewController.swift
//  Practice04-Segue
//
//  Created by Mac on 2015. 10. 17..
//  Copyright © 2015년 Mac. All rights reserved.
//

import UIKit

class DetailViewController : UIViewController {
	
	
	@IBAction func back(sender: AnyObject) {
		self.presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
	}
	
	@IBAction func back2(sender: AnyObject) {
		self.navigationController?.popViewControllerAnimated(true)
	}
	
}
