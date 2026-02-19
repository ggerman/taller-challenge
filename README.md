# README
Books Reservation API

## Run the application. 

Run the application with Docker Compose using `docker compose up`. 
You can access the container shell with `docker exec -it taller-challenge bash`.

Seed random books

Open Rails console:
bin/rails console


```ruby
Book.create!(title: "Eloquent Ruby", status: "available")
Book.create!(title: "Practical Object-Oriented Design", status: "available")
Book.create!(title: "Programming Ruby", status: "available")
Book.create!(title: "Ruby Under a Microscope", status: "available")
Book.create!(title: "Metaprogramming Ruby", status: "available")
Book.create!(title: "Ruby Cookbook", status: "available")
Book.create!(title: "Confident Ruby", status: "available")
Book.create!(title: "The Ruby Way", status: "available")
Book.create!(title: "Rails AntiPatterns", status: "available")
Book.create!(title: "Agile Web Development with Rails", status: "available")
```

## List all books
GET /books

Test with curl:
curl http://localhost:3000/books

Endpoint:
POST /books/:id/reserve
Body:
```json
{ "email": "ggerman@gmail.com" }
```

Example curl requests
```bash
curl -X POST http://localhost:3000/books/1/reserve \
  -H "Content-Type: application/json" \
  -d '{"reservation":{"email":"alice@example.com"}}'
```
```bash
curl -X POST http://localhost:3000/books/2/reserve \
  -H "Content-Type: application/json" \
  -d '{"reservation":{"email":"bob@example.com"}}'
```
```bash
curl -X POST http://localhost:3000/books/3/reserve \
  -H "Content-Type: application/json" \
  -d '{"reservation":{"email":"carol@example.com"}}'
```
```bash
curl -X POST http://localhost:3000/books/4/reserve \
  -H "Content-Type: application/json" \
  -d '{"reservation":{"email":"dave@example.com"}}'
```
```bash
curl -X POST http://localhost:3000/books/5/reserve \
  -H "Content-Type: application/json" \
  -d '{"reservation":{"email":"eve@example.com"}}'
```
```bash
curl -X POST http://localhost:3000/books/6/reserve \
  -H "Content-Type: application/json" \
  -d '{"reservation":{"email":"frank@example.com"}}'
```
```bash
curl -X POST http://localhost:3000/books/7/reserve \
  -H "Content-Type: application/json" \
  -d '{"reservation":{"email":"grace@example.com"}}'
```
```bash
curl -X POST http://localhost:3000/books/8/reserve \
  -H "Content-Type: application/json" \
  -d '{"reservation":{"email":"heidi@example.com"}}'
```
```bash
curl -X POST http://localhost:3000/books/9/reserve \
  -H "Content-Type: application/json" \
  -d '{"reservation":{"email":"ivan@example.com"}}'
```
```bash
curl -X POST http://localhost:3000/books/10/reserve \
  -H "Content-Type: application/json" \
  -d '{"reservation":{"email":"judy@example.com"}}'
```
