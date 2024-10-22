data:extend(
{

{
    type = "recipe",
    name = "ultra-fast-belt",
    enabled = false,
    ingredients =
    {
      {type="item", name="express-transport-belt", amount=2},
      {type="item", name="iron-gear-wheel", amount=10},
    },
    results = {{type="item", name="ultra-fast-belt", amount=1}},
    requester_paste_multiplier = 20
  },
  
  {
    type = "recipe",
    name = "extreme-fast-belt",
    enabled = false,
    ingredients =
    {
      {type="item", name="ultra-fast-belt", amount=1},
	    {type="item",name="express-transport-belt", amount=1},
      {type="item", name="iron-gear-wheel", amount=10}
    },
    results = {{type="item", name="extreme-fast-belt", amount=1}},
    requester_paste_multiplier = 20
  },
  
  {
    type = "recipe",
    name = "ultra-express-belt",
    enabled = false,
    ingredients =
    {
      {type="item", name="extreme-fast-belt", amount=20},
	    {type="item",name="express-transport-belt", amount=20},
      {type="item", name="iron-gear-wheel", amount=200},
	    {type="item", name="speed-module", amount=1}
    },
    results = {{type="item", name="ultra-express-belt", amount=20}},
    requester_paste_multiplier = 20
  },
  
  {
    type = "recipe",
    name = "extreme-express-belt",
    enabled = false,
    ingredients =
    {
      {type="item", name="ultra-express-belt", amount=20},
      {type="item",name="express-transport-belt", amount=20},
      {type="item", name="iron-gear-wheel", amount=200},
      {type="item", name="speed-module-2", amount=1}
    },
    results = {{type="item", name="extreme-express-belt", amount=20}},
    requester_paste_multiplier = 20
  },
  
  {
    type = "recipe",
    name = "ultimate-belt",
    enabled = false,
    ingredients =
    {
      {type="item", name="extreme-express-belt", amount=20},
      {type="item",name="express-transport-belt", amount=20},
      {type="item", name="iron-gear-wheel", amount=200},
      {type="item", name="speed-module-3", amount=1}
    },
    results = {{type="item", name="ultimate-belt", amount=20}},
    requester_paste_multiplier = 20
  },
  
  }
  )