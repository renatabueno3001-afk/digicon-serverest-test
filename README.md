# digicon-serverest-test

Exemplo de **read-me**.
## Exercício 10 — fluxo integrado (M2)

O cenário `tests/web/m2/fluxo_integrado.robot` realiza cadastro com dados Faker, logout e login e adiciona um produto à lista de compras. O código usa BDD, Page Objects, esperas explícitas e a tag `E2E`.

Para instalar e executar na raiz do repositório:

```powershell
pip install -r requirements.txt
robot -d results .\tests\web\m2\fluxo_integrado.robot
```

A configuração da URL e do navegador é lida de `resources/configs/qa.resource`. Cada execução cria um usuário novo no ambiente ServeRest.
