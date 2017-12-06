require 'spec_helper'

RSpec.describe RubySMB::Dcerpc::Srvsvc do

  # let(:raw_ioctl_response) { '00000228fe534d4240000100000000000b00020009000000000000000700000000000000fffe000001000000210000000004000023329addba563478cedd4cefdbdd9cc93100000017c01100850000000000000001000000ffffffff700000000000000070000000b801000000000000000000000500020310000000b801000000000000a00100000000000001000000010000000000020006000000040002000600000008000200000000800c00020010000200000000001400020018000200000000801c00020020000200000000002400020028000200030000802c000200300002000000000034000200070000000000000007000000410044004d0049004e002400000000000d000000000000000d000000520065006d006f00740065002000410064006d0069006e0000000000020000000000000002000000430000000100000000000000010000000000000003000000000000000300000043002400000000000e000000000000000e000000440065006600610075006c007400200073006800610072006500000007000000000000000700000064006f00670065003600340000000000010000000000000001000000000000000500000000000000050000004900500043002400000000000b000000000000000b000000520065006d006f00740065002000490050004300000000000600000000000000060000005500730065007200730000000100000000000000010000000000000006000000380002000000000000000000'.strip.gsub(/([A-Fa-f0-9]{1,2})\s*?/) { $1.hex.chr } }
  # #we remove first 4 characters
  # let(:stripped_raw_ioctl_response) { raw_ioctl_response[4..-1] }
  # let(:ioctl_response) { RubySMB::SMB2::Packet::IoctlResponse.read(stripped_raw_ioctl_response) }
  # let(:buffer) { ioctl_response.buffer }
  # let(:dcerpc_response) { RubySMB::Dcerpc::Response.read(buffer) }
  # let(:stub) { dcerpc_response.stub.to_binary_s }



  #let(:parse_response) { RubySMB::Dcerpc::Srvsvc::NetShareEnumAll.parse_response(stub) }

  describe 'NetShareEnumAll' do
    let(:stub){ RubySMB::Dcerpc::Srvsvc::NetShareEnumAll.new(host: '192.161.204.122') }

    it 'correctly makes a dcerpc stub' do
      expect(stub.do_num_bytes).to eq 80
    end
  end

end
