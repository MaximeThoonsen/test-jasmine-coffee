require("../src/bowling.coffee")

describe 'hello', ->
  it 'returns "hello coffee"', ->
    expect(hello()).toEqual("hello coffee")

describe 'random_score', ->
  it 'returns score between 0 and 10', ->
    expect(random_score()).toBeLessThan(11)
    expect(random_score()).toBeGreaterThan(-1)
    expect(random_score()).toEqual(jasmine.any(Number))
    expect(random_score()%1).toEqual(0)


describe 'array_hits', ->
  spy=null
  beforeEach ->
    spy = spyOn(global, 'random_score')

  it 'returns array of 10 rounds of 2 shots', ->
    expect(array_hits()).toEqual(jasmine.any(Array))
    expect(array_hits().length).toEqual(10)
    expect(spy).toHaveBeenCalled()
