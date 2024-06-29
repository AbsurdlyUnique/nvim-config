return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function() 
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      "                 $$             &&$$$$$$$$$$$$$&          $&&",
      "             $&&&$$$&&&&    $$$$$x+::::::::::+xX&&$&  &&&$$$&&&&&",
      "           $&X:;xXXXXX$&&&&$$::::;;;;;;;;;;;;;;;;;X$$&$xXXXXX+;X&&&",
      "         &&$:xXXXXXXXXX&&X;:;X$X+;;;;;;;;;;;;;;;;;;X&XXXXXXXXXXX+x&&",
      "         &&;XXX$&$X&&&&+;;;+&X:X&$$&$x;;;;;;;;;;;;;$XXXX$&&$$$XXXX$&&",
      "        &&$XXX&xxxxx$x;;;xX$&&::::::+x$$$$X+;;;;;;;;+XX&xxxxxx$$XXX&&",
      "        &&$XX&Xxxx&$;;X$$+;:;&$;:::::::::;+$$$+;;;;;;;+$xxxxxxx$XXX&$;",
      "         &&$X$$xx$+;x&$;::::::;xxx:::::::::::;X$$+;;;;;;+$xxxxx$XX$&$;",
      "         &&&$$$&&++$&:::::::::::::::::::::::::::+$$+;;;;;;xXxX$$$$&$+",
      "           &&&&$;x&$:::+$$$X:::::::::::::;$$$$::::;$$+;;;;;+$XX$$&&+",
      "             &&++$$::::;xx;::::::::::::::::+Xx++::::x&x;;;;;;xXX&&",
      "            $&++$&::XXXXXXXXX::::::::::::XXXX$XXXXx:::&X;;;;;;+x$&$",
      "           $$$+x&X:XX$&&$$&$XX:::::::::+XX&&$$&&&$XXx::$x;;;;;;;x$&",
      "           $$++X&XXX&&x:::;&&XX:::::::;X$&X::::&&&$XXX::&+;;;;;;;$&&",
      "          $$$++$&$XX&&&;::&&&&X:::::::xX$&&;::$&&&&XXX::XX;;;;;;;X&&",
      "          $$X++$&$XX&&&&&&&&&&X:::::::+X$&&&&&&&&&&XXX::;&;;;;;;+X&&",
      "          &$X++$x+XXX&&&&&&&&x::X&&x:::xX&&&&&&&&&XXXX:::&+;;;+++X&&",
      "          $$X++$x::XXXX$&&$$X:::X&X:::::;XX$&&$XXXXXx::::&+++++++$&",
      "          &$$x+$X::+xx++xx+:::::::;:x+::::;xXXxxxxx;::::x$++++++X&;",
      "     &&    &$XxX&;:xxxxx;:::::::::::::::::::::xxxxx+::::&X+++++X&x:",
      "   &&$$&&&  +&$+$&x::::::::::::::::::::::::::::;;;::::;&$+++++$&+:;&&&&$",
      " ::;$Xxx$$&$&&&$xx$$;::::::::::::::::::::::::::::::::X&x++++X&&&X&$xxX$xX",
      "$$X+X&$XX$&x;;X&&$xX$$x;::::::::::::::::::::::::::+&&X+++x$$$;;$&$X$$$$X$$$",
      "&$$X$+++x$&;;;X$xX$$XxX&&$+:::::::::::::::::::;x$&Xx++X$$$X$X;;X&$x+++x$X$$",
      "&&$$$+++x&X;;;$+;;;+$$&&X$$$$&$;;;;;;;;;x$$&&&X+++x$$$$x;;;XX;;;&$x+++x$$&&",
      " &&&$XXX$&x;;X$;;;;;;;;+XXXx++X&&$XXX$$&&$++xX$$$$x+;;;;;;;x$;;;$&$XXX$&&$",
      "    &&&&&&X++$$++;;;;;+$x;;++X&:X&$$$$$x+&$$$x+;;;;;;;;;;;;+$$++X&&&&&&",
      "         &&&&&&Xx+++++$$;;;;;x&:X$;;;;$;;&;;;;;;;;;;;;++++++X&X$$$::",
      "              &&&&&$$$$x;;;;;X$:X$;;;;$+;&;;;;;;;;xXXX$$$&&&&$&&x:",
      "                     $$+;;;;;;$$$X;;;;$&&X;;;;;;;;x$$::::",
      "                     &$;;;;;;;$;Xx:::;Xx$x;;;;;;;;;X&&$$&&",
      "                    &&+;;;;;;;::::::::::;+;;;;;;;;;+$$::+$&+::",
      "         &&$$$&& &&&&&&X;;;;::::::::::::::::;;;+X$&&&&+::+&&$$$$$",
      "       $$$x;::$&&&+::X$$&&$X:::::::::::::::+$&&&&$$X:;$&&&+::;XX$x",
      "       &$xxxX:xX$&XXXXXX$&$+xX$$XXx++++xXXxx+$&$$$$$$$$&X::xxxxx$x:",
      "       &$xxxxx:::x&XXXXXXX$&+::::::::::::::;$&$$$$$$$$&+::Xxxxxx$+",
      "        $XxxxxX+::&$$$$$$$$$&&X;:::::::::+$&$$$$$$$$X&&::xxxxxxXx:",
      "         $$xxxx$;+&&$$$$&&&&&&&&&&&$$&&&&&&&&&&&$$$$$&$;;&xxxx$&",
      "       :;;;$$x$$$&&&&$$XXxx+;::::::::::::::;+xX$$&&&&$$Xx$$$$$;:::;;",
      "       ;:;;;;;;;;;::::::::::::::::::::::::::::::::::::;;;;;;;::::::",
    }

    dashboard.section.buttons.val = {
      dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
      dashboard.button("SPC ee", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC ff", "󰱼 > Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("SPC wr", "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
      dashboard.button("q", " > Quit NVIM", "<cmd>qa<CR>"),
    }

    alpha.setup(dashboard.opts)  -- Corrected 'dashbaord' to 'dashboard'
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
