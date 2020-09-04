import Foundation

func solution(_ number:String, _ k:Int) -> String {
    var answer = number
    let answerCount = number.count-k
    
//    while answer.count > answerCount {
        let kIndex = answer.index(answer.startIndex, offsetBy: answerCount-1)
        
        let maxNum = answer[answer.startIndex...kIndex].max()!
        let maxIndex = answer.firstIndex(of: maxNum)!
        
    answer[..<maxIndex].sorted(by: <)
    answer
//    }
    return answer
}

solution("4177252841", 4)
