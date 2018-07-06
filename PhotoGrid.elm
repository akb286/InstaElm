module PhotoGrid exposing (..)

import Types exposing (Msg, LoadMoreComments, OpenPhoto, ClosedPhoto, Photo, Comment, examplePhoto)
import PhotoView exposing (photoView)
import Html exposing (beginnerProgram)
import Html exposing (Html, img, text, div)
import Html.Attributes exposing (class, src)
import List exposing (repeat, map)


type alias Model =
  { photos : List Photo }
--
-- photoView : Photo -> Html Msg
-- photoView photo =
--   div [ class "photo"] --<div class="photo"
--       [ img [ src "instapic.jpg" ] [] ] --<img src="hello"

photoGridView : List Photo -> Html msg
photoGridView photos =
  div [ class "photo-grid" ]
      (map photoView model.photos)


--used for elm test reactor
model = { photos = repeat 12 examplePhoto }

view : Model -> Html Msg
view model =
  photoGridView model.photos

update msg model =
  case msg of
    LoadMoreComments ->
      model
    OpenPhoto photo ->
    { model | photoOpened = photo }
    ClosedPhoto photo ->
    { model | photoOpened = Nothing }

main =
  -- text "hello world"
  beginnerProgram { model = model
                  , view = view
                  , update = update }
