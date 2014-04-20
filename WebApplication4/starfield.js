﻿Starfield.prototype.initialise = function (div) {
    // add a function to the starfield prototype
    var self = this;

    // sttore the div
    this.containerDiv = div;
    self.width = window.innerWidth;
    self.height = window.innerHeight;

    window.addEventListener('resize', function resize(event) {
        self.width = window.innerWidth;
        self.height = window.innerHeight;
        self.canvas.width = self.width;
        self.canvas.height = self.height;
        self.draw();
    });

    // Create the canvas.
    var canvas = document.createElement('canvas');
    div.appendChild(canvas);
    this.canvas = canvas;
    this.canvas.width = this.width;
}

Starfield.prototype.start = function () {

    // Create the stars
    var stars = [];
    for (var i = 0; i < this.stars; i++) {
        stars[i] = new Star(Math.random() * this.width, Math.random() * this.height, MAth.random() * 3 + 1,
            (Math.random() * (this.maxVelocity - this.minVelocity)) + this.minVelocity);
    }
    this.stars = stars;

}


function Starfield() {
    this.fps = 30;
    this.canvas = null;
    this.width = 0;
    this.height = 0;
    this.minVelocity = 15;
    this.maxVelocity = 30;
    this.stars = 100;
    this.intervalId = 0;
}

function Star(x, y, size, velocity) {
    this.x = x;
    this.y = y;
    this.size = size;
    this.velocity = velocity;
}