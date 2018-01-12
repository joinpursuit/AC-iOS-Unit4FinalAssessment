//
//  SettingsViewController.swift
//  Unit4FinalAssessment-StudentVersion
//
//  Created by C4Q  on 1/11/18.
//  Copyright © 2018 C4Q . All rights reserved.
//

import UIKit

// Looks like we're not using a view for this assessment.


enum PropertyName: String {
    
    case widthMultiplier = "Width Multiplier"
    case hightMultiplier = "Height Multiplier"
    case horizontalPosition = "Horizontal Position Offset"
    case verticalPosition = "Vertical Position Offset"
    case xAxisRotation = "X Axis Rotation Multiplier"
    
    
}

struct AnimationProperty {
    let name: PropertyName //Name
    let stepperMin: Double //Lowest number stepper can be
    let stepperMax: Double //Highest number stepper can be
    let stepperIncrement: Double //number that stepper increments by
    let startingStepperVal: Double //starting value of stepper
}

class SettingsViewController: UIViewController {

    //TO DO: Add more properties
    
    // TODO: The var properties is the name of the DEFAULT values for the animations. Therefore, saving a new set of animation values and giving it a name is the goal for this assessment.
    
    var properties: [[AnimationProperty]] =
    [
        [AnimationProperty(name: .widthMultiplier, stepperMin: 0, stepperMax: 1.0, stepperIncrement: 0.1, startingStepperVal: 0.0)]
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        navigationItem.title = "Settings"
        layoutTableView()
    }
    
    func layoutTableView() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
    }
    
    lazy var tableView: UITableView = {
        let tv = UITableView()
        tv.dataSource = self
        tv.delegate = self
        //TO DO: Register your subclass
        return tv
    }()
}

extension SettingsViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return properties.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //TO DO: Implement your Custom Cell that has a stepper
        let property = properties[indexPath.section][indexPath.row]
        let cell = UITableViewCell()
        cell.textLabel?.text = property.name.rawValue
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return properties[section].count
    }
}

extension SettingsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Size Settings"
        //TO DO: Handle other sections
        default:
            return "Other Settings"
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}











