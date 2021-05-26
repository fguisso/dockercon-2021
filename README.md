# Segurança de imagens e containers direto na pipeline
Palestra sobre desenvolvimento seguro de imagens e containers para a DockerCon 2021 sala Brasil.

## Índice

## Ferramentas de segurança

Existem várias ferramentas de segurança e seus objetivos podem ser diferentes, seja especificas para linguagens ou frameworks ou seja especificas para quem esta utilizando, desenvolvedores, analistas de segurança, auditores de segurança e por ai vai.

Lembrando que estas ferramentas não excluem as ações manuais de cada um destes atores, algumas vulnerabilidades podem ser encontradas com ferramentas, enquanto outras necessitam de ações manuais, secure code review dos desenvolvedores e pentestes dos analistas de segurança e times de red team com mais contexto da aplicação e experiencia em segurança. Segue um grafico do OWASP Code Review Guide que mostra a importancia de cada tipo de analise:
<img width="785" alt="Screen Shot 2021-05-26 at 17 22 33" src="https://user-images.githubusercontent.com/5755568/119726012-fefe5100-be46-11eb-8ba5-3a2f513b046a.png">

## SCA

Software Composition Analysis, em português, analise de composição de software, provavelmente hoje você já trabalha com um sem saber!
Este tipo de ferramenta faz uma analise em cima das bibliotecas e frameworks que são utilizados para construir um software, utilizando bancos de dados de vulnerabilidades como CVEs do MITRE e NVD, esta ferramentas conferem nestes bancos se as versões utilizadas das bibliotecas possuem vulnerabilidades conhecidas, que no caso é uma das vulnerabilidades que mais ocorrem na internet, segundo o ranking [OWASP Top 10](https://owasp.org/www-project-top-ten/2017/), que você deveria conhecer.

Hoje alguns provedores de serviços na web já utilizam esta ferramenta como padrão de projetos, como o Github, que verifica todo o seu projeto e traz alertas com o DependaBot sobre vulnerabilidades conhecidas que seu projeto esteja utilizando e também, muito conhecido o NPM, que verifica o `package.json` e traz informações sempre que você roda o `npm` deixando uma opção de resolver as vulnerabilidades automaticamente com o `npm audit fix`.

## SAST

Static Application Security Testing, em portugês, teste de segurança em aplicações estaticas, o que quer dizer que as ferramentas analisam a sua aplicação para, que ainda não esta rodando, em resumo, olhando apenas o código de seus projetos. Estas ferramentas possuem padrões de código e conseguem identificar se o desenvolvedor escreveu algum código que possa ter vulnerabilidades quando estiver rodando, podemos comparar ele com as ferramentas de lint, porém no lugar de analisar o padrão de escrita do código, ele procura padrões que vão trazer problemas de segurança.

Existem várias ferramentas SAST, porque cada linguagem tem vulnerabilidades que podem acontecer mais do que outras, por exemplo em C podem ocorrer mais vulnerabilidades relacionadas a alocação de memoria do que projetos em Go, enquanto o projetos em Go são mais sucetiveis a Race Condition.
A exemplos destas ferramentas temos GoSec(Golang), Bandit(Python) e Security Guard(C#). Segue um link com uma lista da OWASP com varios outras ferramentas: [Lista de ferramentas SAST](https://owasp.org/www-community/Source_Code_Analysis_Tools)

Neste lista você também encontrara ferramentas como Horusec e Husky, que são automatizadores de ferramentas SAST, que rodam mais de um tipo de ferramentaa para projetos que tem mais de uma linguagem diferentes.

## DAST

Dinamic Application Security Testing, em portugês, teste de segurança em aplicações dinamicas, basicamente só acontecem quando a aplicação já esta em funcionamento, visto que é mais facil testar algumas vulnerabilidades quando a aplicação esta realizando as operações. Muito usadas em pentest e por analistas de segurança, estas ferramentas facilitam alguns testes e ataques automatizados para provar que a aplicação é insegura. Lista da OWASP de [ferramentas DASTs](https://owasp.org/www-community/Vulnerability_Scanning_Tools).

Estas ferramentas ainda não são muito utilizadas diretamente no pipeline devido sua complexidade e tempo de execução, mas recomendo conhecer e ir aplicando aos poucos na pipeline para fazer valer o slogan DevSecOps, onde os Devs podem aprender um pouco mais sobre as ferramentas utilizadas pelos analistas de segurança.

Ferramentas mais conhecidas Butp Suite, OWASP ZAP e Nuclei.

## Show me the code

...
