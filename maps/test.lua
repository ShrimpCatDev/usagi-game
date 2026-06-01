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
  nextobjectid = 21,
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
        },
        {
          id = 13,
          name = "",
          type = "",
          shape = "ellipse",
          x = 42.375,
          y = 19.6563,
          width = 18,
          height = 18,
          rotation = 0,
          visible = true,
          properties = {
            ["color"] = 7,
            ["fill"] = true
          }
        },
        {
          id = 14,
          name = "",
          type = "",
          shape = "point",
          x = 100.125,
          y = 13.9063,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 15,
          name = "",
          type = "",
          shape = "point",
          x = 38.875,
          y = 38.1563,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 16,
          name = "",
          type = "",
          shape = "point",
          x = 92.875,
          y = 47.1563,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 17,
          name = "",
          type = "",
          shape = "point",
          x = 131.375,
          y = 29.6563,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 3, 3,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2,
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
      name = "test",
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
          id = 18,
          name = "",
          type = "",
          shape = "rectangle",
          x = 104.258,
          y = 32.5578,
          width = 35.8275,
          height = 27,
          rotation = 329.774,
          gid = 65,
          visible = true,
          properties = {}
        },
        {
          id = 19,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9.01189,
          y = 48.515,
          width = 48.6437,
          height = 15.3404,
          rotation = 19.4359,
          gid = 33,
          visible = true,
          properties = {}
        },
        {
          id = 20,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 80,
          width = 31.75,
          height = 10.25,
          rotation = 0,
          gid = 34,
          visible = true,
          properties = {
            ["collidable"] = true
          }
        }
      }
    }
  }
}
