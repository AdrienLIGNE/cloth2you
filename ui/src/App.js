import "./App.css";
import React from "react";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import LoginPage from "./pages/LoginPage";
import ArticlePage from "./pages/ArticlePage";
import NotFoundErrorPage from "./pages/NotFoundErrorPage";
import VendrePage from "./pages/VendrePage";
import ProfilePage from "./pages/ProfilePage";
import SignupPage from "./pages/SignupPage";
import AccueilPage from "./pages/AccueilPage";

function App() {
  return (
    <BrowserRouter>
      <div>
        <Routes>
          <Route path="/" element={<AccueilPage />} />
          <Route path="/connexion" element={<LoginPage />} />
          <Route path="/vendre" element={<VendrePage />} />
          <Route path="/profil" element={<ProfilePage />} />
          <Route path="/inscription" element={<SignupPage />} />
          <Route exact path="*" element={< NotFoundErrorPage/>} />
        </Routes>
      </div>
    </BrowserRouter>
  );
}

export default App;
