#The function sets the language of the application. Returns TRUE if a language is well loaded, else FALSE.
#@param lang lang: A character string which specify the language chosen. If not specifed, by default it is "English" on the serveur (you can change it) and the langague of the system otherwise
rpgm.setLang <- function(lang = NULL)
{
    Default <- "English" #If not specified and we are on the server, or not specified and the language found is not yet in your application, place a valide language
    if(is.null(lang))
        .lang <<- list(lang = `if`(rpgm.isServer(), Default, gsub(".*LC_COLLATE=(.*?)_.*", "\\1", Sys.getlocale(), perl=TRUE)))
    else
        .lang <<- list(lang = lang)
    if(file.exists(path <- rpgm.pgmFilePath(paste0("lang/", .lang$lang, ".R"))))
    {
        source(path, encoding= "utf8")
        return(TRUE)
    }
    if(file.exists(path <- rpgm.pgmFilePath(paste0("lang/", Default, ".R"))))
    {
        source(path, encoding= "utf8")
        return(TRUE)
    }
    return(FALSE)
}

#We set here the language. If you want to force a specific language, just write for example rpgm.setLang("French")
if(!rpgm.setLang())
    stop(.lang$init.R$plain$error_rpgm.setLang)

#The function gets the language of the application. Returns a character string or NULL if the language is not initialized.
rpgm.getLang <- function()
{
    if(exists(".lang"))
        return(.lang$lang)
    return(NULL)
}

#Update the language "on-the-tly", if the user can modify it in a GUI while remaning in it. It implies to use a rigirous naming of each lang tiem associated to each widget of each GUI.
#The generic form that you should use is .lang$gui$widgetID$widgetPROPERTY, for example: if you call gui.updateLand("dashboard"), it must exist .lang$dashboard as a list in which one element is for example $.lang$dashboard$title$value
#@param gui The ID / name of the GUI in the list .lang
gui.updateLang <- function(gui)
{
    if(exists("lang"))
        rpgm.setLang(lang)
    if(is.null(.lang[[gui]]))
        stop(sprintf(.lang$init.R$gui.updateLang$error, gui)) #with sprintf, we can use the C style print with "%s" generic, called here with the variable gui
    widgets <- names(.lang[[gui]])
    for(i in 1L:length(widgets))
        gui.setProperties(rpgm.step("main", gui), widgets[i], .lang[[gui]][[i]])
}

#Select the current language for the list box
gui.setValue(rpgm.step("main", "example"), "lang", rpgm.getLang())

#Apply the selected language to the gui example.
gui.updateLang("example")
