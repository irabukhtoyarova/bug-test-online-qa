# Собаседник — ручное тестирование интернет-магазина

**Стенд:** https://guru.qahacking.ru

**Тип:** Smoke + Functional (ручное)

**Окружение:** Windows 10 IoT Корпоративная LTSC (21H2), Chrome 150.0.7871.101 (64 бит), Яндекс.Браузер 26.8.0.1788, DevTools 1920 / 1366 / 768 / 375 / 320

## Структура проекта

```
sobasednik/
├── checklist/
│   └── checklist.md        ← чек-лист 45 проверок (Smoke, Навигация, Магазин, Карточка, Формы, Адаптив)
├── bug-reports/        ← 3 баг-репорта
│   ├── BR-01.md
│   ├── BR-02.md
│   ├── BR-03.md
│   └── screenshots/
└── sql/
    ├── schema.sql          ← схема 3 таблиц (products, users, carts)
    ├── seed.sql            ← тестовые данные
    ├── queries.sql         ← 7 запросов
    └── README.md
```
