module PhotoView exposing (..)

import Types exposing (Msg, LoadMoreComments, OpenPhoto, ClosedPhoto, Photo, Comment, examplePhoto, exampleComment)
import Html exposing (beginnerProgram)
import Html exposing (Html, div, img)
import Html.Attributes exposing (class, src)


type alias Model =
  { photo : Photo}

model =
  { photo = examplePhoto }

photoView : Photo -> Html Msg
photoView photo =
    div [ class "photo-view"]
        [ img [ src "instapic.jpg"] [] ]


view : Model -> Html Msg
view model =
  div [ class "photo-view"]
      [ photoView photo ]

update msg model =
  case msg of
    LoadMoreComments ->
    { model | comments = comments ++ [exampleComment]}
    OpenPhoto photo ->
    { model | photo = photo }
    ClosedPhoto photo ->
    { model | photo = Nothing }

main =
  beginnerProgram { model = model
                  , view = view
                  , update = update
                  }
