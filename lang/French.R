.lang$init.R <- list(
    gui.updateLang = list(
        error = "(gui.updateLang) Il n'y a pas de liste nommée .lang$%s"
    )
)

.lang$example <- list(
    title = list(
        value = "Gestion des langues dans une Application RPGM"
    ),
    description = list(
        value = "<p>Cette application est un exemple de gestion de différentes langues pour l'utilisateur finale. Comme ça marche ? Dans cette application, il y a un dossier <code>lang</code> dans lequel il y a : <ul><li>Un fichier <code>init.R</code></li><li>Plusieurs fichiers avec le nom de la langue, comme <code>English.R</code></li></ul>Dans <code>init.R</code>, la fonction <code>rpgm.setLang</code> charge la langue. Cela initialise une liste <code>.lang</code> et charge dans celle-ci la langue grâce au fichier .R correspondant. Dans <code>French.R</code> ou <code>English.R</code>, la langue choisie est chargée.</p><p>Cette application prend comme langue celle par défaut de votre système d'exploitation parmi <em>French</em> et <em>English</em>. Il y a une liste à choix ci-dessous qui permet de changer la langue à la volée (il n'est pas nécessaire d'ajouter cela à une application, la langue pouvait être sélectionné automatiquement ou sur une première gui).</p>"
    ),
    lang = list(
        labeltext = "Langue:",
        helptext = "Quand vous sélectionnez la langue ici, il est défini pour toute l'application et la GUI actuelle est mise à jour automatiquement."
    )
)
