cask "soxbot" do
  version "3.49.1"
  sha256 "20d4ab98ee3846434c65f50c8181eb0252c8e0ed5a4432b82cb5f248c72fc53c"

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
