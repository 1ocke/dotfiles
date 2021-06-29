return function()
  require "bufferline".setup(
    {
      options = {
        view = "multiwindow",
        numbers = "none",
        show_buffer_close_icons = false,
        show_close_icon = false,
        modified_icon = "🖍",
        max_name_length = 35,
        tab_size = 25,
        max_prefix_length = 0,
        separator_style = {"", ""},
        custom_filter = function(buf_number)
          if vim.fn.bufname(buf_number) == "" then
            return false
          end
          return true
        end
      },
      highlights = {
        fill = {
          guibg = "none"
        },
        background = {
          guibg = "none"
        },
        tab = {
          guibg = "none"
        },
        duplicate = {
          guibg = "none"
        },
        buffer_selected = {
          guifg = "#e5c463"
        },
        indicator_selected = {
          guibg = "none",
          guifg = {
            attribute = "bg",
            highlight = "Normal"
          }
        },
        modified = {
          guibg = "none"
        }
      }
    }
  )

  map("n", "<A-n>", ":BufferLineCycleNext<cr>")
  map("n", "<A-p>", ":BufferLineCyclePrev<cr>")
  map("n", "<A-s>", ":BufferLinePick<cr>")
end
