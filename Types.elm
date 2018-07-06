module Types exposing (..)

import List exposing (repeat)

type alias Photo =
  { url : String
  , username : String
  , location : String
  , likeCount : Int
  , commentCount : Int
  , comments : List Comment
  }

type alias Comment =
  { username : String
  , message : String
  }

examplePhoto =
  { url = "instapic.jpg"
  , username = "Rudolfo"
  , location = "Canada"
  , likeCount = 100
  , commentCount = 20
  , comments = repeat 12 exampleComment
  }

exampleComment =
  { username = "Person"
  , message = "Hello World"
  }

type Msg = OpenPhoto Photo
        | ClosePhoto
        | LoadMoreComments
