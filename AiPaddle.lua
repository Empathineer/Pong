-- --[[
--     This is CS50 2019.
--     Games Track
--     Pong

--     -- Paddle Class --

--     Author: Carissa Chan
--     empathiner1994@gmai.com

--     Subclass of the Paddle class. This computer paddle will deflect all balls 

-- ]]--


AiPaddle = Class{}

function AiPaddle:init(paddle, ball)
  self.paddle = paddle
  self.ball = ball
end

function AiPaddle:move()
  --implement up
  if self.ball.x > VIRTUAL_WIDTH / 2 + 50 then
    if self.ball.y < VIRTUAL_HEIGHT / 2 then
      self.paddle.dy = -PADDLE_SPEED
    elseif self.ball.y > VIRTUAL_HEIGHT / 2 then
      self.paddle.dy = PADDLE_SPEED
    else
        self.paddle.dy = 0
    end
  end
end

function AiPaddle:update(dt)
  if self.ball.x > VIRTUAL_WIDTH / 2 + 50 then
    if self.paddle.dy < 0 then
      dif = self.ball.y - self.paddle.y + (-self.paddle.h)
      self.paddle.y = math.max(0, self.paddle.y + (dif * 10) * dt)
    else
      dif = self.ball.y - self.paddle.y + (-self.paddle.h / 2)
      self.paddle.y = math.min(VIRTUAL_HEIGHT - self.paddle.h, self.paddle.y + (dif * 10) * dt)
    end
  end
end














-- AiPaddle = Paddle:new()


-- --[[
--     The `init` function on our class is called just once, when the object
--     is first created. Used to set up all variables in the class and get it
--     ready for use.

--     Our Paddle should take an X and a Y, for positioning, as well as a width
--     and height for its dimensions.

--     Note that `self` is a reference to *this* object, whichever object is
--     instantiated at the time this function is called. Different objects can
--     have their own x, y, width, and height values, thus serving as containers
--     for data. In this sense, they're very similar to structs in C.
-- ]]
-- function AiPaddle:init(x, y, width, height)
--     self.x = x
--     self.y = y
--     self.width = width
--     self.height = height
--     self.dy = 0
-- end

-- function AiPaddle:update(dt)
--     -- math.max here ensures that we're the greater of 0 or the player's
--     -- current calculated Y position when pressing up so that we don't
--     -- go into the negatives; the movement calculation is simply our
--     -- previously-defined paddle speed scaled by dt
--     if self.dy < 0 then
--         self.y = math.max(0, self.y + self.dy * dt)
--     -- similar to before, this time we use math.min to ensure we don't
--     -- go any farther than the bottom of the screen minus the paddle's
--     -- height (or else it will go partially below, since position is
--     -- based on its top left corner)
--     else
--         self.y = math.min(VIRTUAL_HEIGHT - self.height, self.y + self.dy * dt)
--     end
-- end

-- --[[
--     To be called by our main function in `love.draw`, ideally. Uses
--     LÖVE2D's `rectangle` function, which takes in a draw mode as the first
--     argument as well as the position and dimensions for the rectangle. To
--     change the color, one must call `love.graphics.setColor`. As of the
--     newest version of LÖVE2D, you can even draw rounded rectangles!
-- ]]
-- function Paddle:render()
--     love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
-- end