if [ ! -d "~/texmf/tex/latex" ]; then
    mkdir -p ~/texmf/tex/latex/Jampa
fi

cp -r $(dirname $0)/* ~/texmf/tex/latex/Jampa

# add Jampa to path
cp ~/texmf/tex/latex/Jampa/Jampa /usr/local/bin

# change the permission
chmod +x /usr/local/bin/Jampa

# update path
source /etc/environment && export PATH
