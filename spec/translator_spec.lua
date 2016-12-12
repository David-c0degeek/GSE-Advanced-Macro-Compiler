describe('API StringFunctions', function()
  setup (function()
    require("../GSE/Localization/enUS")
    require("../GSE/Localization/enUSHash")
    require("../GSE/Localization/enUSShadow")
    require("../spec/mockGSE")
    require("../GSE/API/Statics")
    require("../GSE/API/InitialOptions")
    require("../GSE/API/StringFunctions")
    require("../GSE/API/translator")
  end)

  it("Passes through non spell commands ", function()
    assert.are.equal("/targetenemy", GSE.TranslateString("/targetenemy", "enUS", "enUS"))
  end)

end)
