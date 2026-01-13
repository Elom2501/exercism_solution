#!/usr/bin/env bash

# Fonction pour inverser une chaîne
reverse_string() {
  local input="$1"
  echo "$input" | rev
}

# Fonction principale
main() {
  # Vérifie si au moins un argument est fourni
  if [[ $# -eq 0 ]]; then
    echo "Veuillez fournir une chaîne à inverser."
    exit 1
  fi

  # Prend en compte tous les arguments (y compris les espaces)
  local input="$*"
  reverse_string "$input"
}

# Appel de la fonction principale
main "$@"
