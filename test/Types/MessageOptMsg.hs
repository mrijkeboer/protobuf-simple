-- Generated by protobuf-simple. DO NOT EDIT!
module Types.MessageOptMsg where

import Control.Applicative ((<$>))
import Prelude ()
import qualified Data.ProtoBufInt as PB
import qualified Types.Message

newtype MessageOptMsg = MessageOptMsg
  { value :: PB.Maybe Types.Message.Message
  } deriving (PB.Show, PB.Eq, PB.Ord)

instance PB.Default MessageOptMsg where
  defaultVal = MessageOptMsg
    { value = PB.defaultVal
    }

instance PB.Mergeable MessageOptMsg where
  merge a b = MessageOptMsg
    { value = PB.merge (value a) (value b)
    }

instance PB.Required MessageOptMsg where
  reqTags _ = PB.fromList []

instance PB.WireMessage MessageOptMsg where
  fieldToValue (PB.WireTag 1 PB.LenDelim) self = (\v -> self{value = PB.merge (value self) v}) <$> PB.getMessageOpt
  fieldToValue tag self = PB.getUnknown tag self

  messageToFields self = do
    PB.putMessageOpt (PB.WireTag 1 PB.LenDelim) (value self)


