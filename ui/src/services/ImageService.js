/**
 * Passerelle vers l'API depuis le frontend
 * @returns 
 */

import axios from 'axios';

export async function getArticleImagesByArticleId(articleId) {
    const response = await fetch(`/api/article/${articleId}/images`);
    return await response.json();
}