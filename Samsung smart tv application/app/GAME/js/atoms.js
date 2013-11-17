var Atoms = OZ.Class();
Atoms.prototype.init = function() {
	this._board = new Board(6, 6);
	
	this._players = [];
	this._colors = ["blue", "red"];
	this._canvas = new Canvas(this._board, 40, 40, this._colors);
	
	this._scoreContainer = OZ.DOM.elm("table", {id:"score", innerHTML:"<tbody><tr></tr><tr></tr></tbody>"});
	this._scores = [];
	this._names = [];
	this._reactionDelay = 200;

	document.body.appendChild(this._scoreContainer);
	document.body.appendChild(this._canvas.getCanvas());

	this._canvas.prepare();
	this._currentPlayer = -1;	
}

Atoms.prototype.start = function() {}

Atoms.prototype._addPlayer = function(player) {
	var tr1 = this._scoreContainer.getElementsByTagName("tr")[0];
	var tr2 = this._scoreContainer.getElementsByTagName("tr")[1];
	if (this._players.length) {
		tr1.appendChild(OZ.DOM.elm("td", {innerHTML:":"}));
		tr2.appendChild(OZ.DOM.elm("td", {innerHTML:":"}));
	}

	var color = this._colors[this._players.length];
	var name = OZ.DOM.elm("td", {innerHTML:player.getName(), color:color});
	var score = OZ.DOM.elm("td", {innerHTML:"0", color:color});

	tr1.appendChild(name);
	tr2.appendChild(score);
	this._names.push(name);
	this._scores.push(score);
	
	this._players.push(player);
	return this;
}

Atoms.prototype._loop = function() {
	this._updateScore();
	if (this._currentPlayer > -1) { this._names[this._currentPlayer].style.textDecoration = ""; }

	do { /* find next playing player */
		this._currentPlayer = (this._currentPlayer+1) % this._players.length;
	} while (!this._players[this._currentPlayer]);

	if (this._currentPlayer > -1) { this._names[this._currentPlayer].style.textDecoration = "underline"; }
	this._players[this._currentPlayer].play(this._board, this._playerCallback.bind(this));
}

Atoms.prototype._updateScore = function() {
	var zeros = [];
	var total = 0;
	var max = this._board.getWidth() * this._board.getHeight();
	
	for (var i=0;i<this._players.length;i++) { 
		var score = this._board.getScore(i) || 0;
		total += score;
		this._scores[i].innerHTML = score;
		if (score == 0) { zeros.push(i); }
	}
	
	if (total == max) { /* disable players with score=0 */
		while (zeros.length) { this._players[zeros.pop()] = null; }
	}
}

Atoms.prototype._playerCallback = function(x, y) {
	var number = this._board.getPlayer(x, y);
	if (number > -1 && number != this._currentPlayer) { 
		throw new Error("Player " + this._currentPlayer + " made an illegal move to " + [x, y]);
	}
	
	this._board.setAtoms(x, y, this._board.getAtoms(x, y)+1, this._currentPlayer);
	this._canvas.draw(x, y);
	this._check();
}

Atoms.prototype._check = function() {
	this._updateScore();
	var winner = this._board.getWinner();
	
	if (winner > -1) {
		this._announceWinner(winner);
		return;
	}
	
	if (this._board.hasCriticals()) {
		setTimeout(this._react.bind(this), this._reactionDelay);
		return;
	}
	
	this._loop();
}

Atoms.prototype._announceWinner = function(winner) {
	document.body.style.backgroundColor="#f3f3f3"; 
document.write("<center><div id='winn'><h1>Winner: " + this._players[winner].getName()+"</h1></div><br><br><br>"+"<input id ='a' type='button' value='Start A NEW Game' onclick='document.location.reload(true)'/> </center>"+"<style>#a{ padding:20px;margin-top:70px;margin-left:10px;-webkit-border-radius: 15px; -moz-border-radius: 15px;border-radius: 15px;-webkit-box-shadow: 1px 2px 2px rgba(0,0,0,0.6);-moz-box-shadow: 1px 2px 2px rgba(0,0,0,0.6);box-shadow: 1px 2px 2px rgba(0,0,0,0.6);-webkit-transition-duration: 0.20s;-webkit-transition-timing-function: ease-out; -moz-transition-duration: 0.20s;-moz-transition-timing-function: ease-out; color: #ffffff;background: rgba(0,0,0,0.2);display: inline-block;padding: 5px 15px;outline: none;text-decoration: none;}#a:hover {background: rgba(0,0,0,0.5);padding: 5px 25px;}#a:active {background: rgba(0,0,0,0.1);-webkit-box-shadow: 1px 1px 1px rgba(0,0,0,0.4);-moz-box-shadow: 1px 1px 1px rgba(0,0,0,0.4);box-shadow: 1px 1px 1px rgba(0,0,0,0.4);} #winn{background:#D49FFF;padding:20px;position:fixed;margin-top:50px;margin-left:30px;color: #fff;text-shadow: 0px 1px 0px #999, 0px 2px 0px #888, 0px 3px 0px #777, 0px 4px 0px #666, 0px 5px 0px #555, 0px 6px 0px #444, 0px 7px 0px #333, 0px 8px 7px #001135;font: 80px ;} </style>"+"");
}

Atoms.prototype._react = function() {
	var changed = this._board.react();
	for (var i=0;i<changed.length;i++) {
		this._canvas.draw(changed[i][0], changed[i][1]);
	}
	this._check();
}

/**/

Atoms.Local = OZ.Class().extend(Atoms);

Atoms.Local.prototype.addPlayerUI = function(name) {
	var player = new Player.UI(this._players.length, name);
	return this._addPlayer(player);
}

Atoms.Local.prototype.addPlayerAI = function(name) {
	var player = new Player.AI(this._players.length, name);
	return this._addPlayer(player);
}

Atoms.Local.prototype.start = function() {
	var allAI = true;
	for (var i=0;i<this._players.length;i++) {
		if (!(this._players[i] instanceof Player.AI)) { allAI = false; } 
	}
	if (allAI) { this._reactionDelay = 0; }
	this._loop();
}

