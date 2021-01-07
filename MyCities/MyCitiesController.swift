//
//  MyCitiesController.swift
//  Wheather App
//
//  Created by Admin on 02.01.2021.
//

import UIKit

class MyCitiesController: UITableViewController {
    var cities = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        

      
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cities.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Получаем ячейку из пула
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCitiesCell", for: indexPath) as! MyCitiesCell
        // Получаем город для конкретной строки
        let city = cities[indexPath.row]
        
        // Устанавливаем город в надпись ячейки
        cell.cityName.text = city


        return cell
    }
    @IBAction func addCity(segue: UIStoryboardSegue) {
            
            // Проверяем идентификатор перехода, чтобы убедиться, что это нужный
            if segue.identifier == "addCity" {
                // Получаем ссылку на контроллер, с которого осуществлен переход
                let allCitiesController = segue.source as! AllCitiesController
                
                // Получаем индекс выделенной ячейки
                if let indexPath = allCitiesController.tableView.indexPathForSelectedRow {
                    // Получаем город по индексу
                    let city = allCitiesController.cities[indexPath.row]
                    
                    // Проверяем, что такого города нет в списке
                    if !cities.contains(city.title) {
                        // Добавляем город в список выбранных
                        cities.append(city.title)
                        // Обновляем таблицу
                        tableView.reloadData()
                    }
                }
            }
        }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {// Если была нажата кнопка «Удалить»
        if editingStyle == .delete {
        // Удаляем город из массива
            cities.remove(at: indexPath.row)
        // И удаляем строку из таблицы
            tableView.deleteRows(at: [indexPath], with: .fade)
        }

    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
