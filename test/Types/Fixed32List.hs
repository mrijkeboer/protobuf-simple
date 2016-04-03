-- Generated by protobuf-simple. DO NOT EDIT!
module Types.Fixed32List where

import Control.Applicative ((<$>))
import Prelude ()
import qualified Data.ProtoBufInt as PB

newtype Fixed32List = Fixed32List
  { value :: PB.Seq PB.Word32
  } deriving (PB.Show, PB.Eq, PB.Ord)

instance PB.Default Fixed32List where
  defaultVal = Fixed32List
    { value = PB.defaultVal
    }

instance PB.Mergeable Fixed32List where
  merge a b = Fixed32List
    { value = PB.merge (value a) (value b)
    }

instance PB.Required Fixed32List where
  reqTags _ = PB.fromList []

instance PB.WireMessage Fixed32List where
  fieldToValue (PB.WireTag 1 PB.Bit32) self = (\v -> self{value = PB.append (value self) v}) <$> PB.getFixed32
  fieldToValue tag self = PB.getUnknown tag self

  messageToFields self = do
    PB.putFixed32List (PB.WireTag 1 PB.Bit32) (value self)


