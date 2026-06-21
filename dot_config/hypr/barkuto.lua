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

hl.bind("SUPER + SUPER_L", hl.dsp.exec_cmd("dms ipc call spotlight toggle"))
hl.bind("SUPER + SHIFT + F23", hl.dsp.exec_cmd("kitty"))
