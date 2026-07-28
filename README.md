# Уральские гренки — сайт

Сайт-визитка / лендинг для производителя натуральных гренок «Уральские гренки» (Екатеринбург).

## Технологии

- [Zola](https://www.getzola.org/) v0.22.0 — статический генератор
- Tera — шаблонизатор
- Чистый CSS (дизайн-система Skeumorphism)

## Структура

```
├── config.toml          # Конфигурация Zola
├── content/             # Контент (Markdown)
│   ├── _index.md        # Главная страница
│   ├── products/        # Продукция (секция)
│   ├── blog/            # Блог и рецепты (секция)
│   ├── o-kompanii.md    # О компании
│   ├── kontakty.md      # Контакты
│   └── terms-conditions.md # Пользовательское соглашение
├── templates/           # Шаблоны (Tera)
│   ├── base.html        # Базовый (header/footer)
│   ├── index.html       # Главная
│   ├── page.html        # Статические страницы
│   ├── section.html     # Секции (каталог, блог)
│   ├── product.html     # Детальная карточка товара
│   ├── post.html        # Пост блога
│   └── 404.html         # 404
├── static/              # Статические файлы
│   ├── style.css        # Design tokens
│   ├── main.css         # Основные стили
│   └── img/             # Изображения
└── .github/workflows/   # GitHub Actions
```

## Разработка

```bash
# Установка Zola (macOS)
brew install zola

# Запуск dev-сервера
zola serve

# Сборка
zola build
```

Сайт автоматически деплоится на GitHub Pages при пуше в `main`.
