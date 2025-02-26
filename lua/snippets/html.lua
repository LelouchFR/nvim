local ls = require("luasnip")

-- Snippets

ls.add_snippets("html", {
    ls.snippet("html5", {
        ls.text_node({
            "<!DOCTYPE html>",
            "<html lang=\"en\">",
            "   <head>",
            "       <meta charset=\"UTF-8\">",
            "       <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">",
            "       <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">",
            "       <title>Document</title>",
            "   </head>",
            "   <body>",
            "       ",
            "   </body>",
            "</html>",
        }),
    }),
})
