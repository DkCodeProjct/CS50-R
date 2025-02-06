describe("ducksay()", {
  it("can print to the console with `cat`", {
    expect_output(cat(ducksay()))
  })
  
  it("can say hello to the world", {
    expect_match(ducksay(), "hello, world")
  })
  
  it("can say hello with duck", {
    duck <- paste(
      ">(. )__", 
      " (____/", 
      sep = "\n"
    )
    
    # fixed==True, so itll not get pattern as [regex syntax]
    expect_match(ducksay(), duck, fixed = TRUE)
  })
  
  it("cat say any given prases with a duck", {
    expect_match(ducksay("quack!"), "quack!")
  })
})