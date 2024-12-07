return {
    "williamboman/mason.nvim",
    opts = {
        ensure_installed = {
            "clangd",
            "clang-format",
            "codelldb",
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


-- --
-- -- mason.lua
-- return {
--     "williamboman/mason.nvim",
--     config = function()
--         require("mason").setup({
--             ui = {
--                 icons = {
--                     package_installed = "✓",
--                     package_pending = "➜",
--                     package_uninstalled = "✗",
--                 }
--             }
--         })

--         -- Automatically ensure specific tools are installed
--         require("mason-registry").on_ready(function()
--             local ensure_installed = { "clang-format" }
--             local mr = require("mason-registry")

--             for _, tool in ipairs(ensure_installed) do
--                 local package = mr.get_package(tool)
--                 if not package:is_installed() then
--                     package:install()
--                 end
--             end
--         end)
--     end
-- }
