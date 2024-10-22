data:extend(
{

{
    type = "recipe",
    name = "ultra-fast-underground-belt",
    enabled = false,
	  energy_required = 1,
    ingredients =
    {
      {type="item", name="iron-gear-wheel", amount=40},
      {type="item", name="express-underground-belt", amount=4}
    },
    results = {{type="item", name="ultra-fast-underground-belt", amount=2}},
    requester_paste_multiplier = 20
  },
  
  {
    type = "recipe",
    name = "extreme-fast-underground-belt",
    enabled = false,
	energy_required = 1,
    ingredients =
    {
      {type="item", name="iron-gear-wheel", amount=40},
      {type="item", name="express-underground-belt", amount=2},
	    {type="item", name="ultra-fast-underground-belt", amount=2}
    },
    results = {{type="item", name="extreme-fast-underground-belt", amount=2}},
    requester_paste_multiplier = 20
  },
  
  {
    type = "recipe",
    name = "ultra-express-underground-belt",
    enabled = false,
	energy_required = 1,
    ingredients =
    {
      {type="item", name="iron-gear-wheel", amount=40},
	    {type="item", name="speed-module", amount=1},
      {type="item", name="express-underground-belt", amount=2},
	    {type="item", name="extreme-fast-underground-belt", amount=2}
    },
    results = {{type="item", name="ultra-express-underground-belt", amount=2}},
    requester_paste_multiplier = 20
  },
  
  {
    type = "recipe",
    name = "extreme-express-underground-belt",
    enabled = false,
	energy_required = 1,
    ingredients =
    {
      {type="item", name="iron-gear-wheel", amount=40},
	    {type="item", name="speed-module-2", amount=1},
      {type="item", name="express-underground-belt", amount=2},
	    {type="item", name="ultra-express-underground-belt", amount=2}
    },
    results = {{type="item", name="extreme-express-underground-belt", amount=2}},
    requester_paste_multiplier = 20
  },
  
  {
    type = "recipe",
    name = "original-ultimate-underground-belt",
    enabled = false,
	energy_required = 1,
    ingredients =
    {
      {type="item", name="iron-gear-wheel", amount=40},
      {type="item", name="speed-module-3", amount=1},
      {type="item", name="express-underground-belt", amount=2},
	    {type="item", name="extreme-express-underground-belt", amount=2}
    },
    results = {{type="item", name="original-ultimate-underground-belt", amount=2}},
    requester_paste_multiplier = 20
  },
  
  }
  )