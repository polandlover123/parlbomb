import { App } from "astal/gtk3"
import style from "./launcher-style.scss"
import OSD from "./widget/osd/osd"

App.start({
  instanceName: "osd",
  css: style,
  main: () => App.get_monitors().map(OSD)
})
