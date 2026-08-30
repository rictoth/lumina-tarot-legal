# Copia os documentos legais do repositorio do aplicativo para _includes/, byte a byte.
# Uso: .\atualizar.ps1 [-Origem <caminho do repo do app>]
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

foreach ($nome in @('politica-de-privacidade.md', 'termos-de-uso.md')) {
    $de = Join-Path $pastaLegal $nome
    $para = Join-Path $destino $nome
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
    "  git commit -am 'docs: atualiza os documentos legais a partir do app'"
    "  git push"
} else {
    ""
    "Nada a publicar: a web ja esta igual ao app."
}
