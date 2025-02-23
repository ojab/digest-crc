require 'digest/crc16'

class Digest::CRC16USB < Digest::CRC; end

if RUBY_ENGINE == 'ruby'
  begin;
    require 'digest/crc16_usb/crc16_usb_ext'
    return
  rescue LoadError
  end
end

module Digest
  #
  # Implements the CRC16 USB algorithm.
  #
  class CRC16USB < CRC16

    INIT_CRC = 0xffff

    XOR_MASK = 0xffff

  end
end
