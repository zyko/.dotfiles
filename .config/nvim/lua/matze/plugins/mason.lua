return {
        "williamboman/mason.nvim",
        opts = {
                ensure_installed = {
                        "clangd",
                        "clang-format",
                        "codelldb",
                        "ruff",
                }
        },
        config = function()
                require("mason").setup({
                        ui = {
                                icons = {
                                        package_installed = "✓",
                                        package_pending = "➜",
                                        package_uninstalled = "✗",
                                }
                        }
                })
        end
}
