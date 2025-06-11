<h1 align="center">🔐 SHC Script Compiler</h1>

<p align="center">
  <img src="https://img.shields.io/badge/Author-MSI--Sirajul-green?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Made%20for-Termux-blue?style=for-the-badge" />
  <img src="https://img.shields.io/github/license/MSI-Sirajul/Script-compiler?style=for-the-badge" />
</p>

<p align="center">
  <b>Secure your bash scripts by compiling them into binaries using SHC – with a Bangla-friendly UI!
</p>

---

## 📸 Preview

<p align="center">
  <img src="https://raw.githubusercontent.com/MSI-Sirajul/Script-compiler/main/.github/demo.gif" alt="SHC Script Compiler" width="600"/>
</p>

---

## 🚀 Quick Install
Just run this one-liner command in Termux or Linux:

```bash
curl -fsSL https://raw.githubusercontent.com/MSI-Sirajul/Script-compiler/main/install &&./install
````

It will:

* ✅ Install all required packages
* ✅ Download `Compiler`
* ✅ Make it globally executable with `chmod`

---

## ⚙️ Features

✅ Compile `.sh` scripts to `.sh.x` binaries
✅ Adds `#!/data/data/com.termux/files/usr/bin/bash` if missing
✅ Removes temporary `.x.c` files after compile
✅ Beautiful colorful output
✅ Bangla-friendly terminal messages
✅ Works on **Termux** and other Linux environments

---

## 📂 File Structure

```bash
📁 Script-compiler/
├── install.sh        # Installs dependencies and setup
├── compile.sh        # The main compiler logic
└── README.md         # Project overview
```

---

## 🧪 How to Use

1. Open Termux or Linux shell
2. Run `compiler`
3. Enter your `.sh` script file path when asked
4. Done! You’ll get a compiled `.sh.x` binary in the same directory

---

## 🧠 Why Use SHC?

* 🔐 Protects your script’s source code
* 📦 Makes it portable and harder to reverse engineer
* 💨 Runs faster than plain-text bash scripts

---

## 🧾 Example

```bash
$ compiler

🔍 Enter the script file path: myscript.sh
✅ Script compiled successfully!
Output: myscript
```

> Compiled file will be saved as `myscript` in the same folder.

---

## 🏷️ Recommended GitHub Topics (for visibility)

```
termux-tools, bash-compiler, script-obfuscator, shc, termux-automation, bash-protector, binary-converter, linux-scripting, shellscript, termux-scripts
```
---

## 👤 Author

**MSI-Sirajul**
📚 Computer Science Student | 🧑‍💻 Ethical Hacker
🌐 GitHub: [github.com/MSI-Sirajul](https://github.com/MSI-Sirajul)

---

## 📜 License

Licensed under the [MIT License](LICENSE)

---

## ❤️ Contribute

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

---
