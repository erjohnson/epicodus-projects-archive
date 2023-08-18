describe("getScore Highest Point Value Letters", function(){
  it("returns 10 points for the letters 'Q'.", function(){
    getScore("q").should.equal(10);
  });
  it("returns 20 points for the letters 'Q' and 'Z'.", function(){
    getScore("qz").should.equal(20);
  });
  it("returns 13 points for 'Epicodus'.", function(){
    getScore("Epicodus").should.equal(13);
  });
});
