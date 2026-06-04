cask "soxbot" do
  version "3.52.0"
  sha256 "a4f058adbb64f2c28a7a9458879b1308d8bdbe94a3836138e614d0bbf0a350a0"

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
