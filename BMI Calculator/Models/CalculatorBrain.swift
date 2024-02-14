import UIKit

struct CalulatorBrain{
    var bmi: BMI?
    
    mutating func calculateBMI (height: Float, weight: Float){
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: .cyan)
        }else if bmiValue > 18.5 && bmiValue < 24.5 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: .green)
        } else if bmiValue > 24.9 {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: .red)
        }
    }
    
    func getBMI () -> BMI {
        return bmi ?? BMI(value: 0.0, advice: "Nothing", color: .cyan)
    }
    
    func getBMIValue ()->String{
        let bmiToDeci = String(format: "%0.1f", bmi?.value ?? 0.0)
            return bmiToDeci
    }
    
    
    
}
