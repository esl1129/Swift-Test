//
//  ViewController.swift
//  ScrollView_Test
//
//  Created by mcnc on 2022/03/28.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScroll()
        // Do any additional setup after loading the view.
    }
//    override func viewDidLayoutSubviews() {
//        self.scrollView.contentSize = contentView.frame.size
//    }
    func setupSubviews() {
        //        // Container
        //        contentView.translatesAutoresizingMaskIntoConstraints = false
        //        contentView.backgroundColor = .green
        //        // scrollView.addSubview(contentView)
        //
        //        contentView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor).isActive = true
        //        contentView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor).isActive = true
        //        contentView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor).isActive = true
        //        contentView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor).isActive = true
        //        contentView.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor).isActive = true
        //
        // imgViews
        
        
    }
    
    func setupScroll() {
//        for i in 0..<3{
//            let imgView = UIImageView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
//            scrollView.addSubview(imgView)
//            imgView.translatesAutoresizingMaskIntoConstraints = false
//            imgView.contentMode = .scaleAspectFit
//            imgView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
//            imgView.widthAnchor.constraint(equalTo: scrollView.heightAnchor).isActive = true
//
//            imgView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
//            if i == 0 {
//                imgView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
//            } else {
//                imgView.topAnchor.constraint(equalTo: scrollView.subviews[scrollView.subviews.count-1].bottomAnchor).isActive = true
//            }
//            if i % 2 == 0 {
//                imgView.backgroundColor = .blue
//            } else {
//                imgView.backgroundColor = .yellow
//            }
//        }
        
        // Scroll


        
        // contentView.translatesAutoresizingMaskIntoConstraints = false

        
         let size = UIApplication.shared.windows[0].safeAreaLayoutGuide.layoutFrame.size

        
        let contentView = UIView(frame: CGRect(x: 0, y: 0, width: size.width, height: size.height*3))
        scrollView.addSubview(contentView)

//        contentView.translatesAutoresizingMaskIntoConstraints = false
//        contentView.widthAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.widthAnchor).isActive = true
//        contentView.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, multiplier: 3).isActive = true

        contentView.backgroundColor = UIColor.green
//        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
//        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
//        contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
//        contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        

        for i in 0..<3 {
            let imageView = UIImageView()
            contentView.addSubview(imageView)
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.alpha = 0.6

            imageView.widthAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.widthAnchor).isActive = true
            imageView.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, constant: -30).isActive = true

            if i == 0 {
                imageView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
            } else {
                imageView.topAnchor.constraint(equalTo: contentView.subviews[i-1].bottomAnchor, constant: 10).isActive = true

            }
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true

            imageView.backgroundColor = .black
        }
        
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.delegate = self
        scrollView.contentInsetAdjustmentBehavior = .always
        scrollView.isScrollEnabled = true
        scrollView.isPagingEnabled = true
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 5.0
        
        scrollView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        
        scrollView.contentSize = contentView.frame.size
    }
    
}


