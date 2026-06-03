cask "soxbot" do
  version "3.49.1"
  sha256 "3063224d15cdb64bbf808eef997e678fa03ee6ae61791b0f714648661524e54d"

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
