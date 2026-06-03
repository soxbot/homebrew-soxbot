cask "soxbot" do
  version "3.49.1"
  sha256 "047159462f82dfb6aa0ee9fa1b16a7e865a84bc31cae0967eb2840ea2172019e"

  url "https://cdn.soxai.io/sox.bot/releases/v#{version}/sox.bot_#{version}_aarch64.dmg"
  name "sox.bot"
  desc "AI-powered desktop agent — chat, code, file, research, SSH"
  homepage "https://soxai.io"

  depends_on macos: ">= :ventura"

  app "sox.bot.app"

  zap trash: [
    "~/Library/Application Support/io.soxai.soxbot",
    "~/Library/Logs/io.soxai.soxbot",
    "~/Library/Preferences/io.soxai.soxbot.plist",
  ]
end
