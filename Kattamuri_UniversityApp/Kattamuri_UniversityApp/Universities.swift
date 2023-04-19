//
//  Universities.swift
//  Kattamuri_UniversityApp
//
//  Created by Kattamuri,Vyshnavi on 4/18/23.
//

import Foundation

struct Universities{
    var domain : String?
    var list_Array : [UniversityList] = []
}

struct UniversityList{
    var collegeName : String?
    var collegeImage : String?
    var collegeInfo : String?
}


let domains = ["Computer Science","Information Science","Data Science","Marketing","Data Engineering"]

let universities = ["Arizona","SouthFlorida","UCM","Utah","GSU"]

let domain1 = Universities(domain: "Computer Science", list_Array: [UniversityList(collegeName: "Arizona State University", collegeImage: "asu", collegeInfo: "Arizona State University is a public research university in the Phoenix metropolitan area. Founded in 1885 by the 13th Arizona Territorial Legislature, ASU is one of the largest public universities by enrollment in the United States."),UniversityList(collegeName: "University of SouthFlorida", collegeImage: "usf", collegeInfo: "The University of South Florida is a public research university with its main campus located in Tampa, Florida, and other campuses in St. Petersburg and Sarasota. It is one of 12 members of the State University System of Florida."),UniversityList(collegeName: "University of Central Missouri", collegeImage: "usf", collegeInfo: "The University of Central Missouri is a public university in Warrensburg, Missouri. In 2019, enrollment was 11,229 students from 49 states and 59 countries on its 1,561-acre campus. UCM offers 150 programs of study, including 10 pre-professional programs, 27 areas of teacher certification, and 37 graduate programs."),UniversityList(collegeName: "The University of Utah", collegeImage: "utah", collegeInfo: "The University of Utah is a public research university in Salt Lake City, Utah. It is the flagship institution of the Utah System of Higher Education."),UniversityList(collegeName: "Georgia State University", collegeImage: "gsu", collegeInfo: "Georgia State University is a public research university in Atlanta, Georgia. Founded in 1913, it is one of the University System of Georgia's four research universities.")])
