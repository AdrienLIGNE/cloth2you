const { authJwt } = require("../middleware");
const articleController = require("../controller/article.controller");

module.exports = (app) => {
  app.use(function(req, res, next) {
    res.header(
      "Access-Control-Allow-Headers",
      "x-access-token, Origin, Content-Type, Accept"
    );
    next();
  });

  app.get("/api/article/:id", (req, res) => {
    articleController.getArticle(req.params.id).then(data => res.json(data));
  });
};