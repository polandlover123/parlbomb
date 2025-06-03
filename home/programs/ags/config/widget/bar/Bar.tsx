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
    className="Bar"
    gdkmonitor={monitor}
    exclusivity={Astal.Exclusivity.EXCLUSIVE}
    anchor={TOP | LEFT | RIGHT}>
    <centerbox>
      <box
        heightRequest={30}
        hexpand halign={Gtk.Align.START}>
        <Workspaces />
        <box hexpand halign={Gtk.Align.END} >
          <Wifi />
        </box>
      </box>
      <box>
        <Clock />
      </box>
      <box hexpand halign={Gtk.Align.END} className="Right">
        <BatteryLevel />

      </box>
    </centerbox>
  </window>
}

