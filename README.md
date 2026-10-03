# Documentos legais do Pílulas de Tarô

Repositório **público e separado** que hospeda, via GitHub Pages, a Política de Privacidade e os
Termos de Uso do aplicativo **Pílulas de Tarô** (`com.tgsoftware.auratarot`).

📌 O nome do repositório (`lumina-tarot-legal`) é o do app antigo e **fica assim de propósito**: ele
está dentro das URLs abaixo, que são citadas no Play Console e no formulário de Segurança dos
dados. Renomeá-lo trocaria as URLs.

Ele existe separado do repositório do aplicativo por um motivo só: o GitHub Pages serve a pasta
inteira que você apontar para ele. Apontá-lo para a `docs/` do repositório do app publicaria na
web aberta o `PENDENCIAS.md`, os handoffs e o inventário de fraquezas do aplicativo. Aqui só há
o que pode ser público.

## URLs

Com o Pages ligado no branch `main`, pasta raiz:

- Política de Privacidade — `https://rictoth.github.io/lumina-tarot-legal/privacidade.html`
- Termos de Uso — `https://rictoth.github.io/lumina-tarot-legal/termos.html`

A primeira é a que vai no campo **Política de Privacidade** da ficha do Play Console.

Traduções (desde 03/10/2026), por conveniência — o pt é o texto oficial e prevalece, e a URL do
Play Console continua sendo a pt:

- inglês — `privacy.html` e `terms.html`
- espanhol — `privacidad.html` e `terminos.html`

Cada página traz no topo os links para as outras versões do mesmo documento (campos `doc`, `ordem`
e `nome_do_idioma` no cabeçalho), e o layout troca rodapé e "voltar" pelo `lang` da página.

## Como o conteúdo chega aqui

Os textos **não são escritos neste repositório**. Eles moram em
`app/src/main/assets/legal/` no repositório do aplicativo, e são copiados para `_includes/`
byte a byte — inclusive o `# H1` de abertura, que aqui vira o título da página e que o app
remove na exibição para não repetir o título da barra.

As páginas `.html` são só invólucro: cada uma inclui o `.md` correspondente e o converte. Assim
existe uma fonte só, e os documentos não divergem entre o app e a web.

Para atualizar depois de mexer nos textos do app (enquanto o inglês e o espanhol não estiverem na
`main` do app, passe `-Origem "C:\Meus Projetos\Taro-idiomas"`):

```powershell
.\atualizar.ps1
git commit -am "docs: atualiza os documentos legais a partir do app"
git push
```

O Pages republica em cerca de um minuto.

## O que não fazer

- **Não editar os `.md` de `_includes/` na mão.** A edição valeria só na web, e o app passaria a
  exibir outro texto. Edite no repositório do app e rode o `atualizar.ps1`.
- **Não acrescentar arquivos que não sejam públicos.** Todo arquivo aqui vira URL.

Todos os direitos reservados. Os textos não são licenciados para reuso.
