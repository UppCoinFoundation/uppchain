--Commands.elm ---
--
--Filename: Commands.elm
--Description:
--Author: Manuel Schneckenreither
--Maintainer:
--Created: Fri Dec 29 15:51:35 2017 (+0100)
--Version:
--Package-Requires: ()
--Last-Updated: Fri Dec 29 18:02:56 2017 (+0100)
--          By: Manuel Schneckenreither
--    Update #: 7
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


module Commands exposing
    ( Command(..)
    )


type Command = Increment
             | Decrement
             | DisableDataChannelSend Bool
             | CreateConnection


--
--Commands.elm ends here
