//
//  ViewController.swift
//  CollectionViewAssignment2
//
//  Created by Codekul on 03/02/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate{
    
    
    var itemsImage :[String] = ["images1.jpeg","images2.jpeg","images3.jpeg","images4.jpeg","images5.jpeg","images6.jpeg"]
    var selectedIndex = 0
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    //UICollectionView DataSource
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemsImage.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)as! myCollectionViewCell
        
        cell.imageView.image = UIImage(contentsOfFile: "cell" as String)
        cell.imageView.image = UIImage(named: itemsImage[indexPath.item])
        
        return cell
    }
    //UICollectionView Delegate
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        selectedIndex = indexPath.row
        
        self.performSegue(withIdentifier: "collectionViewTosecondViewController", sender: nil)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "collectionViewTosecondViewController" {
            
            let vc = segue.destination as! secondViewController
            
            vc.selectedImage = itemsImage[selectedIndex]
        }
    }
}

