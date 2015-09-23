require File.expand_path('../../spec_helper', __FILE__)

module Pod
  describe Command::Schemes do
    describe 'CLAide' do
      it 'registers it self' do
        Command.parse(%w{ schemes }).should.be.instance_of Command::Schemes
      end
    end
  end
end

