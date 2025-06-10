import { App } from "astal/gtk3"
import { Variable, GLib, bind } from "astal"
import { Astal, Gtk, Gdk } from "astal/gtk3"
import Workspaces from "./Workspaces"
import BatteryLevel from "./Battery"
import Clock from "./Clock"
import Wifi from "./Wifi"

export default function Bar(monitor: Gdk.Monitor) {
  const { TOP, LEFT, RIGHT } = Astal.WindowAnchor

  return <window
    name="bar"
    className="Bar"
    application={App}
    gdkmonitor={monitor}
    exclusivity={Astal.Exclusivity.EXCLUSIVE}
    anchor={TOP | LEFT | RIGHT}>
    <centerbox>
      <box
        heightRequest={25}
        hexpand halign={Gtk.Align.START}>
        <Workspaces />
      </box>
      <box hexpand halign={Gtk.Align.CENTER} className="Center">
        <Clock />
      </box>
      <box hexpand halign={Gtk.Align.END} className="Right">
        <Wifi />

        <BatteryLevel />


      </box>
    </centerbox>
  </window>
}

