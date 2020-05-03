//
//  DataViewController.swift
//  NutriFacts
//
//  Created by Denis Tatar on 2020-05-03.
//  Copyright © 2020 Denis Tatar. All rights reserved.
//

import UIKit
import SwiftUICharts
import SwiftUI

struct DataViewController: View {

//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        let dataView = DataViewController()
//
//        // Use a UIHostingController as window root view controller.
//        if let windowScene = scene as? UIWindowScene {
//            let window = UIWindow(windowScene: windowScene)
//            window.rootViewController = UIHostingController(rootView: dataView)
//            self.window = window
//            window.makeKeyAndVisible()
//        }

        // Do any additional setup after loading the view.
//    }
//
//    struct PieCharts: View {
//        var body: some View {
//            VStack{
//                PieChartView(data: [8,23,54,32,12,37,7,23,43], title: "Title")
//            }
//        }
//    }
    @State var tabIndex:Int = 0
    var body: some View {
        TabView(selection: $tabIndex) {
            PieCharts1()
            PieCharts2()
            PieCharts3()
            PieCharts4()
        }
    }
    
//    DataViewController()
}

struct PieCharts1:View {
    var body: some View {
        VStack{
            PieChartView(data: [8], title: "Total fat", legend: "5%")
        }
    }
}

struct PieCharts2:View {
    var body: some View {
        VStack{
            PieChartView(data: [90,99,78,111,70,60,77], title: "Cholestral", legend: "1%")
        }
    }
}

struct PieCharts3:View {
    var body: some View {
        VStack{
            PieChartView(data: [34,56,72,38,43,100,50], title: "Sodium", legend: "1%")
        }
    }
}

struct PieCharts4:View {
    var body: some View {
        VStack{
            PieChartView(data: [8,23,54,32], title: "Carbs", legend: "58%")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DataViewController()
    }
}
