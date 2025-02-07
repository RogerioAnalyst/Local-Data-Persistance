# Local-Data-Persistance
User Defaults, Core Data and Realm

# Persistência de Dados no iOS: User Defaults, Core Data e Realm

Este documento fornece uma visão geral das três abordagens mais comuns para persistir dados no iOS: User Defaults, Core Data e Realm.

# 1. User Defaults

User Defaults é uma maneira simples de armazenar pequenas quantidades de dados persistentes, como preferências de usuário.

Uso -
Ideal para salvar configurações simples, como preferências, estados e flags. Não é recomendado para grandes volumes de dados ou dados sensíveis.

![Screenshot 2025-02-06 at 15 41 24](https://github.com/user-attachments/assets/20a91239-461f-4b2c-89ec-b4a9169b619d)

# 2. Core Data

Core Data é uma solução poderosa da Apple para gerenciar objetos e suas relações. Utiliza um banco de dados SQLite por baixo dos panos, oferecendo um sistema robusto para persistência de dados.

Uso -
Ideal para armazenar grandes volumes de dados estruturados, gerenciar relacionamentos complexos e suporte a consultas avançadas.

![Screenshot 2025-02-06 at 15 42 50](https://github.com/user-attachments/assets/d48b6e61-c879-43df-962b-fd301166287f)


## 3. Realm

Realm é uma alternativa moderna ao Core Data, que oferece facilidade de uso e performance rápida. É ótimo para gerenciar dados complexos com foco em simplicidade e velocidade.

Uso:
Ideal para projetos onde a simplicidade e a performance são essenciais. Suporta sincronização de dados e é fácil de configurar.

![Screenshot 2025-02-06 at 15 43 18](https://github.com/user-attachments/assets/a9f96316-3d0e-4a19-9ddb-2ff93ffd9e5e)

Conclusão: 

User Defaults: Simples e fácil para dados leves.

Core Data: Excelente para dados complexos e relacionamentos.

Realm: Focado em simplicidade e performance.

Use cada ferramenta de acordo com a complexidade e o tamanho dos dados que precisa gerenciar no seu app.
