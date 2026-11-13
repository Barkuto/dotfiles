hl.config({
  xwayland = {
    force_zero_scaling = true
  }
})

hl.window_rule({
  name = "betterbird workspace 1",
  match = {
    class = "^(.*betterbird.*)$",
  },
  workspace = "1 silent"
})

hl.window_rule({
  name = "firefox workspace 2",
  match = {
    class = "^(firefox)$",
  },
  workspace = "2"
})

hl.window_rule({
  name = "vscode workspace 3",
  match = {
    class = "^(code)$",
  },
  workspace = "3"
})


hl.window_rule({
  name = "zed workspace 3",
  match = {
    class = "^(.*zed.*)$",
  },
  workspace = "3"
})


hl.bind("SUPER_L", hl.dsp.exec_cmd("dms ipc call spotlight toggle"), {release = true})
hl.bind("SUPER + SHIFT + F23", hl.dsp.exec_cmd("kitty"))
hl.bind("Control_R", hl.dsp.exec_cmd("kitty"))

hl.workspace_rule{ workspace = "2", monitor = "DP-9" }
hl.workspace_rule{ workspace = "1", monitor = "DP-10" }
hl.workspace_rule{ workspace = "3", monitor = "DP-8" }
