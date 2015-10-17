//
//  NewSegue.swift
//  Practice04-Segue
//
//  Created by Mac on 2015. 10. 17..
//  Copyright © 2015년 Mac. All rights reserved.
//

/*
	커스텀 세그웨이를 만드는 방법
*/

import UIKit

class NewSegue : UIStoryboardSegue {
	
	override func perform() {
		let src = self.sourceViewController as UIViewController
		let dest = self.destinationViewController as UIViewController
		
		// 뷰컨트롤러는 그대로 두고 뷰만 바꾸는 방법
		// 뷰만 바꾸는 방식이므로 네비게이션바로 이동은 안됨.
		// 이동하려면 뷰를 교체하는 방식으로 해야 함. 방법은? (아직모름)
		UIView.transitionFromView(
			src.view, toView:
			dest.view, duration: 3.0,
			options: UIViewAnimationOptions.TransitionFlipFromBottom,
			completion: nil)
		
	}
	
	
	
}
