import React from 'react';
import { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { Link } from 'react-router-dom';

import AuthService from "../services/AuthService";

function LoginPage() {

    let navigate = useNavigate();

    const logoGoogle = require("../static/images/logo-google.png");
    const logo = require("../static/images/logo-outline.png");


    //usestates
    const [username, setUsername] = useState("");
    const [password, setPassword] = useState("");
    const [message, setMessage] = useState("");
    const [eye, setEye] = useState("closed");

    //fonction callback onAction
    const onChangeUsername = (e) => {
        const username = e.target.value;
        setUsername(username);
      };
    
      const onChangePassword = (e) => {
        const password = e.target.value;
        setPassword(password);
      };
    
    const handleLogin = (e) => {
        e.preventDefault();
        setMessage("");
        AuthService.login(username, password).then(
            () => {
                console.log("login success");
              navigate("/");//redirection vers la page d'accueil
              window.location.reload();
            }
          ).catch(err => {
            console.log("login failed");
            setMessage(err.response.data.message);
          })
      };

      const handleEye = (e) => {
        if(eye === "closed"){
            setEye("open")
        }else if(eye === "open"){
            setEye("closed")
        }
    };
    

    return (
       <body class="main-container font-outfit h-screen bg-zinc-800 bg-hero bg-center bg-100 overflow-hidden">

        <nav class="nav sm:w-1/4 w-full">
            <Link class="text-white flex flex-row items-center pt-5 pl-5" to="/">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-10 h-10 translate-y-0.5">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M6.75 15.75L3 12m0 0l3.75-3.75M3 12h18" />
                </svg>
                <h2 class="ml-5 text-2xl">Retour à l'accueil</h2>   
                <img class="logo-image h-8 ml-5" src={logo} alt="logo"/>         
            </Link>
        </nav>

        <div class="w-full h-full flex justify-center items-center text-zinc-800">
                <div class="etape bg-white w-[600px] h-[500px] translate-y-[-20px] rounded-xl flex flex-col justify-between">
                    <div class="haut flex flex-col items-center pt-5 px-5">

                        <h2 class="opacity-100 font-gowun text-4xl" >Connexion</h2>

                        <button class="google-connexion mt-10 h-10 sm:w-1/2 w-3/4 border-2 border-zinc-800 flex flex-row items-center rounded-xl justify-between">
                            <img class="h-full pl-4 py-2" src={logoGoogle} alt="google-logo"/>
                            <p class="sm:pr-3 pr-7 sm:text-lg text-sm ">Se connecter avec Google</p>
                        </button>

                        <div class="ligne w-full flex flex-row overflow-hidden mt-10">
                            <img class="w-1/4" src={require("../static/images/ligne-1.png")} alt=""/>
                            <img class="w-1/4" src={require("../static/images/ligne-2.png")} alt=""/>
                            <img class="w-1/4" src={require("../static/images/ligne-1.png")} alt=""/>
                            <img class="w-1/4" src={require("../static/images/ligne-2.png")} alt=""/> 
                        </div>


                        <input type="text" placeholder="login" class="placeholder-zinc-600 text-xl mt-10 h-10 w-full rounded-xl border-2 border-zinc-800  focus:outline-none pl-2" value={username} onChange={(e)=>onChangeUsername(e)}/>             

                        <div class="mdp border-2 mt-5 h-10 rounded-xl border-zinc-800 flex flex-row w-full">

                        {eye === "closed" ? (

                            <input type="text" placeholder="mot de passe" class="placeholder-zinc-600 text-xl w-full rounded-xl focus:outline-none pl-2" value={password} onChange={(e)=>onChangePassword(e)}/>

                        ) : (

                            <input type="password" placeholder="mot de passe" class="placeholder-zinc-600 text-xl w-full rounded-xl focus:outline-none pl-2" value={password} onChange={(e)=>onChangePassword(e)}/>

                        )

                        }  
                            
                            <button onClick={handleEye}>

                                {eye === "closed" ? (

                                    <>

                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-5 h-5 mr-4">
                                    <path stroke-linecap="round" stroke-linejoin="round" d="M3.98 8.223A10.477 10.477 0 001.934 12C3.226 16.338 7.244 19.5 12 19.5c.993 0 1.953-.138 2.863-.395M6.228 6.228A10.45 10.45 0 0112 4.5c4.756 0 8.773 3.162 10.065 7.498a10.523 10.523 0 01-4.293 5.774M6.228 6.228L3 3m3.228 3.228l3.65 3.65m7.894 7.894L21 21m-3.228-3.228l-3.65-3.65m0 0a3 3 0 10-4.243-4.243m4.242 4.242L9.88 9.88" />
                                    </svg>

                                     

                                    </>
                                    
                                    ) : (

                                    <> 
                                    

                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-5 h-5 mr-4">
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M2.036 12.322a1.012 1.012 0 010-.639C3.423 7.51 7.36 4.5 12 4.5c4.638 0 8.573 3.007 9.963 7.178.07.207.07.431 0 .639C20.577 16.49 16.64 19.5 12 19.5c-4.638 0-8.573-3.007-9.963-7.178z" />
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                                    </svg>

                                    </>

                                )
                                } 
                            </button>
                        </div>
                        
                        <Link class="text-zinc-500 text-sm self-start hover:underline no-underline pl-1 pt-0.5" to="/forgotten">j'ai oublié mon mot de passe</Link>
                        <p class="text-red-500 text-sm">{message}</p>
                        <button class="bg-zinc-800 text-amber-50 px-3 py-1 rounded-lg mt-5 text-xl hover:bg-zinc-600" onClick={(e) => handleLogin(e)}>Se connecter</button>
                        <h2 class="mt-1">Vous n'avez pas de compte, <Link class="underline" href="/inscription">s'inscrire</Link>.</h2>
                    </div>
                </div>      
        </div>
    
</body>
    );
}

export default LoginPage;