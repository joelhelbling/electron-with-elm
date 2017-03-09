module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)


main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


init : ( Model, Cmd Msg )
init =
    let
        state =
            Model "Yeah, ummmm..."
    in
        ( state, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- MODEL


type Msg
    = Name String


type alias Model =
    { name : String
    }


model : Model
model =
    Model "ummmm..."



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Name name ->
            ( { model | name = name }, Cmd.none )



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ h1 [] [ text ("Hello, " ++ model.name ++ "!") ]
        , div []
            [ button [ onClick (Name "Gus") ] [ text "Gus" ]
            , button [ onClick (Name "Fran") ] [ text "Fran" ]
            , button [ onClick (Name "World") ] [ text "World" ]
            ]
        ]
