import Foundation

// MARK: - Задание 1

let a: Double = 10
let b: Double = 20
let c: Double = 4

func formula(a: Double, b: Double, c: Double) -> (Double, Double)? {
    

    let d = b * b - 4 * a * c
    if d < 0 {
        return nil
    }

    let x1 = (-b + (sqrt(d))) / (2 * a)
    let x2 = (-b - (sqrt(d))) / (2 * a)
    
    return(x1, x2)
    
}

let answers = formula(a: a, b: b, c: c)

print(answers ?? "корней нет")


// MARK: - Задание 2

let katetA: Double = 10
let katetB: Double = 12

func area(katetA: Double, katetB: Double) -> Double {
    let s = katetA * katetB / 2
    return s
}
print(area(katetA: katetA, katetB: katetB))

func hypotenuse(katetA: Double, katetB: Double) -> Double {
    let hypo = sqrt(katetA * katetA + katetB * katetB)
    return hypo
}
print(hypotenuse(katetA: katetA, katetB: katetB))

func perimeter(katetA: Double, katetB: Double) -> Double {
    let p = katetA + katetB + hypotenuse(katetA: katetA, katetB: katetB)
    return p
}
print(perimeter(katetA: katetA, katetB: katetB))

// MARK: - Задание 3

let depositAmount: Double = 100
let percent: Double = 10
func summa(depositAmount: Double, percent: Double) -> Double {
    
    var sum = depositAmount
    for _ in 1...5 {
        sum = sum + sum * (percent / 100)
    }
    return sum
}
print(summa(depositAmount: depositAmount, percent: percent))
