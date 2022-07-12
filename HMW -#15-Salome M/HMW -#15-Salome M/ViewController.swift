//
//  ViewController.swift
//  HMW -#15-Salome M
//
//  Created by Mcbook Pro on 12.07.22.
//

import UIKit

class ViewController: UIViewController, CustomCellProtocol {
   
    
    @IBOutlet weak var sortSegmentControl: UISegmentedControl!
    
    
   
    func seenToUpcoming(cell: CustomCell) {
        if  let indexPath = tableView.indexPath(for: cell){
            let movie = movies[indexPath.row]
            movie.seen = false
            tableView.reloadData()
        }
    }
    
    var movies = Movie.movies

    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()


        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: "CustomCell", bundle: nil), forCellReuseIdentifier: "CustomCell")
    }


    @IBAction func sortSegmentPresed(_ sender: Any) {
        switch sortSegmentControl.selectedSegmentIndex {
        case 0:
            movies.sort {$0.isFavourite && $1.isFavourite}
            tableView.reloadData()
            
        case 1:
            movies.sort {$0.imdb < $1.imdb}
            tableView.reloadData()
        default:
            break
        }

    
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        if section == 0 {
            return movies.count
        } else {
            return movies.count
        }

    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let curentMovies = movies[indexPath.row]
        
        
        switch indexPath.section {
        
        case 0:
            
            if curentMovies.seen == true {
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCell
                cell.upComingIMDB.text = "\(curentMovies.imdb)"
                cell.upComingTitle.text = curentMovies.title
                cell.delegate = self
                return cell
            }

        case 1:
            if curentMovies.seen == false {
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
                cell.movieTitle.text = curentMovies.title
                cell.movieImdb.text = "\(curentMovies.imdb)"
                return cell
            }
        
        default:
            break
        }
        
       return UITableViewCell()
    }
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let viewForHeader = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 40))
        if section == 0 {
            
            let label = UILabel(frame: viewForHeader.bounds)
            label.text = "Seen movies"
            label.textAlignment = .center
            viewForHeader.addSubview(label)
            
            viewForHeader.backgroundColor = .cyan
        } else {
            let label = UILabel(frame: viewForHeader.bounds)
            label.text = "Upcoming movies"
            label.textAlignment = .center
            viewForHeader.addSubview(label)
            viewForHeader.backgroundColor = .gray
            
        }
        return viewForHeader
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        90
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
        if let VC = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController {
            
            let curentMovies = movies[indexPath.row]
           
            VC.titlee = curentMovies.title
            VC.imb = curentMovies.imdb
            VC.release = curentMovies.releaseDate
            VC.mainactor = curentMovies.mainActor

            self.navigationController?.pushViewController(VC, animated: true)
        }
    
    }
}
