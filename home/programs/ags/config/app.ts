import { App } from "astal/gtk3"
import style from "./style.scss"
import Bar from "./widget/bar/Bar"
import Notif from "./widget/notification/notif"
import OSD from "./widget/osd/osd"
import osd from "./osd"
App.start({
  css: style,
  main: () => App.get_monitors().map(Bar)
})
