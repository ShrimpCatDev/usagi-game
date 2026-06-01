return {
  version = "1.10",
  luaversion = "5.1",
  tiledversion = "1.11.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 18,
  height = 16,
  tilewidth = 8,
  tileheight = 8,
  nextlayerid = 6,
  nextobjectid = 8,
  properties = {},
  tilesets = {
    {
      name = "sprites",
      firstgid = 1,
      class = "",
      tilewidth = 8,
      tileheight = 8,
      spacing = 0,
      margin = 0,
      columns = 32,
      image = "../sprites.png",
      imagewidth = 256,
      imageheight = 256,
      objectalignment = "unspecified",
      tilerendersize = "tile",
      fillmode = "stretch",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 8,
        height = 8
      },
      properties = {},
      wangsets = {},
      tilecount = 1024,
      tiles = {
        {
          id = 1,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 2,
          properties = {
            ["collidable"] = true
          }
        }
      }
    }
  },
  layers = {
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 5,
      name = "bg",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 0,
      parallaxy = 0.25,
      properties = {},
      objects = {
        {
          id = 5,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 60,
          width = 144,
          height = 96,
          rotation = 0,
          visible = true,
          properties = {
            ["color"] = 30,
            ["fill"] = true
          }
        },
        {
          id = 7,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0.5,
          y = 56.8333,
          width = 144,
          height = 1.16667,
          rotation = 0,
          visible = true,
          properties = {
            ["color"] = 30,
            ["fill"] = true
          }
        }
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 18,
      height = 16,
      id = 3,
      name = "hills",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = -31,
      parallaxx = 0.5,
      parallaxy = 0.5,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 5, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 37, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 36, 5, 36, 36, 0, 0, 0,
        4, 36, 36, 5, 0, 0, 0, 0, 0, 0, 36, 37, 36, 36, 36, 4, 5, 0,
        36, 36, 36, 37, 0, 0, 0, 0, 0, 0, 36, 36, 36, 36, 36, 36, 36, 0,
        36, 37, 36, 36, 0, 0, 0, 0, 0, 0, 36, 36, 36, 36, 36, 36, 36, 0,
        36, 36, 36, 36, 4, 5, 0, 0, 0, 0, 36, 36, 36, 37, 36, 36, 36, 0,
        37, 36, 36, 36, 37, 36, 0, 0, 0, 0, 36, 36, 36, 36, 36, 36, 36, 0,
        36, 36, 36, 36, 36, 37, 0, 0, 0, 0, 36, 36, 36, 36, 36, 36, 37, 0,
        68, 68, 68, 68, 68, 68, 0, 0, 0, 0, 68, 68, 68, 68, 68, 68, 68, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 18,
      height = 16,
      id = 1,
      name = "terrain",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 2,
      name = "Object Layer 1",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 1,
          name = "",
          type = "",
          shape = "rectangle",
          x = 15.6667,
          y = 13,
          width = 33,
          height = 22,
          rotation = 0,
          visible = true,
          properties = {
            ["color"] = 10,
            ["fill"] = true
          }
        },
        {
          id = 2,
          name = "",
          type = "",
          shape = "point",
          x = 60,
          y = 19,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "",
          type = "",
          shape = "ellipse",
          x = 80,
          y = 18.6667,
          width = 32.6667,
          height = 22.6667,
          rotation = 0,
          visible = true,
          properties = {
            ["fill"] = true
          }
        }
      }
    }
  }
}
