val worlds = worldList.toMutableList()
val worldToChange = worlds.find { it.id == 255 }
if (worldToChange != null) {
    val modifiedWorld = worldToChange.copy(localHostAddress = LocalHostAddress("192.168.0.100"))
    worlds[worlds.indexOf(worldToChange)] = modifiedWorld
}
val newWorldList = WorldList(worlds)
