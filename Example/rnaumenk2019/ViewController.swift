//
//  ViewController.swift
//  rnaumenk2019
//
//  Created by rnaumenk on 01/24/2019.
//  Copyright (c) 2019 rnaumenk. All rights reserved.
//

import UIKit
import rnaumenk2019

class ViewController: UIViewController {

    var articles : [Article] = []
    let articleManager = ArticleManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let article1 = articleManager.newArticle()
        article1.title = "Article1"
        article1.content = "Content of the Article1"
        article1.creationDate = NSDate()
        article1.modificationDate = NSDate()
        article1.language = "en"
        articleManager.save()
        
        let article2 = articleManager.newArticle()
        article2.title = "Article2"
        article2.content = "Content of the Article2"
        article2.creationDate = NSDate()
        article2.modificationDate = NSDate()
        article2.language = "en"
        articleManager.save()
        
//        for article in articleManager.getAllArticles() {
//            articleManager.removeArticle(article: article)
//        }
//        articleManager.save()
        
        print(articleManager.getAllArticles())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

