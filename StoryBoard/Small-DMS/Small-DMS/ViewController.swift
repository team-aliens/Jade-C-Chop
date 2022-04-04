//
//  ViewController.swift
//  Small-DMS
//
//  Created by 김대희 on 2022/04/04.
//

import UIKit

class ViewController: UIViewController {
    
    var currentDate = ""    // 오늘 날짜 변수
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getNowDate()
        getUsers()
        // Do any additional setup after loading the view.
    }
    
    func getNowDate() {
        let dateFormatter = DateFormatter()
        let date = Date()
        dateFormatter.dateFormat = "YYYY-MM-dd" // set
        currentDate = dateFormatter.string(from: date)
    }
    
    private func getUsers() {
        let url = "https://api.dsm-dms.com/meal/" + currentDate
        let session = URLSession.shared
        guard let requestURL = URL(string: url) else {return}
        session.dataTask(with: requestURL) { data, response, error in
            if let data = data, let response = response as? HTTPURLResponse, response.statusCode == 200 {
                do {
                    let jsonSerialization = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: [String: [String]]]
                    let dateData = jsonSerialization[self.currentDate]
                    let breakfastData = dateData?["breakfast"]
                    let lunchData = dateData?["lunch"]
                    let dinnerData = dateData?["dinner"]
                    print("breakfast : \(String(describing: breakfastData))\n",
                          "lunch : \(String(describing: lunchData))\n",
                          "dinner : \(String(describing: dinnerData))\n")
                    DispatchQueue.main.async {
                        // 여기에서 Data를 활용
                    }
                }
            }
        }.resume()
    }
    
}
