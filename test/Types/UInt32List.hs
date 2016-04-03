-- Generated by protobuf-simple. DO NOT EDIT!
module Types.UInt32List where

import Control.Applicative ((<$>))
import Prelude ()
import qualified Data.ProtoBufInt as PB

newtype UInt32List = UInt32List
  { value :: PB.Seq PB.Word32
  } deriving (PB.Show, PB.Eq, PB.Ord)

instance PB.Default UInt32List where
  defaultVal = UInt32List
    { value = PB.defaultVal
    }

instance PB.Mergeable UInt32List where
  merge a b = UInt32List
    { value = PB.merge (value a) (value b)
    }

instance PB.Required UInt32List where
  reqTags _ = PB.fromList []

instance PB.WireMessage UInt32List where
  fieldToValue (PB.WireTag 1 PB.VarInt) self = (\v -> self{value = PB.append (value self) v}) <$> PB.getUInt32
  fieldToValue tag self = PB.getUnknown tag self

  messageToFields self = do
    PB.putUInt32List (PB.WireTag 1 PB.VarInt) (value self)


