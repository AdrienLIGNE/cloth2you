/**
 * Passerelle vers l'API depuis le frontend
 * @returns 
 */
import axios from 'axios';
import authHeader from './AuthHeaderService';

export async function getDerniereOffre(articleId) {
    const response = await fetch(`/api/enchere/articleId/${articleId}`);
    return await response.json();
}
export async function addEnchere(articleId, montant) {
    const body = {
        id: articleId,
        montant: montant
    }
    try {
        const response = await axios.post('/api/enchere/create', body, { headers: authHeader() });
        return response.data;
    } catch (error) {
        console.error(error);
        return {};
    }
}