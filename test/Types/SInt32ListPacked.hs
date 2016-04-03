-- Generated by protobuf-simple. DO NOT EDIT!
module Types.SInt32ListPacked where

import Control.Applicative ((<$>))
import Prelude ()
import qualified Data.ProtoBufInt as PB

newtype SInt32ListPacked = SInt32ListPacked
  { value :: PB.Seq PB.Int32
  } deriving (PB.Show, PB.Eq, PB.Ord)

instance PB.Default SInt32ListPacked where
  defaultVal = SInt32ListPacked
    { value = PB.defaultVal
    }

instance PB.Mergeable SInt32ListPacked where
  merge a b = SInt32ListPacked
    { value = PB.merge (value a) (value b)
    }

instance PB.Required SInt32ListPacked where
  reqTags _ = PB.fromList []

instance PB.WireMessage SInt32ListPacked where
  fieldToValue (PB.WireTag 1 PB.LenDelim) self = (\v -> self{value = PB.merge (value self) v}) <$> PB.getSInt32Packed
  fieldToValue (PB.WireTag 1 PB.VarInt) self = (\v -> self{value = PB.append (value self) v}) <$> PB.getSInt32
  fieldToValue tag self = PB.getUnknown tag self

  messageToFields self = do
    PB.putSInt32Packed (PB.WireTag 1 PB.LenDelim) (value self)


