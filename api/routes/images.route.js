const imageController = require("../controller/image.controller");
const { authJwt } = require("../middleware");
const multer = require('multer');
const fs = require('fs')


const storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, 'images')
    },
  filename: function (req, file, cb) {
    const fileName = file.originalname.toLowerCase().split(' ').join('-');
    cb(null, "IMAGE-" + Date.now() + fileName);
  },
});
const upload = multer({
  storage: storage,
  limits: { fileSize: 1000000 },
})

module.exports = (app) => {
  app.use(function (req, res, next) {
    res.header(
      "Access-Control-Allow-Headers",
      "x-access-token, Origin, Content-Type, Accept"
    );
    next();
  });

  app.post(
    "/api/image",
    [
        //authJwt.verifyToken, 
        //authJwt.isVendeur,
        upload.single('image')
    ],
    imageController.uploadImage
  );


  app.get('/images/:imageName', (req, res) => {
    const imageName = req.params.imageName
    const readStream = fs.createReadStream(`images/${imageName}`)
    readStream.pipe(res)
  })

};
