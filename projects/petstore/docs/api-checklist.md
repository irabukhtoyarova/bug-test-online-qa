# API-чек-лист: Petstore (petstore.swagger.io)

**Стенд:** https://petstore.swagger.io/v2

**Коллекция:** `postman/petstore.postman_collection.json` (7 запросов)

| № | Метод | Путь | Тело | Ожидаемый статус | Проверка |
|---|---|---|---|---|---|
| 1 | POST | /pet | `{"id": 7429, "name": "Ника", "status": "available"}` | 200 | `name === "Ника"` |
| 2 | GET | /pet/7429 | — | 200 | `id === 7429` |
| 3 | PUT | /pet | `{"id": 7429, "name": "НикаНашлаСемью", "status": "sold"}` | 200 | `name === "НикаНашлаСемью"` |
| 4 | GET | /pet/findByStatus?status=available | — | 200 | Ответ — массив |
| 5 | POST | /store/order | `{"id": 8371, "petId": 7429, "quantity": 1, "status": "placed"}` | 200 | `status === "placed"` |
| 6 | DELETE | /pet/7429 | — | 200 | — |
| 7 | GET | /pet/7429 | — | 404 | `Pet not found` (негативный, после удаления) |
