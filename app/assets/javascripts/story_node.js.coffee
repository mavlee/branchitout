define ['backbone'], (Backbone) ->

  StoryNodeModel = Backbone.Model.extend
    defaults :
      title   : ''
      content : ''
    initialize : (options) ->
      this.set { branches : [] } if not options.branches?
      this.set { votes : [] } if not options.votes?

  return {
    StoryNodeModel : StoryNodeModel
  }


