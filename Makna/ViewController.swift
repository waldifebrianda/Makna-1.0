//
//  ViewController.swift
//  Makna
//
//  Created by Waldi Febrianda on 10/11/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var materiView: UITableView!
    
    let materi = ["materi1", "materi2", "materi3", "materi4", "materi5"]
    let judul = ["Tauhid", "Tujuan Hidup", "Syirik", "Iman Kepada Allah", "Iman Kepada Malaikat"]
    let materi1 = ["Materi 1", "Materi 2", "Materi 3", "Materi 4", "Materi 5"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        materiView.delegate = self
        materiView.dataSource = self
       // materiView.allowsSelection = false
        materiView.separatorStyle = .none
        
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = materiView.dequeueReusableCell(withIdentifier: "customCell") as! CustomTableViewCell
        let materi = materi[indexPath.row]
        cell.imageLabel.image = UIImage(named: materi)
        cell.judulLabel.text = self.judul[indexPath.row]
        cell.materilabel1.text = self.materi1[indexPath.row]
    
        //cell.judulLabel.text = UITextView(
        //cell.materiLabel.text = materi
        
        return cell
    }
    
    
}
