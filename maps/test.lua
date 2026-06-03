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
  nextlayerid = 9,
  nextobjectid = 29,
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
        },
        {
          id = 5,
          animation = {
            {
              tileid = 5,
              duration = 150
            },
            {
              tileid = 6,
              duration = 150
            },
            {
              tileid = 7,
              duration = 150
            },
            {
              tileid = 6,
              duration = 150
            }
          }
        },
        {
          id = 96,
          animation = {
            {
              tileid = 96,
              duration = 150
            },
            {
              tileid = 97,
              duration = 150
            },
            {
              tileid = 98,
              duration = 150
            },
            {
              tileid = 99,
              duration = 150
            }
          }
        },
        {
          id = 128,
          animation = {
            {
              tileid = 128,
              duration = 150
            },
            {
              tileid = 129,
              duration = 150
            },
            {
              tileid = 130,
              duration = 150
            },
            {
              tileid = 131,
              duration = 150
            }
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
          x = 45.0417,
          y = 3.65625,
          width = 18,
          height = 18,
          rotation = 0,
          visible = true,
          properties = {
            ["color"] = 9,
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
      id = 6,
      name = "stars",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 0,
      parallaxy = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0,
        0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
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
      id = 3,
      name = "hillsbg",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = -31,
      parallaxx = 0.25,
      parallaxy = 0.25,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 71, 71, 71, 71, 40, 0, 0,
        0, 0, 0, 0, 39, 40, 0, 0, 0, 0, 71, 71, 71, 71, 72, 71, 0, 0,
        0, 0, 0, 0, 71, 71, 0, 0, 0, 0, 71, 71, 71, 71, 71, 71, 0, 0,
        0, 0, 0, 0, 71, 72, 0, 0, 0, 0, 71, 72, 71, 71, 71, 71, 0, 0,
        0, 0, 0, 0, 71, 71, 0, 0, 0, 0, 71, 71, 71, 71, 71, 71, 0, 0,
        0, 0, 0, 0, 72, 71, 0, 0, 0, 0, 71, 71, 71, 71, 71, 71, 0, 0,
        0, 0, 0, 0, 71, 71, 0, 0, 0, 0, 71, 71, 71, 71, 72, 71, 0, 0,
        0, 0, 0, 0, 71, 71, 0, 0, 0, 0, 71, 71, 71, 71, 71, 71, 0, 0,
        0, 0, 0, 0, 71, 71, 0, 0, 0, 0, 71, 71, 71, 71, 71, 71, 0, 0,
        0, 0, 0, 0, 103, 103, 0, 0, 0, 0, 103, 103, 103, 103, 103, 103, 0, 0,
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
      id = 8,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 129, 2, 2,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 97, 2, 2,
        0, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 97, 2, 2,
        0, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 97, 2, 2,
        3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 97, 3, 3,
        2, 2, 129, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 97, 2, 2,
        2, 2, 97, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 97, 2, 2,
        2, 2, 97, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 97, 2, 2
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
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 7,
      name = "trees",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {}
    }
  }
}
