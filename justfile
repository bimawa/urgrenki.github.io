# Уральские гренки
#   just product "Название"     — новый товар
#   just post "Заголовок"       — новость
#   just recipe "Название"      — рецепт

product n:
    cp _archetypes/product.md content/products/$(echo '{{n}}' | tr ' ' '-').md

post n:
    cp _archetypes/post.md content/news/$(echo '{{n}}' | tr ' ' '-').md

recipe n:
    cp _archetypes/recipe.md content/recipes/$(echo '{{n}}' | tr ' ' '-').md
