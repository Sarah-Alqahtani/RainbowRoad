

import UIKit

class ViewController: UIViewController, UITableViewDataSource , UITableViewDelegate {
    

    
  
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "cell")! as UITableViewCell
        let hue=CGFloat(indexPath.row)/CGFloat(6)
        let hueColor=UIColor(hue: hue, saturation: 1, brightness: 1, alpha: 1)
        cell.backgroundColor=hueColor
        cell.textLabel?.text = " "
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 120.0
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

