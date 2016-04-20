require 'csv'

class ProcessReportJob < ActiveJob::Base
  queue_as :default

  VOICES = <<~VOICES
    Agnes
    Albert
    Alex
    Alice
    Alva
    Amelie
    Anna
    Bad News
    Bahh
    Bells
    Boing
    Bruce
    Bubbles
    Carmit
    Cellos
    Damayanti
    Daniel
    Deranged
    Diego
    Ellen
    Fiona
    Fred
    Good News
    Hysterical
    Ioana
    Joana
    Junior
    Kanya
    Karen
    Kathy
    Kyoko
    Laura
    Lekha
    Luciana
    Maged
    Mariska
    Mei-Jia
    Melina
    Milena
    Moira
    Monica
    Nora
    Paulina
    Pipe Organ
    Princess
    Ralph
    Samantha
    Sara
    Satu
    Sin-ji
    Tessa
    Thomas
    Ting-Ting
    Trinoids
    Veena
    Vicki
    Victoria
    Whisper
    Xander
    Yelda
    Yuna
    Zarvox
    Zosia
    Zuzana
  VOICES

  def perform(owner)
    voice = VOICES.split("\n").sample
    `say -v '#{voice}' -r #{rand(150..500)} #{owner.name}`
  end
end
