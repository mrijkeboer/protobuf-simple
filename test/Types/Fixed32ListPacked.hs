-- Generated by protobuf-simple. DO NOT EDIT!
module Types.Fixed32ListPacked where

import Control.Applicative ((<$>))
import Prelude ()
import qualified Data.ProtoBufInt as PB

newtype Fixed32ListPacked = Fixed32ListPacked
  { value :: PB.Seq PB.Word32
  } deriving (PB.Show, PB.Eq, PB.Ord)

instance PB.Default Fixed32ListPacked where
  defaultVal = Fixed32ListPacked
    { value = PB.defaultVal
    }

instance PB.Mergeable Fixed32ListPacked where
  merge a b = Fixed32ListPacked
    { value = PB.merge (value a) (value b)
    }

instance PB.Required Fixed32ListPacked where
  reqTags _ = PB.fromList []

instance PB.WireMessage Fixed32ListPacked where
  fieldToValue (PB.WireTag 1 PB.LenDelim) self = (\v -> self{value = PB.merge (value self) v}) <$> PB.getFixed32Packed
  fieldToValue (PB.WireTag 1 PB.Bit32) self = (\v -> self{value = PB.append (value self) v}) <$> PB.getFixed32
  fieldToValue tag self = PB.getUnknown tag self

  messageToFields self = do
    PB.putFixed32Packed (PB.WireTag 1 PB.LenDelim) (value self)


