describe Fastlane::Actions::AltoolAction do
  describe '#run' do
    it 'prints a message' do
      plugin_description = Fastlane::Actions::AltoolAction.description
      expect(plugin_description).to include("Upload IPA to iTunes Connect using altool")
    end
  end
end
