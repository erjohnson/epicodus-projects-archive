var Cell = {
    initialize: function (x, y) {
        this.xCoordinate = x;
        this.yCoordinate = y;
        this.neighborsArr = [];
    },
    create: function () {
        return Object.create(Cell);
    },
    amIAlive: function () {
        var neighbors = this.aliveNeighbors;

        if (neighbors < 2) {
          this.isAlive = false;
        } else if (this.isAlive === true && neighbors === 2) {
          this.isAlive = true;
        } else if (neighbors === 3) {
          this.isAlive = true;
        } else {
          this.isAlive = false;
        }
    },
    xCoordinate: 0,
    yCoordinate: 0,
    isAlive: false,
    aliveNeighbors: 0
};

var Board = {
    initialize: function () {
        this.cells = [];
        var x;
        var y;

        for (x = 1; x < 4; x++) {
            for (y = 1; y < 4; y++) {
                var newCell = Cell.create();
                newCell.initialize(x, y);

                this.cells.push(newCell);
            };
        };
        console.log(this.cells + this.cells.length);
    },
    findByCoors: function (x, y) {
        var foundCell;

        for (var i = 0; i < this.cells.length; i++) {
            if ((this.cells[i].xCoordinate === x) &&
                (this.cells[i].yCoordinate === y)) {
                foundCell = this.cells[i];
            }
        };

        return foundCell;
    },
    findNeighbors: function() {

      for (var i = 0; i < this.cells.length; i++) {

        var x = this.cells[i].xCoordinate;
        var y = this.cells[i].yCoordinate;

        var n1 = this.findByCoors((x+1),(y+1));
        var n2 = this.findByCoors((x+1),(y+0));
        var n3 = this.findByCoors((x+1),(y-1));
        var n4 = this.findByCoors((x+0),(y-1));
        var n5 = this.findByCoors((x-1),(y-1));
        var n6 = this.findByCoors((x-1),(y+0));
        var n7 = this.findByCoors((x-1),(y+1));
        var n8 = this.findByCoors((x+0),(y+1));

        this.cells[i].neighborsArr.push(n1);
        this.cells[i].neighborsArr.push(n2);
        this.cells[i].neighborsArr.push(n3);
        this.cells[i].neighborsArr.push(n4);
        this.cells[i].neighborsArr.push(n5);
        this.cells[i].neighborsArr.push(n6);
        this.cells[i].neighborsArr.push(n7);
        this.cells[i].neighborsArr.push(n8);
        console.log(this.cells[i].neighborsArr.length);
      };
      console.log("findNeighbors")
      console.log(this.cells[4].neighborsArr.length);
    }
}

// Neighbours = [[x-1, y-1, 1], [x, y-1, 1], [x+1, y-1, 1], [x-1, y, 1],
// [x+1, y, 1], [x-1, y+1, 1], [x, y+1, 1], [x+1, y+1, 1]];
