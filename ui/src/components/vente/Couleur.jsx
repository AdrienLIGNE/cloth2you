import React from "react";

function Couleur(props) {
  return (
    <div class="couleur sm:mt-8 mt-12 w-5/6">
      <h2 class="font-gowun text-xl font-bold">Couleurs :</h2>
      <input
        type="text"
        placeholder="exemple : rouge,bleu,jaune"
        class="placeholder-zinc-600 h-8 w-full rounded-xl border-2 border-zinc-800 focus:outline-none pl-2"
      />
      <div class="sm:text-xs text-xs flex flex-row items-center">
        <svg
          xmlns="http://www.w3.org/2000/svg"
          fill="none"
          viewBox="0 0 24 24"
          stroke-width="1.5"
          stroke="orange"
          class=" sm:h-6 h-16 mr-2 mt-1"
        >
          <path
            stroke-linecap="round"
            stroke-linejoin="round"
            d="M12 9v3.75m-9.303 3.376c-.866 1.5.217 3.374 1.948 3.374h14.71c1.73 0 2.813-1.874 1.948-3.374L13.949 3.378c-.866-1.5-3.032-1.5-3.898 0L2.697 16.126zM12 15.75h.007v.008H12v-.008z"
          />
        </svg>
        si votre produit possède plusieurs couleurs, veillez à les entrer sous
        la forme suivante : couleur1,couleur2,couleur3
      </div>
    </div>
  );
}

export default Couleur;