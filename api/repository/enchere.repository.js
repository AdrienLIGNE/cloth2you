const db = require('../config/db.config').connect();
const logger = require('../logger/api.logger');


class EnchereRepository {


    constructor() {
        this.db = db;
    }

    async getDerniereOffre(articleId) {

        try {
            const enchere = await this.db.encheres.findOne({
                where: {
                    articleId: articleId
                },
            });
            return enchere;
        } catch (err) {
            console.log(err);
            return {};
        }
    }

    async addEnchere(articleId, userId, montant) {

        try {
            const enchere = await this.db.encheres.create({
                articleId: articleId,
                userId: userId,
                montant: montant
            });
            logger.info(enchere);
            return enchere;
        } catch (err) {
            console.log(err);
            return {};
        }
    }
}

module.exports = new EnchereRepository();