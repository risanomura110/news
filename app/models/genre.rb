class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '政治' },
    { id: 3, name: '国際' },
    { id: 4, name: '経済' },
    { id: 5, name: '社会' },
    { id: 6, name: '文化・メディア' },
    { id: 7, name: '生活・医療' }
  ]
end
