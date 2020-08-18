# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
  {
    name: "Paul"
  },
  {
    name: "Teresa"
  },
  {
    name: "Maria"
  },
  {
    name: "Nick"
  }
])

Game.create([
  {
    name: "Escape the Shark! (A Word Game)",
    image: "https://images.squarespace-cdn.com/content/v1/5b41e4c4a9e02869d4a2e96e/1535093319896-KX13R9GMOV2UJH047SEJ/ke17ZwdGBToddI8pDm48kOCrv85sErh1MxX3aw1JU6wUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYy7Mythp_T-mtop-vrsUOmeInPi9iDjx9w8K4ZfjXt2dofMl7dg2OHqwhJA1Lrd5k2vEcPj-sFsrYvHD_N7Azp7m7cT0R_dexc_UL_zbpz6JQ/fin.jpg?format=1500w"
  },
  {
    name: "Tic Tac Toe",
    image: "https://img.poki.com/cdn-cgi/image/quality=78,width=600,height=600,fit=cover,g=0.5x0.5,f=auto/85535e05d1f130b16751c8308cfbb19b.png"
  }
])

Favorite.create([
  {
    user_id: 1,
    game_id: 1
  },
  {
    user_id: 1,
    game_id: 2
  },
  {
    user_id: 2,
    game_id: 1
  },
  {
    user_id: 3,
    game_id: 1
  }
])

PlaySession.create([
  {
    user_id: 1,
    game_id: 2,
    user_win: true
  },
  {
    user_id: 1,
    game_id: 2,
    user_win: false
  },
  {
    user_id: 1,
    game_id: 1,
    user_win: true
  },
  {
    user_id: 2,
    game_id: 1,
    user_win: false
  }
])