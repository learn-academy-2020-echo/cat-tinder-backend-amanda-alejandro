cats = [
  {
    name: 'Bandit',
    age: 5,
    enjoys: 'Cuddles and being pet',
    image:
      'https://cdn.pixabay.com/photo/2017/11/13/07/14/cat-eyes-2944820_960_720.jpg',
  },
  {
    name: 'Jinx',
    age: 7,
    enjoys: 'Hunting all things living',
    image:
      'https://cdn.pixabay.com/photo/2019/03/20/16/04/cat-4068840_960_720.jpg',
  },
  {
    name: 'Augie',
    age: 7,
    enjoys: 'Sleeping anywhere',
    image:
      'https://cdn.pixabay.com/photo/2018/05/09/21/47/cat-3386220_960_720.jpg',
  },
  {
    name: 'Milo',
    age: 6,
    enjoys: 'Cuddles and climbing',
    image:
      'https://cdn.pixabay.com/photo/2013/07/18/15/03/cat-164426_960_720.jpg',
  },
  {
    name: 'Felix',
    age: 1,
    enjoys: 'Cuddles, cuddles, cuddles',
    image: 'https://cdn.pixabay.com/photo/2013/04/01/03/45/cat-98359_960_720.jpg',
  },
  {
    name: 'Garfield',
    age: 9,
    enjoys: 'Lasagna!',
    image:
      'https://cdn.pixabay.com/photo/2018/07/21/17/53/cat-3553106_960_720.jpg',
  },
  {
    name: 'Grumpus',
    age: 7,
    enjoys: 'Making clowns sad',
    image:
      'https://cdn.pixabay.com/photo/2016/09/01/14/15/doll-1636212_960_720.jpg',
  },
  {
    name: 'Sadie',
    age: 2,
    enjoys: 'Playing dress up',
    image:
      'https://cdn.pixabay.com/photo/2018/06/16/18/10/cat-3479185_960_720.jpg',
  },
  {
    name: 'Mittens',
    age: 1,
    enjoys: 'Belly rubs and cuddles',
    image:
      'https://cdn.pixabay.com/photo/2019/11/14/17/15/cat-4626678_960_720.jpg',
  },
]

cats.each do |attr|
  Cat.create attr
  puts "creating cat: #{attr}"
end