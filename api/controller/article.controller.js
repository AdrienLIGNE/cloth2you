const logger = require("../logger/api.logger");
const articleRepository = require("../repository/article.repository");

class TodoController {
  getArticle = (req,res) => {
    logger.info("ArticleController: getArticle");
    articleRepository.getArticle(req.params.id).then((article) => {
      if(!article){
        return res.status(404).send({message: "Article non trouvé"});
      }
      return res.status(200).send(article);
    }
    )
  };

  getNbLikeArticle = (req,res) => {
    logger.info("ArticleController: getNbLikeArticle");
    articleRepository.getNbLikeArticle(req.params.id).then((nbLike) => {
      if(!nbLike){
        return res.status(404).send({message: "Article non trouvé"});
      }
      return res.send({nb: nbLike});
    }
    )
  };




}
module.exports = new TodoController();