//
//  AnimaisTableViewController.swift
//  ExemploTableView
//
//  Created by Tiago - Eldorado on 12/9/16.
//  Copyright © 2016 Tiago - Eldorado. All rights reserved.
//

import UIKit

class GroupsTableViewController: UITableViewController {

    // 1) Inicializando o nosso array de animais
    //      - A classe Animal está definida no arquivo Animal.swift
    var groups = [Groups]()
    
    // O método viewDidLoad() é chamado após a view ser alocada em memória
    // Lugar ideal apra fazer inicializações
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 2) Buscamos os dados para serem exibidos na nossa lista
        groups = GroupsDAO.getList()
    }

    // MARK: - Table view data source
    
    // 4) Função que define o numero de SEÇÕES que nossa tableview tem
    override func numberOfSections(in tableView: UITableView) -> Int {
        // Para esse exemplo só teremos 1 seção
        return 1
    }

    // 5) Função que diz quantas LINHAS nossa table view tem em cada SEÇÃO
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Precisamos do mesmo número de linhas que o número de
        // objetos no nosso array de animais
        return groups.count
    }

    // 6) Função para popular as células da tabela com conteúdo
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Primeiro pegamos a célula que queremos configurar
        // - Atenção no IDENTIFIER ("animalIdentifier"),
        //    tem que associar ele na TableViewCell no storyboard (atributo Identifier)
        let cell = tableView.dequeueReusableCell(withIdentifier: "groupIdentifier", for: indexPath)

        // Convertemos a célula em uma AnimalTableViewCell para termos acesso aos Outlet's
        if let groupsCell = cell as? GroupsTableViewCell {
            // Identificamos qual animal iremos usar pelo indexPath.row
            let group = groups[indexPath.row]
            
            // Configuramos os outlets da animalCell
            groupsCell.nomeLabel.text = group.nome
            groupsCell.informacoesLabel.text = group.informacoes
            
            groupsCell.fotoDoGrupo.image = UIImage(named: group.nomeDaFoto)

            // Temos que retornar a animalCell ao fim da configuração
            return groupsCell
        }

        return cell
    }

}
