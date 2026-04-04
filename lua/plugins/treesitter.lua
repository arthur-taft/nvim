return {
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = false,
        build = ':TSUpdate',
        dependencies = {
            "cathaysia/tree-sitter-asciidoc",
        },
        opts = {
            ensure_installed = {
                "bash","python","lua","json","yaml","markdown","dockerfile","regex","vim","vimdoc","latex","powershell"
            },
            highlight = { enable = true },
            indent = { enable = true },
        },
        config = function(_, opts)
            vim.filetype.add({
                extension = {
                    adoc = "asciidoc",
                    asciidoc = "asciidoc",
                },
            })

            local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

            parser_config.asciidoc = {
                install_info = {
                    url = "https://github.com/cathaysia/tree-sitter-asciidoc",
                    location = "tree-sitter-asciidoc",
                    files = { "src/parser.c", "src/scanner.c" },
                    branch = "master",
                    queries = "queries/asciidoc/",
                    requires = { "asciidoc_inline" },
                },
            }

            parser_config.asciidoc_inline = {
                install_info = {
                    url = "https://github.com/cathaysia/tree-sitter-asciidoc",
                    location = "tree-sitter-asciidoc_inline",
                    files = { "src/parser.c", "src/scanner.c" },
                    branch = "master",
                    queries = "queries/asciidoc_inline/",
                },
            }

            require("nvim-treesitter.configs").setup(opts)
        end,
    }
}
