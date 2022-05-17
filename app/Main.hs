module Main where

import Euterpea.Music
import Euterpea (playDev, playDevS, devices)

-- It's in 3-time (3/4 or 6/8)
-- so each bar lasts one dotted half note (@dhn@)
melody = line
         [ g  3 dhn,
           c  3  hn, rest  qn,
           ef 3  en, f  3  en, g  3  hn,
           c  3  hn, ef 3  en, f  3  en,

           d  3 (dwn + dhn), rest dhn,

           f  3 dhn,
           bf 2  hn, rest  qn,
           d  3  en, ef 3  en, f  3  hn,
           bf 2 dhn,

           ef 3  en, d  3  en, c  3  dwn,
           rest dhn
          ]

-- Convenient wrapper
inst :: InstrumentName -> Volume -> Music Pitch -> Music (Pitch, Volume)
inst i v = addVolume v . instrument i

-- Repeat each element four times
quadruplicate :: [a] -> [a]
quadruplicate = concatMap (replicate 4)

-- I always find this useful
bpm = tempo . (/ 120.0)

-- YMMV
ch = 2 :: Int

main :: IO ()
main = playDev ch $ bpm 170 . inst Cello 60 $ melody
