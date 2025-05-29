## 📄 **Using PDF in Flutter**

An example Flutter project demonstrating how to display PDF files using the [**pdfx**](https://pub.dev/packages/pdfx) package, compatible with Android, iOS, Desktop, and Web.

This app serves as a practical guide to integrating and rendering PDFs in Flutter efficiently, with full cross-platform support.

---

## 🚀 Features

* 📥 Load PDFs from assets or URLs
* 📖 PDF page viewing with scroll support
* 🌐 Full Flutter Web compatibility
* 🔄 Page navigation and refresh
* ⚡ Fast rendering with caching

---

## 🧰 Main Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  pdfx: ^2.9.1
```

---

## 💻 How to Run the Project

1. **Clone the repository**:

   ```bash
   git clone https://github.com/your-username/pdf_example_flutter_app.git
   cd pdf_example_flutter_app
   ```

2. **Install dependencies**:

   ```bash
   flutter pub get
   ```

3. **Run the app**:

   ```bash
   flutter run
   ```

4. **For Web**: Before running in the browser, make sure to run this command to install the required `pdf.js` files:

   ```bash
   flutter pub run pdfx:install_web
   ```

   🔧 This command automatically updates your `web/index.html` with the necessary scripts to enable PDF rendering in Flutter Web.

---

## ⚠️ Common Error (and Fix)

If you encounter this error when running on the Web:

```bash
Error: Assertion failed:
checkPdfjsLibInstallation()
"pdf.js not added in web/index.html. Run «flutter pub run pdfx:install_web» or add script manually"
```

👉 Run this command:

```bash
flutter pub run pdfx:install_web
```

Or manually add the following scripts at the end of the `<body>` tag in `web/index.html`:

```html
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.13.216/pdf.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.13.216/pdf.worker.min.js"></script>
```

---

## 📷 Screenshots

(Add some screenshots of the app running on mobile and web if you want.)

---

## 🧪 Tested On

* ✅ Android (API 21+)
* ✅ iOS
* ✅ Chrome / Edge / Firefox (Web)
* ✅ Windows / macOS (Flutter Desktop)

---

## 👨‍💻 Author

Created by **[Your Name or GitHub](https://github.com/guicastle)** as an educational example for the Flutter community.

---

=============================

### PT

## 📄 **Usando o PDF no Flutter**

Um projeto de exemplo em Flutter demonstrando como visualizar arquivos PDF usando a biblioteca [**pdfx**](https://pub.dev/packages/pdfx), compatível com Android, iOS, Desktop e Web.

Este app serve como um guia prático para integrar e renderizar PDFs no Flutter de forma eficiente, com suporte multiplataforma.

---

## 🚀 Funcionalidades

* 📥 Carregamento de PDFs locais ou da internet
* 📖 Visualização de páginas PDF com rolagem
* 🌐 Suporte completo ao Flutter Web
* 🔄 Atualização e navegação de páginas
* ⚡ Renderização rápida com cache

---

## 🧰 Dependências principais

```yaml
dependencies:
  flutter:
    sdk: flutter
  pdfx: ^2.9.1
```

---

## 💻 Como executar o projeto

1. **Clone o repositório**:

   ```bash
   git clone https://github.com/seu-usuario/pdf_example_flutter_app.git
   cd pdf_example_flutter_app
   ```

2. **Instale as dependências**:

   ```bash
   flutter pub get
   ```

3. **Execute o app**:

   ```bash
   flutter run
   ```

4. **Para Web**: Execute o comando abaixo **antes de rodar no navegador** para garantir que o `pdf.js` seja incluído corretamente:

   ```bash
   flutter pub run pdfx:install_web
   ```

   🔧 Esse comando irá modificar automaticamente o arquivo `web/index.html` e adicionar os scripts necessários para o funcionamento da visualização PDF no Flutter Web.

---

## ⚠️ Erro comum (e solução)

Se você encontrar este erro ao rodar no Web:

```bash
Error: Assertion failed:
checkPdfjsLibInstallation()
"pdf.js not added in web/index.html. Run «flutter pub run pdfx:install_web» or add script manually"
```

👉 Execute:

```bash
flutter pub run pdfx:install_web
```

Ou adicione manualmente os seguintes scripts no final do `<body>` de `web/index.html`:

```html
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.13.216/pdf.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.13.216/pdf.worker.min.js"></script>
```

---

## 📷 Capturas de Tela

(Adicione aqui algumas screenshots do app em execução, tanto em mobile quanto web, se desejar.)

---

## 🧪 Testado em

* ✅ Android (API 21+)
* ✅ iOS
* ✅ Chrome / Edge / Firefox (Web)
* ✅ Windows / macOS (Flutter Desktop)

---

## 👨‍💻 Autor

Desenvolvido por **[Seu Nome ou GitHub](https://github.com/guicastle)** como exemplo educacional para a comunidade Flutter.

---
