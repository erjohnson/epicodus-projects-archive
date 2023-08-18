describe("Cell", function() {
  describe("initialize", function() {
    it("is initialized with an x and y coordinate", function() {
      var testCell = Object.create(Cell);
      testCell.initialize(1, 2);
      testCell.xCoordinate.should.equal(1);
      testCell.yCoordinate.should.equal(2);
    });
  });

  describe("create", function() {
    it("creates a new cell", function() {
      var testCell = Cell.create(1,2);
      Cell.isPrototypeOf(testCell).should.equal(true);
    });
  });

  describe("isAlive", function() {
    it("checks if cell has been marked", function() {
      var testCell = Cell.create(1, 2);
      testCell.isAlive.should.equal(false);
    });
  });

  describe("amIAlive", function() {
    it("becomes self-aware and checks if isAlive is true or false", function() {
      var testCell = Cell.create(1, 2);
      testCell.aliveNeighbors = 2;
      testCell.amIAlive();
      testCell.isAlive.should.equal(false);
    });
  });
  //
});

describe("Board", function() {
  describe("initialize", function(){
    it("creates 9 cells when it is initialized", function() {
      var testBoard = Object.create(Board);
      testBoard.initialize();
      testBoard.cells.length.should.equal(9);
    });
  });
  describe("findByCoors", function(){
    it("should find the matching cell object and buy it a coors rocky mountain refreshment", function() {
        var testBoard = Object.create(Board);
        testBoard.initialize();
        testBoard.findByCoors(2,3).should.eql(testBoard.cells[5]);
      });
  });
  describe("findNeighbors", function(){
    it("should find 8 neighbors for cell 2,2", function(){
      var testBoard = Object.create(Board);
      testBoard.initialize();
      testBoard.findNeighbors();
      testBoard.cells[4].neighborsArr.length.should.equal(8);
    });
  });
});
