# README
Books Reservation API

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
curl -X POST http://localhost:3000/books/1/reserve  -H "Content-Type: application/json" -H "Accept: application/json" -d '{"email":"alice.smith@example.com"}'
curl -X POST http://localhost:3000/books/2/reserve  -H "Content-Type: application/json" -H "Accept: application/json" -d '{"email":"dev42@testmail.org"}'
curl -X POST http://localhost:3000/books/3/reserve  -H "Content-Type: application/json" -H "Accept: application/json" -d '{"email":"rubylover88@mail.net"}'
curl -X POST http://localhost:3000/books/4/reserve  -H "Content-Type: application/json" -H "Accept: application/json" -d '{"email":"juan.perez@correo.com"}'
curl -X POST http://localhost:3000/books/5/reserve  -H "Content-Type: application/json" -H "Accept: application/json" -d '{"email":"nina.dev@techhub.io"}'
curl -X POST http://localhost:3000/books/6/reserve  -H "Content-Type: application/json" -H "Accept: application/json" -d '{"email":"backend.hero@api.dev"}'
curl -X POST http://localhost:3000/books/7/reserve  -H "Content-Type: application/json" -H "Accept: application/json" -d '{"email":"user_random_77@demo.app"}'
curl -X POST http://localhost:3000/books/8/reserve  -H "Content-Type: application/json" -H "Accept: application/json" -d '{"email":"sofia.lopez@mailservice.co"}'
curl -X POST http://localhost:3000/books/9/reserve  -H "Content-Type: application/json" -H "Accept: application/json" -d '{"email":"tester.alpha@qa.org"}'
curl -X POST http://localhost:3000/books/10/reserve -H "Content-Type: application/json" -H "Accept: application/json" -d '{"email":"cloud.runner@infra.dev"}'
```