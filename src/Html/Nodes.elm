--Nodes.elm ---
--
--Filename: Nodes.elm
--Description:
--Author: Manuel Schneckenreither
--Maintainer:
--Created: Fri Dec 29 15:16:35 2017 (+0100)
--Version:
--Package-Requires: ()
--Last-Updated: Fri Dec 29 15:23:03 2017 (+0100)
--          By: Manuel Schneckenreither
--    Update #: 14
--URL:
--Doc URL:
--Keywords:
--Compatibility:
--
--

--Commentary:
--
--
--
--

--Change Log:
--
--
--
--
--
--
--

--Code:

module Html.Nodes exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)

-- | Takes a URL and a list of attributes and produces a <script src="URL" ... >
-- tag.
script : String -> List (Attribute msg) -> Html msg
script url attributes = node "script" (src url :: attributes) []


--
--Nodes.elm ends here
