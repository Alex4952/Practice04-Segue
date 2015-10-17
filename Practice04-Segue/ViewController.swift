//
//  ViewController.swift
//  Practice04-Segue
//
//  Created by Mac on 2015. 10. 17..
//  Copyright © 2015년 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

/*
	segue 연결시 show를 선택해야 네비게이션바가 생김
	
	네비게이터 :
	// 이동할 뷰컨트롤러의 스토리보드 아이디를 이용해 얻어옴
	if let uvc = self.storyboard?.instantiateViewControllerWithIdentifier("DV01") {
	self.navigationController?.pushViewController(uvc, animated: true)
	}
	
	Back
	navigationController.pop
	
	코드에 의한 이동 :
	if let uvc = self.storyboard?.instantiateViewControllerWithIdentifier("DV01") {
	uvc.modalTransitionStyle = UIModalTransitionStyle.PartialCurl
	self.presentViewController(uvc, animated: true, completion: {NSLog("화면전환완료")})
	
	Back
	presentingViewController.dismiss
	
*/
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	// 매뉴얼 세그웨이 (뷰컨트롤러 단추에서 이동할 화면으로 연결)
	// segue 연결시 show 선택
	@IBAction func move03(sender: AnyObject) {
		// 이동할 뷰컨트롤러의 인스턴스를 따로 만들 필요 없음 (자동으로 만들어짐)
		self.performSegueWithIdentifier("moveSegue", sender: self)
	}

	// segue 연결시 show 선택
	@IBAction func mv04(sender: AnyObject) {
		self.performSegueWithIdentifier("moveSegue2", sender: self)
	}
	
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		if segue.identifier == "moveSegue" {
			NSLog("moveSegue 세그웨이가 실행되었습니다.")
		}
		else if segue.identifier == "moveSegue2" {
			NSLog("moveSegue2 세그웨이가 실행되었습니다.")
		}

		NSLog("세그웨이가 실행되었습니다.")
	}
	
	@IBAction func unwindToMainVC(segue: UIStoryboardSegue) {
		// none
	}
	
	
}

