## Split Bill App

A web application built with Ruby on Rails to help users organize shared expenses and simplify the process of splitting bills.

## Project Overview

Split Bill App is a full-stack web development project focused on building a practical solution for managing shared expenses.

The project uses Ruby on Rails to handle server-side application logic, database interactions, and web requests, alongside frontend technologies for the user interface.

## Tech Stack

| Technology | Purpose |
|---|---|
| Ruby 3.1.2 | Backend programming language |
| Ruby on Rails 7.1 | Web application framework |
| SQLite | Relational database |
| HTML & CSS | User interface |
| JavaScript | Frontend functionality |
| Hotwire (Turbo & Stimulus) | Interactive frontend components |
| bcrypt | Password hashing |
| Git & GitHub | Version control |

## Getting Started

### Prerequisites

- Ruby 3.1.2
- Bundler
- SQLite3
- Git

### Installation

**1. Clone the repository**

```bash
git clone https://github.com/legesse9/Split_Bill_App.git
cd Split_Bill_App
```

**2. Install dependencies**

```bash
bundle install
```

**3. Set up the database**

```bash
bin/rails db:prepare
```

**4. Start the application**

```bash
bin/rails server
```

**5. Open the application**

Navigate to:

http://localhost:3000

## Testing

The project includes Rails' built-in testing framework, with Capybara and Selenium WebDriver available for system testing.

To run the test suite:

```bash
bin/rails test
```

## Project Structure

```text
split_bill_app/
├── app/          # Models, views, controllers
├── bin/          # Application scripts
├── config/       # Application configuration
├── db/           # Database schema and migrations
├── lib/          # Supporting application code
├── public/       # Public assets
├── test/         # Automated tests
├── Gemfile       # Ruby dependencies
└── README.md     # Project documentation
```

## Future Improvements

Potential areas for continued development include enhancing the user interface, improving the expense-management workflow, expanding automated testing, and deploying the application online.

## Author

**Daniel Legesse**

Computer Science & Engineering — The Ohio State University

GitHub: [@legesse9](https://github.com/legesse9)

## Project Status

Academic software development project. Source code is available in this repository.
