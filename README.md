# Simple Realm Actors Todo App

This is a simple app demonstrating how to use the [Realm Database](https://realm.io/) with **Realm Actors** and async/await syntax.  
The app allows you to create and retrieve "Todo" items, and it provides performance statistics for these operations.

## Features

- **Create Dummy Todos:**  
  Set the number of dummy todos to create in the Realm database.

- **Retrieve Todos:**  
  Fetch all created todos from the database.

- **Statistics Display:**  
  The UI displays:
  - Number of todos created
  - Number of todos retrieved
  - Time taken for creation and retrieval operations
  - List of todo's 

- **Async/Await with Realm Actors:**  
  All database operations utilize async/await patterns and Realm Actors for safe, concurrent access.

## Usage

1. **Set the Number of Todos:**  
   Enter the number of dummy todos you wish to create.

2. **Create Todos:**  
   Use the button or action to create todos in the Realm database. The app will report how many were created and the time taken.

3. **Retrieve Todos:**  
   Use the retrieval action to fetch todos. The app will report how many were fetched and the time taken.

## Technology Stack

- [Realm Database](https://realm.io/)
- Realm Actors
- Async/Await (Concurrency)
- SwiftUI

## Example

```
Fetched 10000 todos in 0.3 sec
```

## Setup

1. Clone the repository.
2. Install dependencies (if any).
3. Run the app on your preferred environment.

## Notes

- This is a demo app to showcase Realm's concurrent features using actors and async/await.
- For production use, consider implementing additional error handling and data validation.

## License

MIT
