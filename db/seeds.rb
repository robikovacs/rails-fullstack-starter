john = User.create!(
  name: 'John Doe',
  avatar_url: Faker::Avatar.image
)

Wishlist.create!(
  [
    {
      title: 'My favourite Keto meals',
      user: john
    },
    {
      title: 'My favourite vegan meals',
      user: john
    }
  ]
)
