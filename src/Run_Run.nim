import nimraylib_now

func DrawGame(PlayerPos: Vector2, PlayerSize: Vector2) =
    beginDrawing()
    clearBackground(White)

    drawRectangleV(PlayerPos, PlayerSize, Black)

    endDrawing()

proc GameLogic(Player: var Vector2, PlayerSize: Vector2) =
  let SPEED: float32 = 250
  let delta = getFrameTime()

  if isKeyDown(Space):
    Player.y -= SPEED * delta
  if isKeyReleased(Space):
    if Player.y > 200.0:
      Player.y += SPEED * delta


  DrawGame(Player, PlayerSize)
    

func main() =
  initWindow(800, 400, "Run! Run!")

  var Player: Vector2 = (400.0, 200.0)
  var PlayerSize: Vector2 = (50.0, 80.0)

  while not windowShouldClose():
    GameLogic(Player, PlayerSize)

when isMainModule:
  main()
