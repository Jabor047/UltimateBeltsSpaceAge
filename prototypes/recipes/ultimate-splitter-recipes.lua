data:extend(
{

  {
    type = "recipe",
    name = "ultra-fast-splitter",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      {type="item", name="express-splitter", amount=1},
      {type="item", name="iron-gear-wheel", amount=10},
      {type="item", name="advanced-circuit", amount=10}
    },
    results = {{type="item", name="ultra-fast-splitter", amount=1}},
    requester_paste_multiplier = 4
  },
  
  {
    type = "recipe",
    name = "extreme-fast-splitter",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      {type="item", name="ultra-fast-splitter", amount=1},
      {type="item", name="iron-gear-wheel", amount=10},
      {type="item", name="processing-unit", amount=5}
    },
    results = {{type="item", name="extreme-fast-splitter", amount=1}},
    requester_paste_multiplier = 4
  },
  
  {
    type = "recipe",
    name = "ultra-express-splitter",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      {type="item", name="extreme-fast-splitter", amount=1},
      {type="item", name="iron-gear-wheel", amount=10},
      {type="item", name="processing-unit", amount=5},
	    {type="item", name="speed-module", amount=1}
    },
    results = {{type="item", name="ultra-express-splitter", amount=1}},
    requester_paste_multiplier = 4
  },
  
  {
    type = "recipe",
    name = "extreme-express-splitter",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      {type="item", name="ultra-express-splitter", amount=1},
      {type="item", name="iron-gear-wheel", amount=10},
      {type="item", name="processing-unit", amount=5},
	    {type="item", name="speed-module-2", amount=1}
    },
    results = {{type="item", name="extreme-express-splitter", amount=1}},
    requester_paste_multiplier = 4
  },
  
  {
    type = "recipe",
    name = "original-ultimate-splitter",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      {type="item", name="extreme-express-splitter", amount=1},
      {type="item", name="iron-gear-wheel", amount=10},
      {type="item", name="processing-unit", amount=5},
	    {type="item", name="speed-module-3", amount=1}
    },
    results = {{type="item", name="original-ultimate-splitter", amount=1}},
    requester_paste_multiplier = 4
  }
  
  }
  )