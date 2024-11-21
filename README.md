# 🐶 Dog App

Este é um aplicativo Flutter simples que consome a [Dog API](https://dog.ceo/dog-api/) para exibir imagens aleatórias de cachorros.

---

## 📋 Funcionalidades

- Exibe uma imagem aleatória de cachorro ao carregar o aplicativo.
- Possibilidade de carregar uma nova imagem clicando em um botão.

---

## 🛠️ Tecnologias Utilizadas

- **Flutter**: Framework principal para desenvolvimento multiplataforma.
- **Dart**: Linguagem de programação usada com Flutter.
- **HTTP**: Biblioteca para realizar requisições à API.

---

## 📂 Estrutura do Projeto

```plaintext
lib/
├── main.dart             # Ponto de entrada da aplicação
├── screens/
│   └── dog_page.dart     # Tela principal com a lógica de exibição
├── services/
│   └── dog_service.dart  # Serviço responsável pela requisição à API
```
---

## 🚀 Como Executar o Projeto

### Pré-requisitos
1. **Flutter** instalado na sua máquina.
   - [Guia de instalação do Flutter](https://docs.flutter.dev/get-started/install).
2. Dispositivo ou emulador configurado para rodar aplicativos Flutter.

### Passos
1. Clone este repositório:
   ```bash
   git clone https://github.com/andrericardodev/dogapp-flutter.git
   ```
2. Navegue até o diretório do projeto:
   ```bash
   cd dogapp-flutter
   ```
3. Instale as dependências do Flutter:
   ```bash
   flutter pub get
   ```
4. Execute o aplicativo:
   ```bash
   flutter run
   ```

---

## 🔧 Possíveis Melhorias

- Implementar testes unitários e de interface.
