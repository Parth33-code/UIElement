//
//  Part2.swift
//  UIElements
//
//  Created by DCS on 25/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class Part2: UIViewController {
    
    private let HourLabel:UILabel = {
        let lbl = UILabel()
        lbl.text = "How many hours you can provide in company?"
        lbl.textAlignment = .center
        lbl.textColor = .black
        return lbl
    }()
    
    private let Step:UIStepper = {
        let stepper = UIStepper()
        stepper.minimumValue = 1
        stepper.maximumValue = 10
        stepper.addTarget(self, action: #selector(stepperHandle), for: .valueChanged)
        return stepper
    }()
    
    @objc func stepperHandle(){
        let val = Step.value
        StepperText.text = String(val)
    }
    
    private let StepperText : UITextView = {
        let txt = UITextView()
        txt.isEditable = false
        txt.font = UIFont.systemFont(ofSize: 18.0)
        txt.textColor = .black
        txt.textAlignment = .center
        txt.backgroundColor = .yellow
        txt.layer.cornerRadius = 10
        return txt
    }()
    
    private let ProgressBar : UIProgressView = {
        let pbar = UIProgressView()
        pbar.setProgress(0.0, animated: true)
        pbar.trackTintColor = .green
        pbar.progressTintColor = .black
        return pbar
    }()
    
    private let RateLabel:UILabel = {
        let lbl = UILabel()
        lbl.text = "Rate Us!"
        lbl.textAlignment = .center
        lbl.font = UIFont.systemFont(ofSize: 20)
        lbl.textColor = .black
        return lbl
    }()
    
    public let MySlider:UISlider = {
        let slider = UISlider()
        slider.minimumValue = 1
        slider.maximumValue = 10
        slider.addTarget(self, action: #selector(sliderVal), for: .valueChanged)
        return slider
    }()
    
    @objc func sliderVal(){
        let res = Int(MySlider.value)
        RateUsText.text = String(res)
    }
    
    private let RateUsText : UITextView = {
        let txt = UITextView()
        txt.isEditable = false
        txt.font = UIFont.systemFont(ofSize: 18.0)
        txt.textColor = .black
        txt.textAlignment = .center
        txt.backgroundColor = .gray
        txt.layer.cornerRadius = 10
        return txt
    }()
    
    private let TabBar:UITabBar = {
        let tabBar = UITabBar()
        let upload = UITabBarItem(tabBarSystemItem: .history, tag: 1)
        tabBar.items = [upload]
        return tabBar
    }()
    
    private let activity:UIActivityIndicatorView = {
        let ac = UIActivityIndicatorView()
        ac.color = .blue
        ac.startAnimating()
        ac.isHidden = false
        return ac
    }()
    
    private let ButtonControl:UIButton = {
        let btn = UIButton()
        btn.setTitle("Next", for: .normal)
        btn.addTarget(self, action: #selector(nextPage), for: .touchUpInside)
        btn.backgroundColor = .brown
        return btn
    }()
    
    private let PageControl:UIPageControl = {
        let pg = UIPageControl()
        pg.currentPageIndicatorTintColor = .white
        pg.backgroundColor = .blue
        pg.numberOfPages = 2
        pg.currentPage = 1
        return pg
    }()
    
    @objc func nextPage()
    {
        let vc = Part3()
        navigationController?.pushViewController(vc, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Part 2"
        view.backgroundColor = .white
        view.addSubview(ProgressBar)
        view.addSubview(ButtonControl)
        view.addSubview(Step)
        view.addSubview(MySlider)
        view.addSubview(activity)
        view.addSubview(TabBar)
        view.addSubview(PageControl)
        view.addSubview(HourLabel)
        view.addSubview(StepperText)
        view.addSubview(RateUsText)
        view.addSubview(RateLabel)
    }
    
    override func viewDidLayoutSubviews() {
        //        let toolBarHeight:CGFloat = view.safeAreaInsets.top + 05
        //        toolBar.frame = CGRect(x:0, y:70, width: view.width, height: toolBarHeight)
        ProgressBar.frame = CGRect(x:20,y:120, width: view.width-40,height: 50)
        HourLabel.frame = CGRect(x:20, y:ProgressBar.bottom+10, width: view.width-40, height: 40)
        Step.frame = CGRect(x:20,y:HourLabel.bottom+20, width: view.width-40,height: 50)
        StepperText.frame = CGRect(x:250, y:HourLabel.bottom+15, width: 60, height: 40)
        RateLabel.frame = CGRect(x:20, y:StepperText.bottom+20, width: view.width-40,height: 40)
        MySlider.frame = CGRect(x:20,y:RateLabel.bottom+15,width: view.width-40,height: 10)
        RateUsText.frame = CGRect(x:20, y:MySlider.bottom+20, width: view.width - 40, height: 40)
        TabBar.frame = CGRect(x:0, y:view.height-40, width: view.width,height: 38)
        activity.frame = CGRect(x:20, y:RateUsText.bottom+20,width: view.width-40,height: 20)
        ButtonControl.frame = CGRect(x:20,y:activity.bottom+20,width: view.width-40, height: 50)
        PageControl.frame = CGRect(x:20,y:ButtonControl.bottom+120,width: view.width-40,height: 20)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 10.0){
            self.ProgressBar.setProgress(1.0, animated: true)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


}
