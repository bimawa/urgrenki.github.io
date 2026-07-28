# Уральские гренки — Zola site
# Commands:
#   just build      — собрать сайт
#   just serve      — dev-сервер
#   just deploy     — собрать и запушить в gh-pages
#   just status     — статус jj

# Собрать сайт
build:
    zola build

# Dev-сервер
serve:
    zola serve

# Собрать и запушить в gh-pages (ввод PIN может потребоваться)
deploy: build
    # Создать временный worktree для gh-pages
    set -e
    DIR=/tmp/urgrenki-gh-pages
    rm -rf $$DIR
    git worktree add -f $$DIR origin/gh-pages 2>/dev/null || git worktree add -f $$DIR HEAD~1 2>/dev/null
    rm -rf $$DIR/*
    cp -R public/* $$DIR/
    echo "urgrenki.ru" > $$DIR/CNAME
    cd $$DIR
    git add -A
    git commit -m "deploy: zola build @ $(date +%Y-%m-%d_%H:%M)"
    git push origin HEAD:gh-pages --force
    cd ~/Developing/sites/urgrenki.ru
    git worktree remove $$DIR
    @echo "✅ Деплой готов"

# Статус jj
status:
    jj log -r 'main::' -l 6
    jj bookmark list
