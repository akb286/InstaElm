module PhotoView exposing (..)

import Types exposing (Msg, Photo, Comment, examplePhoto)
import Html exposing (beginnerProgram)
import Html exposing (Html, div, img)
import Html.Attributes exposing (class, src)

type alias Model =
  { photo : Photo }

model =
  { photo = examplePhoto }

photoView : Photo -> Html Msg
photoView photo =
    div [ class "photo-view"]
        [ img [ src "instapic.jpg"] [] ]


view : Model -> Html Msg
view {photo} =
  div [ class "photo-view"]
      [ photoView photo ]

update msg model =
  model

main =
  beginnerProgram { model = model
                  , view = view
                  , update = update
                  }
