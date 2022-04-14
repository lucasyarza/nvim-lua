local lsp = {
  DiagnosticError = { fg = C.red },
  DiagnosticWarn = { fg = C.orange },
  DiagnosticInfo = { fg = C.white },
  DiagnosticHint = { fg = C.yellow },
  DiagnosticUnderlineError = { style = 'undercurl', sp = C.red },
  DiagnosticUnderlineWarn = { style = 'undercurl', sp = C.red },
  DiagnosticUnderlineInfo = { style = 'undercurl', sp = C.red },
  DiagnosticUnderlineHint = { style = 'undercurl', sp = C.red },
  LspReferenceText = { fg = C.none, bg = C.grey },
  LspReferenceRead = { fg = C.none, bg = C.grey },
  LspReferenceWrite = { fg = C.none, bg = C.grey },
  LspSagaDiagnosticBorder = { fg = C.white },
  LspSagaSignatureHelpBorder = { fg = C.white },
  LspSagaLspFinderBorder = { fg = C.white },
  LspSagaCodeActionBorder = { fg = C.white },
  LspSagaDefPreviewBorder = { fg = C.white },
  LspSagaHoverBorder = { fg = C.white },
  LspSagaRenameBorder = { fg = C.white },
  LspSagaRenamePromptPrefix = { fg = C.white },
  LspFloatWinBorder = { fg = C.white },
  LspSagaDiagnosticTruncateLine = { fg = C.white },
  LspSagaShTruncateLine = { fg = C.white },
  LspSagaDocTruncateLine = { fg = C.white },
  LspSagaCodeActionTruncateLine = { fg = C.white },
  ProviderTruncateLine = { fg = C.white },
  DiagnosticTruncateLine = { fg = C.white, style = 'bold' },
  LspSagaCodeActionTitle = { fg = C.yellow, style = 'bold' },
  LspSagaCodeActionContent = { fg = C.green, style = 'bold' },
  LspFloatWinNormal = { fg = C.fg, bg = C.black },
  LspDiagnosticsFloatingError = { fg = C.red },
  LspDiagnosticsFloatingWarn = { fg = C.orange },
  LspDiagnosticsFloatingInfor = { fg = C.white },
  LspDiagnosticsFloatingHint = { fg = C.yellow },
  LspSagaDiagnosticHeader = { fg = C.yellow },
  LspSagaBorderTitle = { fg = C.yellow, style = 'bold' },
  DiagnosticInformation = { fg = C.yellow, style = 'bold' },
}

return lsp