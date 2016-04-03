-- Generated by protobuf-simple. DO NOT EDIT!
module Types.FloatListPacked where

import Control.Applicative ((<$>))
import Prelude ()
import qualified Data.ProtoBufInt as PB

newtype FloatListPacked = FloatListPacked
  { value :: PB.Seq PB.Float
  } deriving (PB.Show, PB.Eq, PB.Ord)

instance PB.Default FloatListPacked where
  defaultVal = FloatListPacked
    { value = PB.defaultVal
    }

instance PB.Mergeable FloatListPacked where
  merge a b = FloatListPacked
    { value = PB.merge (value a) (value b)
    }

instance PB.Required FloatListPacked where
  reqTags _ = PB.fromList []

instance PB.WireMessage FloatListPacked where
  fieldToValue (PB.WireTag 1 PB.LenDelim) self = (\v -> self{value = PB.merge (value self) v}) <$> PB.getFloatPacked
  fieldToValue (PB.WireTag 1 PB.Bit32) self = (\v -> self{value = PB.append (value self) v}) <$> PB.getFloat
  fieldToValue tag self = PB.getUnknown tag self

  messageToFields self = do
    PB.putFloatPacked (PB.WireTag 1 PB.LenDelim) (value self)


