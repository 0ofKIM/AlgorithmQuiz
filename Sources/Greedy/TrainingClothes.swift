import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var mutableLost = lost
    var mutableReserve = reserve

    for i in 1...n { //여벌 있는 사람이 도난 당한 경우
        if mutableLost.contains(i) && mutableReserve.contains(i) {
            mutableLost = removeElement(mutableLost, i)
            mutableReserve = removeElement(mutableReserve, i)
        }
    }

    for i in mutableReserve {
        if mutableLost.contains(i-1) && mutableLost.contains(i+1) {
            mutableLost = removeElement(mutableLost, i-1)
            mutableReserve = removeElement(mutableReserve, i)
        } else if mutableLost.contains(i-1) {
            mutableLost = removeElement(mutableLost, i-1)
            mutableReserve = removeElement(mutableReserve, i)
        } else if mutableLost.contains(i+1) {
            mutableLost = removeElement(mutableLost, i+1)
            mutableReserve = removeElement(mutableReserve, i)
        }
    }

    return n-mutableLost.count
}

func removeElement(_ array: [Int], _ element: Int) -> [Int]{
    var returnArray = array
    if let index = returnArray.firstIndex(of: element) {
        returnArray.remove(at: index)
    }
    return returnArray
}
