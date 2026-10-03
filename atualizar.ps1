# Copia os documentos legais do repositorio do aplicativo para _includes/, byte a byte.
# Uso: .\atualizar.ps1 [-Origem <caminho do repo do app>]
#
# O pt e o texto oficial e e obrigatorio. As traducoes (.en.md, .es.md) sao copiadas quando existem
# na origem: ate o merge do ingles e espanhol na main do app, elas so existem na branch de idiomas,
# e entao a origem e a pasta dela:  .\atualizar.ps1 -Origem 'C:\Meus Projetos\Taro-idiomas'
param(
    [string]$Origem = (Join-Path (Split-Path $PSScriptRoot -Parent) 'Taro')
)

$ErrorActionPreference = 'Stop'

$pastaLegal = Join-Path $Origem 'app\src\main\assets\legal'
if (-not (Test-Path $pastaLegal)) {
    throw "Nao encontrei $pastaLegal. Passe o caminho do repo do app em -Origem."
}

$destino = Join-Path $PSScriptRoot '_includes'
$mudou = $false

$obrigatorios = @('politica-de-privacidade.md', 'termos-de-uso.md')
$traducoes = @('politica-de-privacidade.en.md', 'termos-de-uso.en.md',
               'politica-de-privacidade.es.md', 'termos-de-uso.es.md')

foreach ($nome in $obrigatorios + $traducoes) {
    $de = Join-Path $pastaLegal $nome
    $para = Join-Path $destino $nome
    if (-not (Test-Path $de)) {
        if ($obrigatorios -contains $nome) { throw "Falta $de" }
        "- $nome nao existe na origem (traducao ainda nao mesclada?)"
        continue
    }
    $hashDe = (Get-FileHash $de -Algorithm SHA256).Hash
    $hashPara = if (Test-Path $para) { (Get-FileHash $para -Algorithm SHA256).Hash } else { '' }

    if ($hashDe -eq $hashPara) {
        "= $nome (sem mudanca)"
    } else {
        Copy-Item $de $para -Force
        "+ $nome atualizado"
        $mudou = $true
    }
}

if ($mudou) {
    ""
    "Revise com 'git diff' e publique com:"
    "  git add -A"
    "  git commit -m 'docs: atualiza os documentos legais a partir do app'"
    "  git push"
} else {
    ""
    "Nada a publicar: a web ja esta igual ao app."
}
