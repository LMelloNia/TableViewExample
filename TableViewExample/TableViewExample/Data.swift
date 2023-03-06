//
//  Data.swift
//  TableViewExample
//
//  Created by 김시훈 on 2023/03/06.
//

import Foundation

enum Gender: String {
    case male = "남자"
    case female = "여자"
    case orther = "나머지"
}

enum departmentAtUniversity: String {
    case physics = "물리학과"
    case mathematics = "수학과"
    case computerEngineering = "컴퓨터공학과"
}

class InfoBase{
    var sectionTitle: String
    var title: [String]
    
    func returnDetail() -> [String] {
        []
    }
    
    init(sectionTitle: String, title: [String]) {
        self.sectionTitle = sectionTitle
        self.title = title
    }
}

class PersonalInformation: InfoBase {
    var name: String
    var age: Int
    var gender: Gender
    var emailAdress: String

    override func returnDetail() -> [String] {
        return [self.name, "\(self.age)", self.gender.rawValue, self.emailAdress]
    }
    
    init(sectionTitle: String ,title: [String] = ["이름", "나이", "성별", "E-mail"], name: String, age: Int, gender: Gender, emailAdress: String) {
        self.name = name
        self.age = age
        self.gender = gender
        self.emailAdress = emailAdress
        super.init(sectionTitle: sectionTitle, title: title)
    }
}

class Education: InfoBase {
    var universityName: String
    var department: departmentAtUniversity
    
    override func returnDetail() -> [String] {
        return [self.universityName, self.department.rawValue]
    }
    
    init(sectionTitle: String, title: [String] = ["대학교", "학과"], universityName: String, department: departmentAtUniversity) {
        self.universityName = universityName
        self.department = department
        super.init(sectionTitle: sectionTitle, title: title)
    }
}

let datalist = [
    PersonalInformation(sectionTitle: "인적사항" ,name: "김시훈", age: 28, gender: .male, emailAdress: "ch10152080@gmail.com"),
    Education(sectionTitle: "학력", universityName: "학교", department: .physics)
]
