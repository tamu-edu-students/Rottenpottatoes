# 🍿 RottenPotatoes Rails App

A simple **movie management application** built with Ruby on Rails. Users can **create, read, update, and delete movies**, view them in a **sortable table**, and interact with a clean, styled interface.

---

## Live Demo on Heroku

The app is deployed on Heroku and fully functional.

**Heroku Link:**
[https://rottenpotatoes-app.herokuapp.com](https://rottenpotatoes-app-c955369c2029.herokuapp.com/)  <!-- Replace with your actual URL -->

**Accessing the app:**

* Open the link in any browser.
* All features (CRUD operations, table sorting, styles) are available online.
* The database is seeded with sample movies.

> Note: Changes made locally (like seeds or CSS updates) need to be pushed and migrated on Heroku to reflect online.

---

## Features

* **Create Movies:** Add new movies with title, rating, description, and release date.
* **Read Movies:** View all movies in a **sortable table** and see details for each movie.
* **Update Movies:** Edit existing movies.
* **Delete Movies:** Remove movies safely from the database.
* **Seeded Data:** Preloaded movies from `db/seeds.rb`.
* **Duplicate Prevention:** Cannot add a movie with the same title.
* **Styled Interface:** Hand-written CSS for tables, buttons, and sorted column highlights.

---

## Table & Sorting

* Movies are displayed in a `<table>` with proper `<thead>` and `<tbody>` structure.
* Columns are **sortable**: Title, Rating, Description, Release Date.
* The **sorted column** is highlighted with an arrow indicator.

---

## Styling

* Hand-written CSS styles the table and buttons.
* Buttons for **Show, Edit, Delete, and Add New Movie** are color-coded and have hover effects.

---

## 💻 Installation (Local Development)

1. **Clone the repository**

```bash
git clone https://github.com/yourusername/rottenpotatoes.git
cd rottenpotatoes
```

2. **Install dependencies**

```bash
bundle install
```

3. **Set up the database**

```bash
rails db:create
rails db:migrate
rails db:seed
```

4. **Run the server**

```bash
rails server
```

Open `http://localhost:3000` in your browser to see the app locally.

---

## Technologies Used

* Ruby on Rails 7
* PostgreSQL (or SQLite for local development)
* HTML5 & CSS3 (hand-written)

---

## Notes & Best Practices

* **Delete functionality** uses `button_to` to ensure reliability.
* **Duplicate prevention** is implemented in the controller and validated in the model.
* Sorting is handled via Rails parameters and reflected visually in the table headers.


