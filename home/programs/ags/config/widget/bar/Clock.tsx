import { Variable } from "astal"

export default function Clock() {
  return <button onClicked={self => print(self, "pressed")} className="clock">
    < box orientation={1} className="clockbox" >
      <Time />
      <Date />
    </box >

  </button >
}
function Date() {
  const date = Variable("").poll(1000, "date +'%A %B %-e, %Y'")
  return <label
    className="date"
    label={date()}
  />
}
function Time() {
  const time = Variable("").poll(1000, "date +'%I:%M %p'")
  return <label
    className="time"
    label={time()}
  />
}


