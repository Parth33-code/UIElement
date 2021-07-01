//
//  ViewController.swift
//  UIElements
//
//  Created by DCS on 19/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let View : UITextView = {
        let view = UITextView()
        view.text = "UIELEMENT"
        view.textAlignment = .center
        view.textColor = .black
        return view
    }()
    
    private let Textbox : UITextField = {
        let textbox = UITextField()
        textbox.placeholder = "Enter Employee Id"
        textbox.backgroundColor = .green
        textbox.layer.cornerRadius = 18
        textbox.textAlignment = .center
        textbox.attributedPlaceholder = NSAttributedString(string: "Enter Number", attributes: [NSAttributedString.Key.foregroundColor : UIColor.red])
        return textbox
    }()
    
    private let Label : UILabel = {
        let label = UILabel()
        label.text = "Enter Your DOB"
        return label
    }()
    
    private let Datepicker : UIDatePicker = {
        let datepicker = UIDatePicker()
        datepicker.datePickerMode = .date
        datepicker.minimumDate = Calendar.current.date(byAdding: .year,value: -1, to: Date())
        datepicker.maximumDate = Calendar.current.date(byAdding: .year, value: 1, to: Date())
        return datepicker
    }()
    
    private let Label1 : UILabel = {
        let label1 = UILabel()
        label1.text = "Your Age is 20?"
        label1.textColor = .blue
        return label1
    }()
    
    private let Switch : UISwitch = {
        let switchcontroller = UISwitch()
        switchcontroller.isOn = false
        switchcontroller.tintColor = .brown
        switchcontroller.onTintColor = .red
        return switchcontroller
    }()
    
    private let SegLable:UILabel = {
        let label = UILabel()
        label.text = "post"
        label.textColor = .blue
        return label
    }()
    
    private let SegmentControl:UISegmentedControl = {
        let sg = UISegmentedControl()
        sg.insertSegment(withTitle: "Marketing", at: 0, animated: true)
        sg.insertSegment(withTitle: "Sales", at: 1, animated: true)
        sg.backgroundColor = .gray
        sg.tintColor = .blue
        return sg
    }()
    
    private let ButtonControl:UIButton = {
        let btn = UIButton()
        btn.setTitle("Next", for: .normal)
        btn.addTarget(self, action: #selector(nextPage), for: .touchUpInside)
        btn.tintColor = .green
        btn.layer.cornerRadius = 15
        btn.backgroundColor = .red
        return btn
    }()
    
    private let PageControl:UIPageControl = {
        let pg = UIPageControl()
        pg.currentPageIndicatorTintColor = .white
        pg.backgroundColor = .red
        pg.numberOfPages = 2
        pg.currentPage = 0
        return pg
    }()
    @objc func nextPage(){
        print("Button Clicked")
        
        let vc = Part2()
        navigationController?.pushViewController(vc, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(View)
        view.addSubview(Textbox)
        view.addSubview(Label)
        view.addSubview(Datepicker)
        view.addSubview(Label1)
        view.addSubview(Switch)	
        view.addSubview(SegLable)
        view.addSubview(SegmentControl)
        view.addSubview(ButtonControl)
        view.addSubview(PageControl)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        Textbox.frame = CGRect(x:10, y:70, width:-20, height: 40)
        Label.frame = CGRect(x:20, y:Textbox.bottom + 20, width:-40, height:20)
        Datepicker.frame = CGRect(x: 20, y:Label.bottom + 20, width:-40, height:60)
        Label1.frame = CGRect(x: 20, y: Datepicker.bottom+20, width: -40, height: 40)
        Switch.frame = CGRect(x: 250, y: Label.width+20, width: -40, height: 80)
        SegLable.frame = CGRect(x:20,y:Switch.bottom+22,width: view.width-40,height: 40)
        SegmentControl.frame = CGRect(x:20,y:SegLable.bottom+20,width: view.width-40,height: 40)
        ButtonControl.frame = CGRect(x:20,y:SegmentControl.bottom+20,width: view.width-40,height: 50)
        PageControl.frame = CGRect(x:20,y:ButtonControl.bottom+120,width: view.width-40,height: 20)
    }
    
}


