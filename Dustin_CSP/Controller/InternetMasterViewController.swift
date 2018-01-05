//
//  InternetView.swift
//  Dustin_CSP
//
//  Created by Schimel, Dustin on 10/26/17.
//  Copyright © 2017 Schimel, Dustin. All rights reserved.
//

import UIKit

public class InternetMasterViewController: UITableViewController {

    private (set) lazy var internetTopics : [String] =
    {
        return [
            "Definitions",
            "CSP",
            "CTEC",
            "Canyons",
            "Twitter",
            "Swift Guide"
        ]
    }()
    
    private lazy var addresses : [String] = []
    
    private var detailViewController : InternetDetailViewController?
    
    private func setup() -> Void
    {
        //TODO: Replace with your correct links
        addresses = [
            "https://www.google.com",
            "https://apstudent.collegeboard.org/apcourse/ap-computer-science-principles#/",
            "https://ctec.canyonsdistrict.org/",
            "https://www.canyonsdistrict.org/hj",
            "https://twitter.com/",
            "https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html#//apple_ref/doc/uid/TP40014097-CH5-ID309"
        ]
        
        if let splitView = splitViewController
        {
            let currentControllers = splitView.viewControllers
            detailViewController = currentControllers[0] as?
                InternetDetailViewController
        }
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        setup()
        //Uncomment the following line to preserve selection between presentations
        self.clearsSelectionOnViewWillAppear = false
        
    }
    
    // MARK: - Table view data Source
    
    override public func numberOfSections(in tableView: UITableView) -> Int
    {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return internetTopics.count
    }
    
    override public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let currentText = internetTopics[indexPath.row]
        cell.textLabel!.text = currentText
        
        return cell
    }
    
    //MARK: Handle the internal transfer
    override public func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier! == "showDetail"
        {
            if let indexPath = self.tableView.indexPathForSelectedRow
            {
                let urlString = addresses[indexPath.row]
                let pageText : String
                
                if indexPath.row == 0
                {
                    //TODO: Replace with your definitions - great time to use the """ operator
                    pageText = """
                    URL: Uniform Resource Locator, the address of a specific file or webpage located online.
                    
                    TCP: Transmission Control Protocol, enables two hosts to make a connection and pass data.
                    
                    IP: Internet Protocol, method that which data is sent computer to another over the internet.
                    
                    DNS: Domain Name System, system for converting alphabetic names into numeric digits for an IP address.
                    """
                }
                else
                {
                    pageText = internetTopics[indexPath.row]
                }
                
                let controller = segue.destination as!
                    InternetDetailViewController
                
                controller.detailAddress = urlString
                controller.detailText = pageText
                controller.navigationItem.leftBarButtonItem =
                    splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton =
                    true
                
            }
        }
    }
}
