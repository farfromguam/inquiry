class Context < ActiveRecord::Base

  # music free assoiciation gives us sound/emotion contex data
  # prompted free assoiciation gives us concept/emotion context data
  # lots of context data gives a context mesh
  # use context mesh for good.

  # con·text / ˈkäntekst /
  # the circumstances that form the setting for an event, statement, or idea, and in terms of which it can be fully understood and assessed.

  belongs_to :contextable, polymorphic: true
  has_many :tags

  tag is a context, context is many tags


  word cloud
    tags and their percent

  mesh
    sorted relationships
    between items
    and distances
    in a nd universe

  4D object mesh
    above with data as reported
    by users Knolling the items around them  https://en.wikipedia.org/wiki/Knolling
    taking photo
    identifing objects and the distances between them
    making a 3D mesh

  3d order mesh
    above with data as reported
    by users ordering items in a list
    identifing appromimate distances
    making a 3d mesh

  emotion mesh
    sorted relationship
    between emotion fingerprints
    in ND space



end
