# ⏱️ Stopwatch Project

Welcome to the Stopwatch project! This project is built using **ReScript** and **React** with **Vite**. It serves as a learning project to kickstart the journey towards ReScript and its usage with React.

## 🚀 Getting Started

Follow these instructions to get the project up and running on your local machine.

### Prerequisites

- Node.js
- npm or yarn

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yash-raj-gupta/stopwatch.git
   ```
2. Navigate to the project directory:
   ```bash
   cd stopwatch
   ```
3. Install the dependencies:
   ```bash
   npm install
   ```

### Running the Project

Run ReScript in dev mode:
```sh
npm run res:dev
```

In another tab, run the Vite dev server:
```sh
npm run dev
```

## 🛠️ Technologies Used

- **ReScript**: A robust language for crafting JavaScript apps.
- **React**: A JavaScript library for building user interfaces.
- **Vite**: A fast build tool and development server.

## 📚 Learning Goals

- Understand the basics of ReScript.
- Learn how to integrate ReScript with React.
- Explore the usage of Vite for rapid development.

## 💡 Tips

### Fast Refresh & ReScript

Make sure to create interface files (`.resi`) for each `*.res` file.

Fast Refresh requires you to **only export React components**, and it's easy to unintentionally export other values that will disable Fast Refresh (you will see a message in the browser console whenever this happens).

### Why are the generated `.res.mjs` files tracked in git?

In ReScript, it's a good habit to keep track of the actual JS output the compiler emits. It allows quick sanity checking if we made any changes that actually have an impact on the resulting JS code (especially when doing major compiler upgrades, it's a good way to verify if production code will behave the same way as before the upgrade).

This will also make it easier for your Non-ReScript coworkers to read and understand the changes in GitHub PRs, and call you out when you are writing inefficient code.

If you want to opt-out, feel free to remove all compiled `.res.mjs` files within the `src` directory and add `src/**/*.res.mjs` in your `.gitignore`.

## 🤝 Contributing

Feel free to submit issues, fork the repository, and make pull requests. Contributions are always welcome!

## 📄 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## 📧 Contact

If you have any questions, feel free to reach out to me at [yashraj.guptadev@gmail.com].

---
