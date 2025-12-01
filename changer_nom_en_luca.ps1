# Script pour changer le nom d'utilisateur en "Luca"
# Exécuter en tant qu'administrateur

Write-Host "Tentative de changement du nom d'utilisateur..." -ForegroundColor Yellow

# Méthode 1: Renommer le compte local
try {
    $currentUser = Get-LocalUser | Where-Object {$_.Name -eq "lbye3"}
    if ($currentUser) {
        Rename-LocalUser -Name "lbye3" -NewName "Luca"
        Write-Host "Compte local renommé avec succès!" -ForegroundColor Green
    } else {
        Write-Host "Utilisateur 'lbye3' non trouvé" -ForegroundColor Red
    }
} catch {
    Write-Host "Erreur lors du renommage: $_" -ForegroundColor Red
}

# Méthode 2: Changer le nom complet
try {
    Set-LocalUser -Name "Luca" -FullName "Luca"
    Write-Host "Nom complet changé en 'Luca'" -ForegroundColor Green
} catch {
    Write-Host "Erreur lors du changement du nom complet: $_" -ForegroundColor Red
}

Write-Host "`nVeuillez redémarrer votre ordinateur pour que les changements prennent effet." -ForegroundColor Cyan
Read-Host "Appuyez sur Entrée pour fermer"
