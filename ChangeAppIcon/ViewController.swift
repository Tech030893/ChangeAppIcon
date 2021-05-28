import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var carBtn: UIButton!
    @IBOutlet weak var bikeBtn: UIButton!
    @IBOutlet weak var truckBtn: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        carBtn.layer.cornerRadius = 12
        bikeBtn.layer.cornerRadius = 12
        truckBtn.layer.cornerRadius = 12
    }
    
    @IBAction func carPress(_ sender: UIButton)
    {
        changeIcon(to: "Car")
    }
    
    @IBAction func bikePress(_ sender: UIButton)
    {
        changeIcon(to: "Bike")
    }
    
    @IBAction func truckPress(_ sender: UIButton)
    {
        changeIcon(to: "Truck")
    }
    
    func changeIcon(to iconName: String)
    {
        guard UIApplication.shared.supportsAlternateIcons else{
            return
        }
        UIApplication.shared.setAlternateIconName(iconName) { (error) in
            if let error = error
            {
                print("App icon failed to change due to \(error.localizedDescription)")
            }else{
                print("App icon changed successfully")
            }
        }
    }
}
