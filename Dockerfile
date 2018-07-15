FROM alpine:latest

ENV TERM screen-256color

RUN apk add --update \ 
    bash \
    neovim \
    curl \
    git \ 
    the_silver_searcher \
 && git clone --depth 1 --quiet https://github.com/junegunn/fzf.git ~/.fzf \
 && ~/.fzf/install --key-bindings --update-rc --completion \
 && curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs --silent \
         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ADD init.vim /root/.config/nvim/init.vim

RUN nvim -i NONE -c PlugInstall -c quitall > /dev/null 2>&1

ENV FZF_DEFAULT_COMMAND 'ag -g ""'

WORKDIR /wd

CMD ["nvim"]
