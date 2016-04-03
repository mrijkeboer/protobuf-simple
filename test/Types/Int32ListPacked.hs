-- Generated by protobuf-simple. DO NOT EDIT!
module Types.Int32ListPacked where

import Control.Applicative ((<$>))
import Prelude ()
import qualified Data.ProtoBufInt as PB

newtype Int32ListPacked = Int32ListPacked
  { value :: PB.Seq PB.Int32
  } deriving (PB.Show, PB.Eq, PB.Ord)

instance PB.Default Int32ListPacked where
  defaultVal = Int32ListPacked
    { value = PB.defaultVal
    }

instance PB.Mergeable Int32ListPacked where
  merge a b = Int32ListPacked
    { value = PB.merge (value a) (value b)
    }

instance PB.Required Int32ListPacked where
  reqTags _ = PB.fromList []

instance PB.WireMessage Int32ListPacked where
  fieldToValue (PB.WireTag 1 PB.LenDelim) self = (\v -> self{value = PB.merge (value self) v}) <$> PB.getInt32Packed
  fieldToValue (PB.WireTag 1 PB.VarInt) self = (\v -> self{value = PB.append (value self) v}) <$> PB.getInt32
  fieldToValue tag self = PB.getUnknown tag self

  messageToFields self = do
    PB.putInt32Packed (PB.WireTag 1 PB.LenDelim) (value self)


