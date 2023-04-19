import UIKit

class Cat {
    //properties
    var name :String = "名字"
    var furColor :String = "毛色"
    var furLength :String = "毛長"
    var size :String = "體型"
    var gender :String = "性別"
    var satiety :Int = 4
    var energy :Int = 4
    var cleanness :Int = 4
    var health :Int = 4
    var mood :Int = 4
    
    //methods
    func feed(food: String) {
        if satiety < 4 {
            satiety += 1
        } else if cleanness > 0 {
            cleanness -= 1
        }
        checkDate()
        print("\(timeDescription[time])\(name)在吃\(food)。")
    }
    func sleep() {
        if energy < 4 {
            energy += 1
        } else if mood > 0 {
            mood -= 1
        }
        checkDate()
        print("\(timeDescription[time])\(name)在睡覺。")
    }
    func brush() {
        if cleanness < 4 {
            cleanness += 1
        } else if health > 0 {
            health -= 1
        }
        checkDate()
        print("\(timeDescription[time])\(name)在梳毛。")
    }
    func play(toy: String) {
        if health < 4 {
            health += 1
        } else if satiety > 0 {
            satiety -= 1
        }
        checkDate()
        print("\(timeDescription[time])\(name)在玩\(toy)。")
    }
    func love() {
        if mood < 4 {
            mood += 1
        } else if energy > 0 {
            energy -= 1
        }
        checkDate()
        print("\(timeDescription[time])\(name)在撒嬌。")
    }
    
    // numeral properties description
    var satietyDescription :[String] = ["很餓","有點餓","有吃飽","很飽","太飽了"]
    var energyDescription :[String] = ["很差","不好","一般","不錯","很好"]
    var cleannessDescription :[String] = ["很髒","髒髒的","一般","乾淨","很乾淨"]
    var healthDescription :[String] = ["不佳","微恙","不錯","健康","非常健康"]
    var moodDescription :[String] = ["很差", "不好", "一般", "不錯", "很好"]
    
    // date & time
    var date = 1
    var time = -1
    var timeDescription :[String] = ["早上","中午","下午","晚上"]
    func checkDate() {
        time += 1
        if time > 3 {
            date += 1
            time = time % 4
            print ("\n第\(date)天")
        }
    }
    
}


// object 1 with customized properties
let miaoMiao = Cat()
miaoMiao.name = "苗苗"
miaoMiao.furColor = "橘色"
miaoMiao.furLength = "短毛"
miaoMiao.size = "適中"
miaoMiao.gender = "母"
miaoMiao.satiety = 3
miaoMiao.energy = 2
miaoMiao.cleanness = 4
miaoMiao.health = 4
miaoMiao.mood = 3

func checkMiaoStatus() {
    print("\(miaoMiao.name)是一隻\(miaoMiao.furColor)\(miaoMiao.furLength)、體型\(miaoMiao.size)的小\(miaoMiao.gender)貓。\(miaoMiao.name)的肚子\(miaoMiao.satietyDescription[miaoMiao.satiety])，精神\(miaoMiao.energyDescription[miaoMiao.energy])，身上\(miaoMiao.cleannessDescription[miaoMiao.cleanness])，身體\(miaoMiao.healthDescription[miaoMiao.health])，心情\(miaoMiao.moodDescription[miaoMiao.mood])。")
}


// object 2 with customized properties
let maoMao = Cat()
maoMao.name = "茂茂"
maoMao.furColor = "虎斑"
maoMao.furLength = "長毛"
maoMao.size = "苗條"
maoMao.gender = "公"
maoMao.satiety = 2
maoMao.energy = 2
maoMao.cleanness = 4
maoMao.health = 1
maoMao.mood = 0

func checkMaoStatus() {
    print("\(maoMao.name)是一隻\(maoMao.furColor)\(maoMao.furLength)、體型\(maoMao.size)的小\(maoMao.gender)貓。\(maoMao.name)的肚子\(maoMao.satietyDescription[maoMao.satiety])，精神\(maoMao.energyDescription[maoMao.energy])，身上\(maoMao.cleannessDescription[maoMao.cleanness])，身體\(maoMao.healthDescription[maoMao.health])，心情\(maoMao.moodDescription[maoMao.mood])。")
}


//using methods

checkMiaoStatus()
print ("\n第\(miaoMiao.date)天")
miaoMiao.play(toy: "逗貓棒")
miaoMiao.sleep()
miaoMiao.feed(food: "肉泥")
miaoMiao.brush()

miaoMiao.love()
miaoMiao.play(toy: "貓爬架")
miaoMiao.brush()
miaoMiao.sleep()

miaoMiao.love()
miaoMiao.feed(food: "湯罐")
miaoMiao.play(toy: "玩具老鼠")
miaoMiao.brush()

checkMiaoStatus()

checkMaoStatus()
print ("\n第\(maoMao.date)天")
maoMao.love()
maoMao.feed(food: "雞胸肉")
maoMao.brush()
maoMao.play(toy:"毛線球")

maoMao.play(toy: "貓隧道")
maoMao.love()
maoMao.sleep()
maoMao.feed(food: "凍乾")

maoMao.brush()
maoMao.love()
maoMao.sleep()
maoMao.love()

checkMaoStatus()






