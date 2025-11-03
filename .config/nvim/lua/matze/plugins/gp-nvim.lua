return
{
        "robitx/gp.nvim",
        config = function()
                require("gp").setup({
                        chat_shortcut_new = { modes = { "n", "i", "v", "x" }, shortcut = "<C-g>c" },
                        providers = {
                                ollama = {
                                        endpoint = os.getenv("OLLAMA_ENDPOINT"),
                                },

                        },
                        agents = {
                                {
                                        provider = "ollama",
                                        name = "Gemma",
                                        chat = true,
                                        command = false,
                                        -- string with model name or table with model name and parameters
                                        model = {
                                                model = "gemma3:27b",
                                                -- temperature = 0.6,
                                                -- top_p = 1,
                                                -- min_p = 0.05,
                                        },
                                        -- system prompt (use this to specify the persona/role of the AI)
                                        system_prompt = "You are a general AI assistant.",
                                },
                        }
                })

                -- or setup with your own config (see Install > Configuration in Readme)
                -- require("gp").setup(config)

                -- shortcuts might be setup here (see Usage > Shortcuts in Readme)
        end,
}
