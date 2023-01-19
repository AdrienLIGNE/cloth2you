const db = require('../config/db.config').connect()

class ArticleRepository {
    constructor() {
        this.db = db
    }

    async getArticle(id) {
        try {
            const article = await this.db.articles.findOne({
                where: {
                    id: id,
                },
            })
            return article
        } catch (err) {
            console.log(err)
            return {}
        }
    }

    async getNbLikeArticle(id) {
        try {
            const nbLike = await this.db.likes.count({
                where: {
                    articleId: id,
                },
            })
            console.log('nbLike:::', nbLike)
            return nbLike
        } catch (err) {
            console.log(err)
            return {}
        }
    }

    async createArticle(article) {
        try {
            //console.log('article:::', article);
            const newArticle = await this.db.articles.create(article)
            return newArticle
        } catch (err) {
            console.log(err)
            return {}
        }
    }

    async getLikedArticles(userId) {
        try {
            const likedArticles = await this.db.articles.findAll({
                include: [
                    {
                        model: this.db.likes,
                        where: { userId: userId },
                    },
                ],
            })
            return likedArticles
        } catch (error) {
            throw new Error(
                `Error fetching liked articles for user with ID ${userId}: ${error.message}`
            )
        }
    }
}

module.exports = new ArticleRepository()
