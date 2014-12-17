global.hello = ->
  'hello coffee'

global.random_score = ->
  Math.floor Math.random() * 11

global.array_hits = ->
  hits = []
  for i in [1..10]
    hits.push random_score()
  hits