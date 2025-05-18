local love = require "love"

function Enemy()
  return {
    level = 1,
    radius = 20,
    x = -10,
    y = -50,

    move = function(self, player_x, player_y)
      -- if the enemy is to the left of the player
      if player_x - self.x > 0 then
        self.x = self.x + self.level

      -- if the enemy is to the right of the player
      elseif player_x - self.x < 0 then
        self.x = self.x - self.level
      end

      -- if the enemy is above the plaxer
      if player_y - self.y > 0 then
        self.y = self.y + self.level

      -- if the enemy is below the player
      elseif player_y - self.y < 0 then
        self.y = self.y - self.level
      end
    end,
    draw = function(self)
      love.graphics.setColor(1, 0.5, 0.7)
      love.graphics.circle("fill", self.x, self.y, self.radius)
      love.graphics.setColor(1, 1, 1)
    end,
  }
end

return Enemy
