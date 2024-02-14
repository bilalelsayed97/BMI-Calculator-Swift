import UIKit

class ResultViewController: UIViewController {
    var bmi: BMI?

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = String(format: "%0.1f", bmi?.value ?? 0.0)
        adviceLabel.text = "\(bmi?.advice ?? "Nothing")"
        self.view.backgroundColor = bmi?.color ?? .blue

    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    

}
