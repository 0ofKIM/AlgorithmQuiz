/**
1) 프로그래머스
2) Level2 문제 : 기능개발
*/
import Foundation

func day(_ progresses: Int, _ speeds: Int) -> Int {
    var progress = progresses
    var day = 0

    while(progress < 100) {
        progress += speeds
        day += 1
    }

    return day
}

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var dayStack: [Int] = []

    for i in 0...progresses.count-1 {
        dayStack.append(day(progresses[i], speeds[i]))
    }

    return distributionDay(dayStack)
}

func distributionDay(_ dayStack: [Int]) -> [Int]{
    var maxDay = dayStack[0]
    var dayCount = 0
    var result: [Int] = []
    //[7 3 9 4 1]
    for i in 0...dayStack.count-1 {
        if maxDay >= dayStack[i] {
            dayCount += 1
        } else {
            result.append(dayCount)
            dayCount = 1
            maxDay = dayStack[i]
        }

        //마지막 일때에만
        let isLast = i == dayStack.count-1
        if isLast {
            result.append(dayCount)
        }
    }

    return result
}
