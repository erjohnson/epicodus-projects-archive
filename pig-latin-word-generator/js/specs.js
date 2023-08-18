describe("toPigLatin", function(){
  it("if the word starts with a vowel (a,e,i,o,u) add 'ay' to the end", function(){
    toPigLatin("epicodus").should.equal("epicodusay");
  });
});

describe("toPigLatin one consonant", function(){
  it("if the word starts with a consonant, move the consonant to the end and add ay.", function(){
    toPigLatin("cat").should.equal("atcay");
  });
});

describe("toPigLatin consecutive consonant", function(){
  it("if the word starts with more than one consonant, move all of the consonants to the end and add 'ay'", function(){
    toPigLatin("that").should.equal("atthay");
  });
  it("if the word starts with more than one consonant, move all of the consonants to the end and add 'ay'", function(){
    toPigLatin("three").should.equal("eethray");
  });
});

describe("to Piglatin qu case", function(){
  it("if the first 2 letters include 'qu' move both to the end.", function(){
    toPigLatin("quiet").should.equal("ietquay");
  });
  it("if the first string of consonants contains 'qu' move 'qu' to the end along with the consonants", function(){
    toPigLatin("squeal").should.equal("ealsquay");
  });
});
