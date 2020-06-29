# pgm-lang

This application is a skeleton of language managing with RPGM. It has an auto select language on desktop, using the language of the operating system of the user, by simply calling `rpgm.setLang()`. We can specify the lang (for example, after asking the user, or from another way) with `rpgm.setLang("French")` for French.
In order to define the language French, it requires to have a **French.R** file in the folder **lang** of your application.

The function `rpgm.getLang()` returns the current lang defined for the application. The function `gui.updateLang(gui)` updates any GUI (even during its execution) of the main step with the language. Note that, we need to call it for all GUI of the application at the beginning (and at each update).

It remains to explain what we expect in a file like **French.R**. The language is managed with a list named `.lang` (created by `rpgm.setLang`). In this list, each gui is a sub list, and each widget is a sub sub list. In the list associated to a widget, each element name is a widget property of the GUI. See https://docs.pgm-solutions.com/docs/api/widget-properties/ (mainly, we use `labeltext`, `helptext` and `value`).

Finally, it is possible to ask the user to choose the langage _on-the-fly_. We set it with `rpgm.setLang(lang)` and we update it after.
