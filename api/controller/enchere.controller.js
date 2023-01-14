const logger = require('../logger/api.logger');
const enchereRepository = require('../repository/enchere.repository');
const jwt = require('jsonwebtoken');

class TodoController{
    getDerniereOffre = (req,res) => {
      logger.info('Controller: getDerniereOffre')
      enchereRepository.getDerniereOffre(req.params.articleId)
      .then((enchere) => {
        if(!enchere){
          return res.status(404).send({message: "Pas d'offre sur cet article"});
        }
        return res.status(200).send(enchere);
      })
      .catch((err) => {
        return res.status(500).send({message: err});
      }
      )
    }

    addEnchere = (req,res) => {
      logger.info('Controller: addEnchere')
      console.log("controller: addEnchere");
      token = req.headers.authorization.split(' ')[1];
      decoded = jwt.decode(token);
      enchereRepository.addEnchere(req.body.articleId, decoded.id , req.body.montant)
      .then((enchere) => {
        if(!enchere){
          return res.status(404).send({message: "Erreur lors de l'ajout de l'offre"});
        }
        return res.status(200).send(enchere);
      })
      .catch((err) => {
        return res.status(500).send({message: err});
      }
      )
    }
}

module.exports = new TodoController();