--Remove production science pack requirement from logistics 3. Makes belts somewhat viable compared to bots for mid-game (using bob's mods ofc).
data.raw["technology"]["logistics-3"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"chemical-science-pack", 1},
}

-- делаем апгрейды для конвейеров и разветвителей
data.raw["transport-belt"]["express-transport-belt"].next_upgrade = "ultra-fast-belt"
data.raw["transport-belt"]["ultra-fast-belt"].next_upgrade = "extreme-fast-belt"
data.raw["transport-belt"]["extreme-fast-belt"].next_upgrade = "ultra-express-belt"
data.raw["transport-belt"]["ultra-express-belt"].next_upgrade = "extreme-express-belt"
data.raw["transport-belt"]["extreme-express-belt"].next_upgrade = "ultimate-belt"

data.raw["underground-belt"]["express-underground-belt"].next_upgrade = "ultra-fast-underground-belt"
data.raw["underground-belt"]["ultra-fast-underground-belt"].next_upgrade = "extreme-fast-underground-belt"
data.raw["underground-belt"]["extreme-fast-underground-belt"].next_upgrade = "ultra-express-underground-belt"
data.raw["underground-belt"]["ultra-express-underground-belt"].next_upgrade = "extreme-express-underground-belt"
data.raw["underground-belt"]["extreme-express-underground-belt"].next_upgrade = "original-ultimate-underground-belt"

data.raw["splitter"]["express-splitter"].next_upgrade = "ultra-fast-splitter"
data.raw["splitter"]["ultra-fast-splitter"].next_upgrade = "extreme-fast-splitter"
data.raw["splitter"]["extreme-fast-splitter"].next_upgrade = "ultra-express-splitter"
data.raw["splitter"]["ultra-express-splitter"].next_upgrade = "extreme-express-splitter"
data.raw["splitter"]["extreme-express-splitter"].next_upgrade = "original-ultimate-splitter"

-- make belts able to be automatically replaced with underground belts.
data.raw["transport-belt"]["ultra-fast-belt"].related_underground_belt="ultra-fast-underground-belt"
data.raw["transport-belt"]["extreme-fast-belt"].related_underground_belt="extreme-fast-underground-belt"
data.raw["transport-belt"]["ultra-express-belt"].related_underground_belt="ultra-express-underground-belt"
data.raw["transport-belt"]["extreme-express-belt"].related_underground_belt="extreme-express-underground-belt"
data.raw["transport-belt"]["ultimate-belt"].related_underground_belt="original-ultimate-underground-belt"

if deadlock then
  --t1
  deadlock.add_tier({
    transport_belt      = "ultra-fast-belt",
    colour              = {r=0,g=211,b=37},
    underground_belt    = "ultra-fast-underground-belt",
    splitter            = "ultra-fast-splitter",
    technology          = "ultra-fast-logistics",
    order               = "f",
    loader_ingredients  = {
      {type = "item", name = "express-transport-belt-loader", amount = 1},
      {type = "item", name = "iron-gear-wheel", amount = 40},
    },
    beltbox_ingredients = {
      {type = "item", name = "express-transport-belt-beltbox", amount = 1},
      {type = "item", name = "steel-plate", amount = 40},
      {type = "item", name = "iron-gear-wheel", amount = 40},
      {type = "item", name = "processing-unit", amount = 5},
    },
  })
  
  -- hook in the lower tier's upgrade
  if data.raw.furnace["ultra-fast-belt-beltbox"] then
    if data.raw.furnace["ultimate-transport-belt-beltbox"] then
      data.raw.furnace["ultimate-transport-belt-beltbox"].next_upgrade = "ultra-fast-belt-beltbox"
    else
      data.raw.furnace["express-transport-belt-beltbox"].next_upgrade = "ultra-fast-belt-beltbox"
    end
  end
  if data.raw.loader["ultra-fast-belt-loader"] then
    if data.raw.loader["ultimate-transport-belt-loader"] then
      data.raw.loader["ultimate-transport-belt-loader"].next_upgrade = "ultra-fast-belt-loader"
    else
      data.raw.loader["express-transport-belt-loader"].next_upgrade = "ultra-fast-belt-loader"
    end
  end

  --t2
  deadlock.add_tier({
    transport_belt      = "extreme-fast-belt",
    colour              = {r=245,g=17,b=24},
    underground_belt    = "extreme-fast-underground-belt",
    splitter            = "extreme-fast-splitter",
    technology          = "extreme-fast-logistics",
    order               = "g",
    loader_ingredients  = {
      {type = "item", name = "ultra-fast-belt-loader", amount = 1},
      {type = "item", name = "iron-gear-wheel", amount = 20},
      {type = "item", name = "electronic-circuit", amount = 5},
    },
    beltbox_ingredients = {
      {type = "item", name = "ultra-fast-belt-beltbox", amount = 1},
      {type = "item", name = "processing-unit", amount = 10},
    },
  })
  
  if data.raw.furnace["extreme-fast-belt-beltbox"] then
    data.raw.furnace["ultra-fast-belt-beltbox"].next_upgrade = "extreme-fast-belt-beltbox"
  end
  if data.raw.loader["extreme-fast-belt-loader"] then
    data.raw.loader["ultra-fast-belt-loader"].next_upgrade = "extreme-fast-belt-loader"
  end

  --t3
  deadlock.add_tier({
    transport_belt      = "ultra-express-belt",
    colour              = {r=86,g=0,b=204},
    underground_belt    = "ultra-express-underground-belt",
    splitter            = "ultra-express-splitter",
    technology          = "ultra-express-logistics",
    order               = "h",
    loader_ingredients  = {
      {type = "item", name = "extreme-fast-belt-loader", amount = 1},
      {type = "item", name = "advanced-circuit", amount = 10},
    },
    beltbox_ingredients = {
      {type = "item", name = "extreme-fast-belt-beltbox", amount = 1},
      {type = "item", name = "speed-module", amount = 5},
    },
  })
  
  if data.raw.furnace["ultra-express-belt-beltbox"] then
    data.raw.furnace["extreme-fast-belt-beltbox"].next_upgrade = "ultra-express-belt-beltbox"
  end
  if data.raw.loader["ultra-express-belt-loader"] then
    data.raw.loader["extreme-fast-belt-loader"].next_upgrade = "ultra-express-belt-loader"
  end

  --t4
  deadlock.add_tier({
    transport_belt      = "extreme-express-belt",
    colour              = {r=0,g=0,b=204},
    underground_belt    = "extreme-express-underground-belt",
    splitter            = "extreme-express-splitter",
    technology          = "extreme-express-logistics",
    order               = "i",
    loader_ingredients  = {
      {type = "item", name = "ultra-express-belt-loader", amount = 1},
      {type = "item", name = "processing-unit", amount = 10},
    },
    beltbox_ingredients = {
      {type = "item", name = "ultra-express-belt-beltbox", amount = 1},
      {type = "item", name = "speed-module-2", amount = 5},
    },
  })
  
  if data.raw.furnace["extreme-express-belt-beltbox"] then
    data.raw.furnace["ultra-express-belt-beltbox"].next_upgrade = "extreme-express-belt-beltbox"
  end
  if data.raw.loader["extreme-express-belt-loader"] then
    data.raw.loader["ultra-express-belt-loader"].next_upgrade = "extreme-express-belt-loader"
  end

  --t5
  deadlock.add_tier({
    transport_belt      = "ultimate-belt",
    colour              = {r=0,g=230,b=204},
    underground_belt    = "original-ultimate-underground-belt",
    splitter            = "original-ultimate-splitter",
    technology          = "ultimate-logistics",
    order               = "j",
    loader_ingredients  = {
      {type = "item", name = "extreme-express-belt-loader", amount = 1},
      {type = "item", name = "speed-module-3", amount = 3},
    },
    beltbox_ingredients = {
      {type = "item", name = "extreme-express-belt-beltbox", amount = 1},
      {type = "item", name = "speed-module-3", amount = 5},
    },
  })
  
  if data.raw.furnace["ultimate-belt-beltbox"] then
    data.raw.furnace["extreme-express-belt-beltbox"].next_upgrade = "ultimate-belt-beltbox"
  end
  if data.raw.loader["ultimate-belt-loader"] then
    data.raw.loader["extreme-express-belt-loader"].next_upgrade = "ultimate-belt-loader"
  end
end
