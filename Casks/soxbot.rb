cask "soxbot" do
  version "3.52.1"
  sha256 "4b1748ed4880661c179f544005b927d40dea38a73912dd6af906c01eea3a3e33"

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
