/**
 * Passerelle vers l'API depuis le frontend
 * @returns 
 */

import axios from "axios";
import authHeader from "./AuthHeaderService";

export async function getArticleImagesByArticleId(articleId) {
    const response = await fetch(`/api/article/${articleId}/images`);
    return await response.json();
}

export async function uploadImage(image) {
    const formData = new FormData();
    formData.append('image', image);
    return axios.post('/api/image', formData, { headers: {'Content-Type': 'multipart/form-data'}});
}