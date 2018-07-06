module PhotoGrid exposing (..)

import Types exposing (Msg, Photo, Comment, examplePhoto)
import PhotoView exposing (photoView)
import Html exposing (Html, img, text, div, beginnerProgram)
import Html.Attributes exposing (class, src)
import List exposing (repeat, map)

type alias Model =
  { photos : List Photo }

photoGridView : List Photo -> Html Msg
photoGridView photos =
  div [ class "photo-grid" ]
      (List.map photoView model.photos)

--used for elm test reactor
model = { photos = repeat 12 examplePhoto }

view : Model -> Html Msg
view model =
  photoGridView model.photos

update msg model =
  model

main =
  beginnerProgram { model = model
                  , view = view
                  , update = update
                  }
