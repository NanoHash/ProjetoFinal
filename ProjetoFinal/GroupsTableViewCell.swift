//
//  AnimalTableViewCell.swift
//  ExemploTableView
//
//  Created by Tiago - Eldorado on 12/9/16.
//  Copyright © 2016 Tiago - Eldorado. All rights reserved.
//

import UIKit

// 1) Modelo de uma célula da tableView (a table view cell)
// Temos que ligar essa classe lá na célula da interface,
// no Identity Inspector
// Só então conseguiremos criar os Outlet's

class GroupsTableViewCell: UITableViewCell {
    // 2) Outlet que representa a imagem que vai aparecer na célula
    
    
    @IBOutlet weak var fotoDoGrupo: UIImageView!
    
    
    // 3) Outlet para as labels na célula
   
    @IBOutlet weak var nomeLabel: UILabel!
    
    
    @IBOutlet weak var informacoesLabel: UILabel!
}
