const db = require("../config/db.config").connect();
const secret = require("../auth/secret");
const UserRepository = require("../repository/user.repository");

const jwt = require("jsonwebtoken");
const bcrypt = require("bcryptjs");

class AuthController{
//enregistrement
signup = (req, res) => {
  // Enregistrer l'utilisateur en bdd
  bcrypt.hash(req.body.password, 10).then(hash => {
    const user = {
      login: req.body.login,
      email: req.body.email,
      password: hash,
      roleId: req.body.role_id,
    }
    if (req.body.nom){
      user.nom = req.body.nom
      user.prenom = req.body.prenom
      user.siren = req.body.siren
    }
    UserRepository.createUser(user).then((user) => {
        res.status(200).json({ message: "L'utilisateur a été créé avec succès !" });
      })
      .catch(err => {
        res.status(500).send({ message: err.message });
      });
  })
};

//connexion
signin = (req,res) => {
  UserRepository.getUserWithPasswordByLogin(req.body.login).then((user) => {
      if (!user) {
          return res.status(404).json({ message: "Cet utilisateur n'existe pas"})
      }

      bcrypt.compare(req.body.password, user.password).then(isPasswordValid => {
          if (!isPasswordValid) {
              return res.status(401).json({ message: "Le mot de passe est incorrect"})
          }

          //JWT
          const token = jwt.sign(
              { id: user.id },
              secret,
              { expiresIn: '24h' }
          )

          res.status(200).send({
            id: user.id,
            login: user.login,
            email: user.email,
            role_id: user.role_id,
            accessToken: token
            })
            
          
      })
  }).catch((err) => {
      res.status(500).json({ message: err.message })
  }
  )
}
}

module.exports = new AuthController()