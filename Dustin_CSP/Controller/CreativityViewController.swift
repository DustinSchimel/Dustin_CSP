//
//  CreativityView.swift
//  Dustin_CSP
//
//  Created by Schimel, Dustin on 10/26/17.
//  Copyright © 2017 Schimel, Dustin. All rights reserved.
//

import UIKit
// MARK: - Class type should inherit from UICollectionViewController

public class CreativityViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout
{
    private let reuseIdentifier = "artIdentifier"
    private let sectionInsets = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0)
    private let itemsPerRow : CFloat = 3
    
    private lazy var artSelection : [UIImage?] =
    {
        return [
            UIImage(named: "cuteKoala"),
            UIImage(named: "cuteKoala"),
            UIImage(named: "cuteKoala"),
            UIImage(named: "ByteCodeExample"),
            UIImage(named: "CleanWater"),
            UIImage(named: "cuteKoala"),
            UIImage(named: "swiftThings"),
            UIImage(named: "cuteKoala"),
            UIImage(named: "cuteKoala"),
            UIImage(named: "cuteKoala"),
            UIImage(named: "cuteKoala")
        ]
    }()
    
    var largePhotoIndexPath: IndexPath?
    
    
    
    
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
    }
}

