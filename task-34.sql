select name from classes, ships where launched >= 1922 and displacement > 35000 and type = 'bb' and    
ships.class = classes.class;