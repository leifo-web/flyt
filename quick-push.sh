#!/bin/bash -l

# Gå til prosjektet ditt
cd /Users/leifo/Web/flyt || exit 1

# Hvis du vil, kan du kjøre en kjapp hugo-build-sjekk her senere

# Hvis det ikke er noen endringer, avslutt stille
if git diff --quiet && git diff --cached --quiet; then
  echo "Ingen endringer å pushe."
  exit 0
fi

# Commit-melding: bruk det du skriver inn, ellers en standard
MESSAGE="$*"
if [ -z "$MESSAGE" ]; then
  MESSAGE="Oppdatering av innhold/design"
fi

git add .
git commit -m "$MESSAGE"
git push origin main

echo "Pushet til GitHub. Netlify bygger automatisk."

