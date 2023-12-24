# [![Typing SVG](https://readme-typing-svg.demolab.com?font=Pixelify+Sans&weight=500&size=42&pause=1000&color=7F03BB&width=435&lines=Guys+on+Work;Mobile+Frontend)](https://git.io/typing-svg)

<p align="center">
  <a href="https://github.com/viniAOliver/Guys-On-Work">
    <img src="assets/images/readme_images/repository_banner.png" alt="Guys On Work Banner">
  </a>
</p>

<p align="center">
  <img alt="Build Status" src="https://travis-ci.org/viniAOliver/Guys-On-Work.svg?branch=master">
  <img alt="Versão" src="https://img.shields.io/badge/version-1.0.0-blue.svg">
  <img alt="Licença" src="https://img.shields.io/badge/license-MIT-green.svg">
</p>

<text>
Bem-vindo ao Guys On Work, um aplicativo Flutter projetado para facilitar a organização de funções em equipe em um projeto.
</text>

## Sumário

- [Introdução](#introdução)
- [Recursos](#recursos)
- [Primeiros Passos](#primeiros-passos)
  - [Pré-requisitos](#pré-requisitos)
  - [Instalação](#instalação)
- [Uso](#uso)
- [Contribuição](#contribuição)
- [Licença](#licença)

## Introdução

<text>
Guys On Work é um aplicativo Flutter dedicado a aprimorar a colaboração e a gestão de tarefas dentro de equipes. Seja trabalhando em um projeto de software, planejando um evento ou gerenciando qualquer outro esforço colaborativo, este aplicativo oferece as ferramentas necessárias para otimizar a comunicação, a atribuição de tarefas e o acompanhamento do progresso.
</text>

## Recursos

- **Gestão de Projetos**: Crie e gerencie projetos com facilidade.
- **Atribuição de Tarefas**: Atribua tarefas a membros da equipe com facilidade.
- **Hub de Comunicação**: Sistema integrado de bate-papo e notificações para comunicação eficaz.
- **Acompanhamento de Progresso**: Monitore o progresso de tarefas e projetos em um piscar de olhos.
- **Interface Amigável**: Design intuitivo e motivador para uma excelente experiência de usuário.

## Primeiros Passos

### Pré-requisitos

Antes de começar, certifique-se de ter o seguinte instalado:

- [Flutter](https://flutter.dev/docs/get-started/install)
- [Dart](https://dart.dev/get-dart)
- [Android Studio](https://developer.android.com/studio)

### Instalação

1. Clone o repositório:

   ```bash
   git clone https://github.com/viniAOliver/Guys-On-Work.git guys-on-work
   ```

   ou, caso tenha o GitHub CLI

   ```bash
   gh repo clone viniAOliver/Guys-On-Work guys-on-work
   ```

2. Navegue até o diretório do projeto:

   ```bash
   cd guys-on-work
   ```

3. Instale as dependências:

   ```bash
   flutter pub get
   ```

## Uso

1. Acesse o aplicativo em seu emulador ou dispositivo físico.

- Garanta que o Android Studio foi [instalado corretamente](#instalação).
- Inicie o Andriod Studio.
- Vá em _Settings_ > _Languages & Frameworks_ > _Android SDK_.
- Instale em _SDK Platforms_:

  - Android API 34.

- Instale em _SDK Tools_:

  - Android SDK Build-Tools 34;
  - Android SDK Command-line Tools (latest);
  - Android Emulator;
  - Android SDK Platform-Tools;
  - Google USB Driver.

  **Caso use o emulador:**

  - Vá em _Tools_ > _Device Manager_ > na aba _Virtual_, clique em _Create Device_.
  - Escolha o dispositivo desejado e clique em _next_.
  - Escolha a imagem Android desejada e clique em _next_.
  - Digite o nome do dispositivo virtual e clique em _finish_.
  - Após a criação, aparecerá o seu dispositivo em uma lista. Clique no ícone de play para rodar o emulador.

  **Caso use dispositivo físico:**

  - No seu dispositivo, ative o modo desenvolvedor.
  - O seus dispositivos estando na mesma rede, ative depuração sem fio (pode haver nomes diferentes para diferentes dispositivos) e confira o IP e porta apresentados.
  - No seu terminal, use o comando:

  ```bash
  adb connect [ip_do_dispositivo]:[porta_do_dispositivo]
  ```

2. Inicie o aplicativo:

   ```bash
   flutter run
   ```

   ou use o atalho _Ctrl_ + _F5_

## Contribuição

Aceitamos contribuições da comunidade. Se você deseja contribuir, siga nossas [Diretrizes de Contribuição](https://github.com/viniAOliver/Guys-On-Work/blob/master/CODE_OF_CONDUCT.md).

## Licença

Este projeto está licenciado sob a [Licença MIT](https://opensource.org/license/mit/).
