local ls = require("luasnip")

ls.add_snippets("go", {
    ls.snippet("err", {
        ls.text_node({
            "if err == nil {",
            "   ",
            "}"
        })
    }),
})
