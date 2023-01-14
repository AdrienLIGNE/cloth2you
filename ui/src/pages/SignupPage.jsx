import React from "react";
import { Link } from "react-router-dom";
import { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import AuthService from "../services/AuthService";

function SignupPage() {
  let navigate = useNavigate();

  const googleLogo = require("../static/images/logo-google.png");
  const logo = require("../static/images/logo-outline.png");

  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [passwordConfirm, setPasswordConfirm] = useState("");
  const [message, setMessage] = useState("");
  const [pseudo, setPseudo] = useState("");
  const [formValid, setFormValid] = useState(false);
  const [page, setPage] = useState(1);
  const [cguChecked, setCguChecked] = useState(false);

  const handleCguChange = (e) => {
    setCguChecked(e.target.checked);
  };

  const handlePreviousPage = (e) => {
    e.preventDefault();
    setPage(1);
  };

  const handleNextPage = (e) => {
    e.preventDefault();
    if (page === 1 && formValid === true) {
      setPage(2);
    } else {
      setMessage("Veuillez remplir tous les champs correctement");
    }
  };

  const onChangeEmail = (e) => {
    e.preventDefault();
    const email = e.target.value;
    setEmail(email);
  };

  const onChangePassword = (e) => {
    e.preventDefault();
    const password = e.target.value;
    setPassword(password);
  };

  const onChangePasswordConfirm = (e) => {
    e.preventDefault();
    const passwordConfirm = e.target.value;
    setPasswordConfirm(passwordConfirm);
  };

  const onChangePseudo = (e) => {
    e.preventDefault();
    const pseudo = e.target.value;
    setPseudo(pseudo);
  };

  const handleRegisterAcheteur = (e) => {
    e.preventDefault();
    setMessage("");
    if (pseudo && email && password && passwordConfirm) {
      if (password === passwordConfirm) {
        setFormValid(true);
      }else{
        setMessage("Les mots de passe ne correspondent pas");
      }
    } else {
      setMessage("Veuillez remplir tous les champs");
    }
    if (formValid) {
      if (!cguChecked) {
        setMessage("Vous devez accepter les CGU");
      } else {
        setMessage("");
        e.preventDefault();
        AuthService.registerAcheteur(pseudo, email, password)
          .then(() => {
            navigate("/"); //redirection vers la page d'accueil
            window.location.reload();
          })
          .catch((err) => {
            console.log("register failed");
            setMessage(err.response.data.message);
          });
      }
    }
  };

  return (
    <main className="main-container font-outfit h-screen bg-zinc-800 bg-hero bg-cover sm:bg-100 bg-200 overflow-hidden">
      <nav className="nav sm:w-1/4 w-full">
        <Link
          to="/"
          className="text-white flex flex-row items-center pt-5 pl-5"
        >
          <svg
            xmlns="http://www.w3.org/2000/svg"
            fill="none"
            viewBox="0 0 24 24"
            strokeWidth="1.5"
            stroke="currentColor"
            className="w-10 h-10 translate-y-0.5"
          >
            <path
              strokeLinecap="round"
              strokeLinejoin="round"
              d="M6.75 15.75L3 12m0 0l3.75-3.75M3 12h18"
            />
          </svg>
          <h2 className="ml-5 text-2xl">Retour à l'accueil</h2>
          <img className="logo-image h-8 ml-5" src={logo} alt="logo" />
        </Link>
      </nav>
      <div className="w-full h-full flex justify-center text-zinc-800 sm:mt-0 mt-10">
        <div className="etape bg-white w-[600px] sm:h-4/5 h-5/6 sm:rounded-xl rounded-0 flex flex-row justify-between">
          <button
            className="back sm:px-5 px-1"
            onClick={(e) => handlePreviousPage(e)}
          >
            <svg
              xmlns="http://www.w3.org/2000/svg"
              fill="none"
              viewBox="0 0 24 24"
              strokeWidth="1.5"
              stroke="currentColor"
              className="w-10 h-10"
            >
              <path
                strokeLinecap="round"
                strokeLinejoin="round"
                d="M11.25 9l-3 3m0 0l3 3m-3-3h7.5M21 12a9 9 0 11-18 0 9 9 0 0118 0z"
              />
            </svg>
          </button>
          {page === 1 ? (
            <div className="haut flex flex-col items-center pt-5 px-5">
              <h2 className="opacity-100 font-gowun text-4xl">Inscription</h2>

              <button className="google-connexion mt-8 h-10 sm:w-2/3 w-full border-2 border-zinc-800 flex flex-row items-center rounded-xl justify-between">
                <img
                  className="h-full pl-4 py-2"
                  src={googleLogo}
                  alt="google-logo"
                />
                <p className="sm:pr-5 pr-7 ml-2 sm:text-lg text-sm ">
                  S'inscrire avec Google
                </p>
              </button>

              <div className="ligne w-full flex flex-row overflow-hidden mt-8">
                <img className="w-1/4" src="ligne-1.png" alt="" />
                <img className="w-1/4" src="ligne-2.png" alt="" />
                <img className="w-1/4" src="ligne-1.png" alt="" />
                <img className="w-1/4" src="ligne-1.png" alt="" />
              </div>

              <input
                type="text"
                placeholder="email"
                className="placeholder-zinc-600 mt-8 h-8 w-full rounded-xl border-2 border-zinc-800  focus:outline-none pl-2"
                onChange={(e) => onChangeEmail(e)}
              />
              <input
                type="text"
                placeholder="pseudo"
                className="placeholder-zinc-600 mt-5 h-8 w-full rounded-xl border-2 border-zinc-800  focus:outline-none pl-2"
                onChange={(e) => onChangePseudo(e)}
              />

              <div className="mdp border-2 mt-5 h-8 rounded-xl border-zinc-800 flex flex-row w-full">
                <input
                  type="password"
                  placeholder="mot de passe"
                  className="placeholder-zinc-600  w-full rounded-xl focus:outline-none pl-2"
                  onChange={(e) => onChangePassword(e)}
                />
                <button>
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 24 24"
                    strokeWidth="1.5"
                    stroke="currentColor"
                    className="w-5 h-5 mr-4"
                  >
                    <path
                      strokeLinecap="round"
                      strokeLinejoin="round"
                      d="M2.036 12.322a1.012 1.012 0 010-.639C3.423 7.51 7.36 4.5 12 4.5c4.638 0 8.573 3.007 9.963 7.178.07.207.07.431 0 .639C20.577 16.49 16.64 19.5 12 19.5c-4.638 0-8.573-3.007-9.963-7.178z"
                    />
                    <path
                      strokeLinecap="round"
                      strokeLinejoin="round"
                      d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"
                    />
                  </svg>
                </button>
              </div>
              <div className="mdp border-2 mt-5 h-8 rounded-xl border-zinc-800 flex flex-row w-full">
                <input
                  type="password"
                  placeholder="confirmer le mot de passe"
                  className="placeholder-zinc-600 w-full rounded-xl focus:outline-none pl-2"
                  onChange={(e) => onChangePasswordConfirm(e)}
                />
                <button>
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 24 24"
                    strokeWidth="1.5"
                    stroke="currentColor"
                    className="w-5 h-5 mr-4"
                  >
                    <path
                      strokeLinecap="round"
                      strokeLinejoin="round"
                      d="M2.036 12.322a1.012 1.012 0 010-.639C3.423 7.51 7.36 4.5 12 4.5c4.638 0 8.573 3.007 9.963 7.178.07.207.07.431 0 .639C20.577 16.49 16.64 19.5 12 19.5c-4.638 0-8.573-3.007-9.963-7.178z"
                    />
                    <path
                      strokeLinecap="round"
                      strokeLinejoin="round"
                      d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"
                    />
                  </svg>
                </button>
              </div>

              <div className="cgu flex flex-row gap-2 mt-5">
                <input
                  type="checkbox"
                  name="cgu"
                  id="cgu"
                  className="accent-zinc-800"
                  onChange={(e) => handleCguChange(e)}
                />
                <p className="text-justify text-xs" disabled>
                  En cochant cette case, vous acceptez les termes et conditions
                  de cloth2you, les{" "}
                  <Link href="/cgu" className="underline">
                    conditions générales d'utilisation
                  </Link>{" "}
                  et la{" "}
                  <Link to="/confidentialite" className="underline">
                    politique de confidentialité
                  </Link>{" "}
                  et avoir au moins 18 ans.
                </p>
              </div>

              <p className="text-red-500 text-sm">{message}</p>
              <div className="choix w-full flex flex-row justify-around sm:gap-0 gap-2">
                <button
                  className="bg-zinc-800 text-amber-50 px-3 py-1 rounded-lg mt-5 sm:text-md text-sm hover:bg-zinc-600"
                  onClick={(e) => handleRegisterAcheteur(e)}
                >
                  S'inscrire en tant qu'acheteur
                </button>
                <button
                  className="text-zinc-800 border-2 border-zinc-800 px-3 py-1 rounded-lg mt-5 sm:text-md text-sm hover:text-zinc-600"
                  onClick={(e) => handleNextPage(e)}
                >
                  Je souhaite vendre mes créations
                </button>
              </div>

              <h2 className="mt-4  text-center">
                Vous avez déjà un compte,{" "}
                <Link className="underline" to="/connexion">
                  se connecter
                </Link>
                .
              </h2>
            </div>
          ) : (
            <div className="haut flex flex-col items-center pt-5 px-5">
              <h2 className="opacity-100 font-gowun text-4xl">Inscription</h2>

              <div className="ligne w-full flex flex-row overflow-hidden mt-8">
                <img className="w-1/4" src="ligne-1.png" alt="" />
                <img className="w-1/4" src="ligne-2.png" alt="" />
                <img className="w-1/4" src="ligne-1.png" alt="" />
                <img className="w-1/4" src="ligne-1.png" alt="" />
              </div>

              <p className="text-sm text-center mt-8">
                En vous inscrivant en tant que vendeur·euse sur cloth2you, vous
                devez avoir un statut entrepreneurial,{" "}
                <a href="" className="underline">
                  en savoir plus
                </a>
                .
              </p>

              <input
                type="text"
                placeholder="nom"
                className="placeholder-zinc-600 mt-8 h-8 w-full rounded-xl border-2 border-zinc-800  focus:outline-none pl-2"
              />
              <input
                type="text"
                placeholder="prénom"
                className="placeholder-zinc-600 mt-4 h-8 w-full rounded-xl border-2 border-zinc-800  focus:outline-none pl-2"
              />
              <input
                type="text"
                placeholder="numéro SIREN"
                className="placeholder-zinc-600 mt-4 h-8 w-full rounded-xl border-2 border-zinc-800  focus:outline-none pl-2"
              />

              <div className="cgu flex flex-row gap-2 mt-8">
                <input
                  type="checkbox"
                  name="cgu"
                  id="cgu"
                  className="accent-zinc-800"
                />
                <p className="text-justify text-xs" disabled>
                  En cochant cette case, vous acceptez les termes et conditions
                  de cloth2you, les{" "}
                  <Link to="/cgu" className="underline">
                    conditions générales d'utilisation
                  </Link>{" "}
                  et la{" "}
                  <Link href="" className="underline">
                    politique de confidentialité
                  </Link>{" "}
                  et avoir au moins 18 ans.
                </p>
              </div>

              <div className="choix w-full flex flex-row justify-around mt-5">
                <button className="bg-zinc-800 text-amber-50 px-3 py-1 rounded-lg mt-5 text-md hover:bg-zinc-600">
                  S'inscrire en tant que vendeur · euse
                </button>
              </div>
            </div>
          )}
          <button className="next sm:px-5 px-2" onClick={handleNextPage}>
            <svg
              xmlns="http://www.w3.org/2000/svg"
              fill="none"
              viewBox="0 0 24 24"
              strokeWidth="1.5"
              stroke="currentColor"
              className="w-10 h-10"
            >
              <path
                strokeLinecap="round"
                strokeLinejoin="round"
                d="M12.75 15l3-3m0 0l-3-3m3 3h-7.5M21 12a9 9 0 11-18 0 9 9 0 0118 0z"
              />
            </svg>
          </button>
        </div>
      </div>
    </main>
  );
}

export default SignupPage;
