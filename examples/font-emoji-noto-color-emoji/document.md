---
title: "Font: Emoji with Noto Color Emoji"
author: [Pascal Wagler]
date: "2025-06-15"
subject: "Markdown"
keywords: [Markdown, Example, Unicode, Emoji, Font, Pandoc]
lang: "en"
mainfont: "Source Sans 3"
mainfontfallback:
  - "Noto Color Emoji:mode=harf"
...

# Font: Emoji with *Noto Color Emoji*

This example document demonstrates the use of emoji characters, which should be displayed using the
*Noto Color Emoji* font. The main font, specified by the variable `mainfont`, is *Source Sans 3*,
which does not include emoji characters. Missing characters are provided by *Noto Color Emoji*,
set as the fallback font using the variable `mainfontfallback`. The characters are grouped
according to their Unicode code blocks.

LuaTeX must be used as the PDF engine in combination with `mainfont` for `mainfontfallback`
to take effect. This is why `mainfont` is explicitly set to *Source Sans 3*, even though it is
already the default font in the Eisvogel template.

## MISCELLANEOUS TECHNICAL

⌚ ⌛ ⏩ ⏪ ⏫ ⏬ ⏰ ⏳ 

## GEOMETRIC SHAPES

◽ ◾ 

## MISCELLANEOUS SYMBOLS

☔ ☕ ♈ ♉ ♊ ♋ ♌ ♍ ♎ ♏ ♐ ♑ ♒ ♓ ♿ ⚓ ⚡ ⚪ ⚫ ⚽ ⚾ ⛄ ⛅ ⛎ ⛔ ⛪ ⛲ ⛳ ⛵ ⛺ ⛽ 

## DINGBATS

✅ ✊ ✋ ✨ ❌ ❎ ❓ ❔ ❕ ❗ ➕ ➖ ➗ ➰ ➿ 

## MISCELLANEOUS SYMBOLS AND ARROWS

⬛ ⬜ ⭐ ⭕ 

## MAHJONG TILES

🀄 

## PLAYING CARDS

🃏 

## ENCLOSED ALPHANUMERIC SUPPLEMENT

🆎 🆑 🆒 🆓 🆔 🆕 🆖 🆗 🆘 🆙 🆚 🇦 🇧 🇨 🇩 🇪 🇫 🇬 🇭 🇮 🇯 🇰 🇱 🇲 🇳 🇴 🇵 🇶 🇷 🇸 🇹 🇺 🇻 🇼 🇽 🇾 🇿 

## ENCLOSED IDEOGRAPHIC SUPPLEMENT

🈁 🈚 🈯 🈲 🈳 🈴 🈵 🈶 🈸 🈹 🈺 🉐 🉑 

## MISCELLANEOUS SYMBOLS AND PICTOGRAPHS

🌀 🌁 🌂 🌃 🌄 🌅 🌆 🌇 🌈 🌉 🌊 🌋 🌌 🌍 🌎 🌏 🌐 🌑 🌒 🌓 🌔 🌕 🌖 🌗 🌘 🌙 🌚 🌛 🌜 🌝 🌞 🌟 🌠 🌭 🌮 🌯 🌰 🌱 🌲 🌳 🌴 🌵 🌷 🌸 🌹 🌺 🌻 🌼 🌽 🌾 🌿 🍀 🍁 🍂 🍃 🍄 🍅 🍆 🍇 🍈 🍉 🍊 🍋 🍌 🍍 🍎 🍏 🍐 🍑 🍒 🍓 🍔 🍕 🍖 🍗 🍘 🍙 🍚 🍛 🍜 🍝 🍞 🍟 🍠 🍡 🍢 🍣 🍤 🍥 🍦 🍧 🍨 🍩 🍪 🍫 🍬 🍭 🍮 🍯 🍰 🍱 🍲 🍳 🍴 🍵 🍶 🍷 🍸 🍹 🍺 🍻 🍼 🍾 🍿 🎀 🎁 🎂 🎃 🎄 🎅 🎆 🎇 🎈 🎉 🎊 🎋 🎌 🎍 🎎 🎏 🎐 🎑 🎒 🎓 🎠 🎡 🎢 🎣 🎤 🎥 🎦 🎧 🎨 🎩 🎪 🎫 🎬 🎭 🎮 🎯 🎰 🎱 🎲 🎳 🎴 🎵 🎶 🎷 🎸 🎹 🎺 🎻 🎼 🎽 🎾 🎿 🏀 🏁 🏂 🏃 🏄 🏅 🏆 🏇 🏈 🏉 🏊 🏏 🏐 🏑 🏒 🏓 🏠 🏡 🏢 🏣 🏤 🏥 🏦 🏧 🏨 🏩 🏪 🏫 🏬 🏭 🏮 🏯 🏰 🏴 🏸 🏹 🏺 🏻 🏼 🏽 🏾 🏿 🐀 🐁 🐂 🐃 🐄 🐅 🐆 🐇 🐈 🐉 🐊 🐋 🐌 🐍 🐎 🐏 🐐 🐑 🐒 🐓 🐔 🐕 🐖 🐗 🐘 🐙 🐚 🐛 🐜 🐝 🐞 🐟 🐠 🐡 🐢 🐣 🐤 🐥 🐦 🐧 🐨 🐩 🐪 🐫 🐬 🐭 🐮 🐯 🐰 🐱 🐲 🐳 🐴 🐵 🐶 🐷 🐸 🐹 🐺 🐻 🐼 🐽 🐾 👀 👂 👃 👄 👅 👆 👇 👈 👉 👊 👋 👌 👍 👎 👏 👐 👑 👒 👓 👔 👕 👖 👗 👘 👙 👚 👛 👜 👝 👞 👟 👠 👡 👢 👣 👤 👥 👦 👧 👨 👩 👪 👫 👬 👭 👮 👯 👰 👱 👲 👳 👴 👵 👶 👷 👸 👹 👺 👻 👼 👽 👾 👿 💀 💁 💂 💃 💄 💅 💆 💇 💈 💉 💊 💋 💌 💍 💎 💏 💐 💑 💒 💓 💔 💕 💖 💗 💘 💙 💚 💛 💜 💝 💞 💟 💠 💡 💢 💣 💤 💥 💦 💧 💨 💩 💪 💫 💬 💭 💮 💯 💰 💱 💲 💳 💴 💵 💶 💷 💸 💹 💺 💻 💼 💽 💾 💿 📀 📁 📂 📃 📄 📅 📆 📇 📈 📉 📊 📋 📌 📍 📎 📏 📐 📑 📒 📓 📔 📕 📖 📗 📘 📙 📚 📛 📜 📝 📞 📟 📠 📡 📢 📣 📤 📥 📦 📧 📨 📩 📪 📫 📬 📭 📮 📯 📰 📱 📲 📳 📴 📵 📶 📷 📸 📹 📺 📻 📼 📿 🔀 🔁 🔂 🔃 🔄 🔅 🔆 🔇 🔈 🔉 🔊 🔋 🔌 🔍 🔎 🔏 🔐 🔑 🔒 🔓 🔔 🔕 🔖 🔗 🔘 🔙 🔚 🔛 🔜 🔝 🔞 🔟 🔠 🔡 🔢 🔣 🔤 🔥 🔦 🔧 🔨 🔩 🔪 🔫 🔬 🔭 🔮 🔯 🔰 🔱 🔲 🔳 🔴 🔵 🔶 🔷 🔸 🔹 🔺 🔻 🔼 🔽 🕋 🕌 🕍 🕎 🕐 🕑 🕒 🕓 🕔 🕕 🕖 🕗 🕘 🕙 🕚 🕛 🕜 🕝 🕞 🕟 🕠 🕡 🕢 🕣 🕤 🕥 🕦 🕧 🕺 🖕 🖖 🖤 🗻 🗼 🗽 🗾 🗿 

## EMOTICONS

😀 😁 😂 😃 😄 😅 😆 😇 😈 😉 😊 😋 😌 😍 😎 😏 😐 😑 😒 😓 😔 😕 😖 😗 😘 😙 😚 😛 😜 😝 😞 😟 😠 😡 😢 😣 😤 😥 😦 😧 😨 😩 😪 😫 😬 😭 😮 😯 😰 😱 😲 😳 😴 😵 😶 😷 😸 😹 😺 😻 😼 😽 😾 😿 🙀 🙁 🙂 🙃 🙄 🙅 🙆 🙇 🙈 🙉 🙊 🙋 🙌 🙍 🙎 🙏 

## TRANSPORT AND MAP SYMBOLS

🚀 🚁 🚂 🚃 🚄 🚅 🚆 🚇 🚈 🚉 🚊 🚋 🚌 🚍 🚎 🚏 🚐 🚑 🚒 🚓 🚔 🚕 🚖 🚗 🚘 🚙 🚚 🚛 🚜 🚝 🚞 🚟 🚠 🚡 🚢 🚣 🚤 🚥 🚦 🚧 🚨 🚩 🚪 🚫 🚬 🚭 🚮 🚯 🚰 🚱 🚲 🚳 🚴 🚵 🚶 🚷 🚸 🚹 🚺 🚻 🚼 🚽 🚾 🚿 🛀 🛁 🛂 🛃 🛄 🛅 🛌 🛐 🛑 🛒 🛕 🛖 🛗 🛜 🛝 🛞 🛟 🛫 🛬 🛴 🛵 🛶 🛷 🛸 🛹 🛺 🛻 🛼 

## GEOMETRIC SHAPES EXTENDED

🟠 🟡 🟢 🟣 🟤 🟥 🟦 🟧 🟨 🟩 🟪 🟫 🟰 

## SUPPLEMENTAL SYMBOLS AND PICTOGRAPHS

🤌 🤍 🤎 🤏 🤐 🤑 🤒 🤓 🤔 🤕 🤖 🤗 🤘 🤙 🤚 🤛 🤜 🤝 🤞 🤟 🤠 🤡 🤢 🤣 🤤 🤥 🤦 🤧 🤨 🤩 🤪 🤫 🤬 🤭 🤮 🤯 🤰 🤱 🤲 🤳 🤴 🤵 🤶 🤷 🤸 🤹 🤺 🤼 🤽 🤾 🤿 🥀 🥁 🥂 🥃 🥄 🥅 🥇 🥈 🥉 🥊 🥋 🥌 🥍 🥎 🥏 🥐 🥑 🥒 🥓 🥔 🥕 🥖 🥗 🥘 🥙 🥚 🥛 🥜 🥝 🥞 🥟 🥠 🥡 🥢 🥣 🥤 🥥 🥦 🥧 🥨 🥩 🥪 🥫 🥬 🥭 🥮 🥯 🥰 🥱 🥲 🥳 🥴 🥵 🥶 🥷 🥸 🥹 🥺 🥻 🥼 🥽 🥾 🥿 🦀 🦁 🦂 🦃 🦄 🦅 🦆 🦇 🦈 🦉 🦊 🦋 🦌 🦍 🦎 🦏 🦐 🦑 🦒 🦓 🦔 🦕 🦖 🦗 🦘 🦙 🦚 🦛 🦜 🦝 🦞 🦟 🦠 🦡 🦢 🦣 🦤 🦥 🦦 🦧 🦨 🦩 🦪 🦫 🦬 🦭 🦮 🦯 🦰 🦱 🦲 🦳 🦴 🦵 🦶 🦷 🦸 🦹 🦺 🦻 🦼 🦽 🦾 🦿 🧀 🧁 🧂 🧃 🧄 🧅 🧆 🧇 🧈 🧉 🧊 🧋 🧌 🧍 🧎 🧏 🧐 🧑 🧒 🧓 🧔 🧕 🧖 🧗 🧘 🧙 🧚 🧛 🧜 🧝 🧞 🧟 🧠 🧡 🧢 🧣 🧤 🧥 🧦 🧧 🧨 🧩 🧪 🧫 🧬 🧭 🧮 🧯 🧰 🧱 🧲 🧳 🧴 🧵 🧶 🧷 🧸 🧹 🧺 🧻 🧼 🧽 🧾 🧿 

## SYMBOLS AND PICTOGRAPHS EXTENDED A

🩰 🩱 🩲 🩳 🩴 🩵 🩶 🩷 🩸 🩹 🩺 🩻 🩼 🪀 🪁 🪂 🪃 🪄 🪅 🪆 🪇 🪈 🪉 🪏 🪐 🪑 🪒 🪓 🪔 🪕 🪖 🪗 🪘 🪙 🪚 🪛 🪜 🪝 🪞 🪟 🪠 🪡 🪢 🪣 🪤 🪥 🪦 🪧 🪨 🪩 🪪 🪫 🪬 🪭 🪮 🪯 🪰 🪱 🪲 🪳 🪴 🪵 🪶 🪷 🪸 🪹 🪺 🪻 🪼 🪽 🪾 🪿 🫀 🫁 🫂 🫃 🫄 🫅 🫆 🫎 🫏 🫐 🫑 🫒 🫓 🫔 🫕 🫖 🫗 🫘 🫙 🫚 🫛 🫜 🫟 🫠 🫡 🫢 🫣 🫤 🫥 🫦 🫧 🫨 🫩 🫰 🫱 🫲 🫳 🫴 🫵 🫶 🫷 🫸 

