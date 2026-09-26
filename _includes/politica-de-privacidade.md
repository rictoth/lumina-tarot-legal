# Política de Privacidade

**Pílulas de Tarô** — última atualização: 22 de setembro de 2026

## Em uma frase

O conteúdo das suas leituras — a pergunta, as cartas, o texto que você recebe — continua guardado **apenas no seu aparelho**. Duas coisas saem dele: **a sua pergunta e as cartas vão ao serviço de inteligência artificial do Google** para que a interpretação possa ser escrita, e **a sua carteira de créditos fica em um servidor nosso**, porque um saldo que vale dinheiro não pode morar só no aparelho de quem gasta. O restante desta política detalha exatamente o quê, quando e por quê.

**O que mudou nesta versão.** Até agosto de 2026 esta política dizia que nada saía do aparelho a não ser para a IA. Com a introdução dos créditos, isso deixou de ser verdade: passou a existir um servidor nosso, um identificador anônimo seu e um registro das suas compras e dos seus gastos de crédito. A seção 4.2 é nova e descreve isso. Nenhuma informação sobre o **conteúdo** das suas leituras foi para lá.

**Em 22 de setembro de 2026** o texto foi conferido linha a linha contra o aplicativo que está no ar, e corrigido em três pontos: como identificar a sua carteira quando você exerce os seus direitos, em que momento o vínculo com a conta Google é oferecido e a idade mínima, que é a mesma dos Termos de Uso.

## 1. Quem é responsável pelo tratamento

As Pílulas de Tarô são desenvolvidas e mantidas por Ricardo Toth Gonçalves, a quem cabe o papel de controlador dos dados pessoais tratados pelo aplicativo, nos termos da Lei Geral de Proteção de Dados (Lei nº 13.709/2018).

Contato para qualquer assunto relativo a privacidade: tothgoncalvessd@gmail.com

## 2. Não há cadastro, mas há um identificador

Não existe login, senha, e-mail ou perfil nas Pílulas de Tarô. Você não precisa fornecer nenhum dado para usar o aplicativo.

O que existe, desde que os créditos passaram a valer, é um **identificador anônimo gerado automaticamente** na primeira vez que o aplicativo precisa da sua carteira. Ele é um código aleatório criado pelo Firebase Authentication. **Ele não é o seu e-mail, não é o seu nome e não vem de nenhum dado seu** — nós não temos como olhar para esse código e saber quem você é.

O que ele faz é uma coisa só: dizer de quem é o saldo de créditos.

**Você pode, opcionalmente, vincular esse identificador à sua conta Google.** Isso serve para não perder créditos comprados ao trocar de aparelho. A opção fica em Configurações desde o começo, para quem a procurar. O que só aparece **depois da primeira compra** é o **aviso** de que há algo a perder — antes dela não há, e não usamos esse aviso para empurrar o vínculo a quem não tem crédito pago em risco. **Se você vincular, deixamos de tratar você como anônimo**: passamos a saber o endereço de e-mail associado àquela conta. Vincular é escolha sua, e recusar não tira nenhuma funcionalidade além da própria portabilidade.

## 3. Quais dados o aplicativo trata

### 3.1 Dados que você fornece

- **Seu nome ou apelido.** É opcional. Serve apenas para que a leitura seja escrita de forma pessoal. Se você deixar em branco, o aplicativo pede explicitamente ao serviço de IA que trate você como alguém que prefere manter o nome reservado.
- **A pergunta que você escreve** antes de uma tiragem. É opcional em algumas tiragens e necessária em outras, como a de Sim ou Não.

### 3.2 Dados gerados pelo seu uso

- As cartas sorteadas em cada tiragem, com a posição de cada uma e se saíram invertidas.
- O tipo de tiragem realizada: Carta do Dia, Sim ou Não, Três Cartas, Amor, Carreira e Dinheiro ou Cruz Celta.
- O texto da interpretação recebida e, quando houver, as mensagens trocadas no chat sobre aquela leitura.
- A data e a hora de cada leitura e a sua sequência de dias consecutivos.
- As suas preferências: notificações, ritual de embaralhamento, vibração e cartas invertidas.
- **O seu saldo de créditos e o registro de cada compra e de cada gasto.** Diferente de todos os itens acima, este fica no servidor. Ver a seção 4.2.

### 3.3 Dados técnicos coletados automaticamente

- **Firebase Analytics**, do Google: eventos de uso do aplicativo, um identificador de instalação gerado aleatoriamente, modelo do aparelho, versão do sistema operacional, idioma e país aproximado derivado do endereço IP. Serve para entender quais partes do aplicativo são usadas.
- **Firebase Crashlytics**, do Google: em caso de falha, o relatório técnico do erro, incluindo o ponto do código em que ocorreu, o modelo do aparelho e a versão do sistema. Serve para corrigir defeitos.
- **Firebase App Check com Play Integrity**, do Google: uma atestação de que a instalação do aplicativo é legítima, usada para impedir que terceiros consumam o serviço de IA em nosso nome.
- **Firebase Authentication**, do Google: cria e guarda o identificador anônimo descrito na seção 2.
- **Cloud Firestore e Cloud Functions**, do Google, em servidores na região de São Paulo: guardam e movimentam a sua carteira de créditos. Ver a seção 4.2.

Nenhum desses serviços recebe a sua pergunta, o seu nome ou o texto das suas leituras.

## 4. O que sai do seu aparelho

Esta é a seção mais importante desta política. Leia-a com atenção. São dois destinos diferentes, com conteúdos diferentes.

### 4.1 Para o serviço de inteligência artificial do Google

Para gerar a interpretação de uma tiragem, o aplicativo envia ao serviço **Firebase AI Logic, do Google, que utiliza os modelos Gemini**:

- O seu nome, se você tiver preenchido.
- **A pergunta que você escreveu**, na íntegra, exatamente como digitada.
- As cartas sorteadas, com a posição de cada uma e se saíram invertidas.
- O tipo de tiragem e o idioma em que a resposta deve ser escrita.
- Quando você continua a conversa no chat, **as mensagens que você escrever ali**, junto com o contexto da leitura em questão.

**Escreva a sua pergunta com isso em mente.** A pergunta é, quase sempre, a informação mais íntima que passa pelo aplicativo, e ela deixa o seu aparelho. Evite incluir dados que você não queira transmitir a um serviço de terceiro — em especial dados de saúde, dados financeiros, senhas ou informações que identifiquem outras pessoas.

### 4.2 Para o nosso servidor — a carteira de créditos

O servidor da carteira roda no **Cloud Firestore e no Cloud Functions do Google, na região de São Paulo**. Ele recebe, e guarda:

- **O identificador anônimo** descrito na seção 2, ou o e-mail da conta Google, se você tiver vinculado.
- **O seu saldo de créditos**, e cada movimento dele: quanto entrou, quanto saiu, e quando.
- **Um número que identifica a leitura** dentro do seu aparelho, para que o crédito reservado para ela possa ser liquidado depois.
- ⚠️ **O tipo da tiragem** — Carta do Dia, Sim ou Não, Três Cartas, Amor, Carreira e Dinheiro ou Cruz Celta. Ele sai porque o preço em créditos depende dele, e **quem decide o preço tem de ser o servidor**: se o aplicativo informasse quanto custa, bastaria alterá-lo para pagar menos. **Isto significa que sabemos a categoria da sua pergunta, ainda que não saibamos a pergunta.** Se você tirou uma leitura de Amor, isso está no nosso servidor.
- **O comprovante de compra emitido pelo Google Play**, quando você compra créditos, para que possamos conferir com o Google que a compra existiu antes de creditar.

O servidor **não** recebe: a sua pergunta, o seu nome, as cartas sorteadas, o texto da interpretação, as mensagens do chat, o seu histórico de leituras, as suas preferências ou a sua sequência de dias.

O aplicativo **não consegue escrever** diretamente na sua carteira: as regras do servidor recusam qualquer escrita vinda do aparelho. Todo movimento de crédito passa por uma função no servidor, e é por isso que um aparelho modificado não consegue criar créditos para si mesmo.

### 4.3 Transferência internacional

O tratamento pelo Google é regido pelos termos e pela política de privacidade do próprio Google. O serviço de IA roda em servidores fora do Brasil, o que caracteriza transferência internacional de dados, admitida pelo artigo 33 da LGPD. **A carteira de créditos foi colocada deliberadamente em servidores no Brasil** (região `southamerica-east1`, São Paulo).

## 5. O que nunca sai do seu aparelho

- O **histórico completo das suas leituras** — pergunta, cartas, interpretação e chat —, que fica em um banco de dados local no próprio aparelho.
- As suas preferências e configurações.
- A sua sequência de dias consecutivos.

Essas informações não são enviadas a servidor nenhum, não são copiadas para nuvem e não podem ser recuperadas por nós. **Se você desinstalar o aplicativo ou trocar de aparelho, esses dados são perdidos e não há como restaurá-los** — nem por nós, nem por você.

⚠️ **Isto vale para as leituras, e não para os créditos.** Os créditos sobrevivem à desinstalação se você tiver vinculado a conta Google, e se perdem junto com o identificador anônimo se você não tiver. É a razão de o vínculo ser oferecido.

## 6. Notificações

Se você mantiver as notificações ligadas, o aplicativo agenda um lembrete diário da Carta do Dia. O agendamento acontece inteiramente no aparelho, e a notificação não carrega conteúdo de leituras. Você pode desligá-las a qualquer momento em Configurações, ou nas configurações do sistema.

## 7. Créditos, assinatura e pagamentos

A compra é processada integralmente pelo **Google Play**, segundo os termos do Google. O aplicativo não vê, não recebe e não armazena o número do seu cartão, os seus dados bancários ou o seu endereço de cobrança.

O que acontece depois da compra: o Google Play emite um **comprovante**, o aplicativo envia esse comprovante ao nosso servidor, e o servidor **confere com o Google** que aquela compra existe, é sua e não foi usada antes — só então os créditos entram na sua carteira. Esse é o motivo de o comprovante sair do aparelho.

Em relação à assinatura, o aplicativo consulta ao Google Play se existe uma assinatura ativa associada à conta Google do aparelho.

As regras comerciais dos créditos — validade, teto de gasto, o que consome e o que não consome — estão nos **Termos de Uso**, seção 7, e não aqui.

## 8. Com quem os dados são compartilhados

Não vendemos, alugamos nem cedemos dados pessoais. Os únicos terceiros envolvidos são serviços do Google, listados acima, cada um com finalidade determinada: geração da interpretação, guarda da carteira, verificação de compra, medição de uso, relatório de falhas, atestação de integridade e processamento de pagamento.

Não há redes de publicidade no aplicativo, e nenhum identificador de publicidade é coletado.

## 9. Base legal do tratamento

- **Execução de contrato**, artigo 7º, inciso V, da LGPD: o envio da pergunta e das cartas ao serviço de IA, sem o qual a interpretação não pode existir; e a guarda da carteira de créditos, sem a qual não há como entregar o que foi comprado.
- **Cumprimento de obrigação legal**, artigo 7º, inciso II: a guarda do registro de compras, exigida pela legislação consumerista e fiscal.
- **Consentimento**, artigo 7º, inciso I: as notificações, o preenchimento opcional do seu nome e o vínculo com a conta Google.
- **Legítimo interesse**, artigo 7º, inciso IX: as métricas de uso e os relatórios de falha, tratados de forma agregada e sem identificar você.

## 10. Por quanto tempo os dados ficam guardados

O **histórico local** permanece no aparelho até que você o apague, em **Configurações → Dados → Apagar Todo o Histórico**, ou desinstale o aplicativo.

O **registro da carteira** — saldo e movimentos — permanece enquanto a sua carteira existir, e o registro das **compras** é mantido por cinco anos a contar de cada compra, prazo do artigo 27 do Código de Defesa do Consumidor. Esse é o único dado que não apagamos a pedido, e a razão é que ele é a prova de que você comprou.

Os dados enviados ao serviço de IA do Google seguem os prazos de retenção das políticas do Google.

## 11. Os seus direitos

A LGPD garante a você, no artigo 18, o direito de obter confirmação da existência de tratamento, acesso aos dados, correção de dados incompletos ou desatualizados, anonimização ou eliminação de dados desnecessários, portabilidade, informação sobre compartilhamento e revogação do consentimento.

Na prática, nas Pílulas de Tarô, isso se divide em dois:

- **O histórico das suas leituras está nas suas mãos**, dentro do aplicativo, sem precisar pedir a ninguém. Acesso e eliminação são imediatos.
- **A carteira de créditos está conosco.** Para obter cópia dos seus movimentos de crédito, corrigi-los ou pedir a eliminação da carteira, escreva para tothgoncalvessd@gmail.com. O prazo de resposta é de até 15 dias. ⚠️ **Precisamos conseguir dizer qual carteira é a sua**, e como fazer isso depende da sua situação: se você **vinculou a conta Google**, escreva do próprio endereço vinculado, que o aplicativo mostra em Configurações; se você **comprou créditos sem vincular**, informe o **ID do pedido do Google Play**, que está no e-mail de confirmação da compra. ⛔ **Se você nunca vinculou a conta e nunca comprou, a sua carteira é identificada apenas por um código anônimo que vive no aparelho, e não temos como ligá-la a você a distância** — nesse caso ela contém somente créditos gratuitos, e apagar os dados do aplicativo torna essa carteira inalcançável para todos, inclusive para nós. ⚠️ **Eliminar a carteira apaga os créditos não usados, inclusive os comprados, e isso não tem volta.** Vamos dizer isso a você de novo antes de fazer.

## 12. Crianças e adolescentes

As Pílulas de Tarô não são direcionadas a crianças nem a adolescentes. Os Termos de Uso estabelecem **18 anos** como idade mínima de uso, e o aplicativo não coleta conscientemente dados de quem tenha menos do que isso. O conteúdo é de entretenimento e pressupõe leitor com maturidade para interpretá-lo como tal.

## 13. Segurança

As comunicações com os serviços do Google acontecem por conexão cifrada. Os dados locais ficam na área privada do aplicativo, protegida pelo sistema Android e inacessível a outros aplicativos em aparelhos que não tenham sido modificados.

A carteira de créditos tem duas proteções que vale nomear: **o aparelho não escreve nela** — as regras do servidor recusam qualquer escrita vinda do aplicativo, e todo movimento passa por uma função no servidor —, e **cada requisição é atestada pelo Play Integrity**, que verifica que ela vem de uma instalação legítima do aplicativo.

Nenhuma medida de segurança é absoluta, e não podemos garantir a segurança de um aparelho comprometido.

## 14. Mudanças nesta política

Alterações relevantes serão publicadas nesta mesma página, com nova data de atualização, e sinalizadas dentro do aplicativo quando afetarem o que sai do seu aparelho. A mudança de setembro de 2026, que introduziu a seção 4.2, é exatamente desse tipo.

## 15. Contato

tothgoncalvessd@gmail.com
