-- Generated by protobuf-simple. DO NOT EDIT!
module Types.BoolOptMsg where

import Control.Applicative ((<$>))
import Prelude ()
import qualified Data.ProtoBufInt as PB

newtype BoolOptMsg = BoolOptMsg
  { value :: PB.Maybe PB.Bool
  } deriving (PB.Show, PB.Eq, PB.Ord)

instance PB.Default BoolOptMsg where
  defaultVal = BoolOptMsg
    { value = PB.defaultVal
    }

instance PB.Mergeable BoolOptMsg where
  merge a b = BoolOptMsg
    { value = PB.merge (value a) (value b)
    }

instance PB.Required BoolOptMsg where
  reqTags _ = PB.fromList []

instance PB.WireMessage BoolOptMsg where
  fieldToValue (PB.WireTag 1 PB.VarInt) self = (\v -> self{value = PB.merge (value self) v}) <$> PB.getBoolOpt
  fieldToValue tag self = PB.getUnknown tag self

  messageToFields self = do
    PB.putBoolOpt (PB.WireTag 1 PB.VarInt) (value self)


