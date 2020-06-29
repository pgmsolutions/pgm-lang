.lang$init.R <- list(
    gui.updateLang = list(
        error = "(gui.updateLang) There is no list named .lang$%s "
    )
)

.lang$example <- list(
    title = list(
        value = "Localisation of an RPGM Application"
    ),
    description = list(
        value = "<p>This application is an example of managing different languages for the End-User. How it works? In this application, there is a folder <code>lang</code> in which there is: <ul><li>A file named <code>init.R</code></li><li>Several file with the name of the language, like <code>English.R</code></li></ul>In <code>init.R</code>, the function <code>rpgm.setLang</code> loads the language. It initializes a list <code>.lang</code> and loads in it the language with the corresponding R file. In <code>English.R</code> or <code>French.R</code>, it loads the selected language.</p><p>This application uses the default language of your operating system between <em>French</em> and <em>English</em>. There is a list box below that changes a language (not a mandatory to add one, it can be set by default at the beginning or on a first gui).</p>"
    ),
    lang = list(
        labeltext = "Language:",
        helptext = "When you select the language here, it is defined for the whole application and the current GUI is updated."
    )
)