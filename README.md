# Welcome to Jampa

You know there are many beamer templates named after important cities in the world, such as [Frankfurt](https://latex-beamer.com/tutorials/beamer-themes/3/#Frankfurt), [Palo Alto](https://latex-beamer.com/tutorials/beamer-themes/5/#PaloAlto) and [Madrid](https://latex-beamer.com/tutorials/beamer-themes/4/#Madrid). And just like me, you probably noticed that one of the most incredible cities is not in this list (boooo!).

![jpa](https://user-images.githubusercontent.com/20937937/159020849-4bdc236a-7fb0-44aa-b943-db8531ca8137.jpg)
*João Pessoa - Paraíba - Brazil, aka, JAMPA*

Well, I'm here to tell you that this is now fixed. If you clone this repo, you can enjoy a beautiful but simple to use template and also pay homage to this awesome city. 

## Installing

### Linux

Open a terminal in the project directory and run:

```shell
sudo bash install.sh
```

During the installation, the contents of this directory are copied to `~/texmf/tex/latex/sparta`

So, you may now delete this directory if you want.

## Uninstalling

### Linux

Open a terminal and navigate to the installation directory:

```shell
cd ~/texmf/tex/latex/sparta
```

And then run:

```shell
sudo bash uninstall.sh
```
## Using

To use, open a terminal in an empty directory (where you want to start your document) and run:

```shell
sparta init
```

The command above will create your documents files.

To compile, run:

```shell
sparta compile
```
