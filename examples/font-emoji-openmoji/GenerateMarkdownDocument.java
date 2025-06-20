import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.*;

public class UnicodeMarkdownTable {
    public static void main(String[] args) {

        // selected unicode ranges/blocks to display
        List<Integer[]> blockAddresses = new ArrayList<>();
        blockAddresses.add(new Integer[]{0x0, 0xFFFFFF});

        // Group characters by UnicodeBlock
        Map<Character.UnicodeBlock, List<Integer>> blockMap = new LinkedHashMap<>();
        for (Integer[] blockAddress : blockAddresses) {
            for (int codePoint = blockAddress[0]; codePoint <= blockAddress[1]; codePoint++) {
                if (Character.isEmojiPresentation(codePoint)) {
                    Character.UnicodeBlock block = Character.UnicodeBlock.of(codePoint);
                    blockMap.computeIfAbsent(block, k -> new ArrayList<>()).add(codePoint);
                }
            }
        }

        StringBuilder output = new StringBuilder();
        output.append("""
                ---
                title: "Font: Emoji with OpenMoji"
                author: [Pascal Wagler]
                date: "2025-06-15"
                subject: "Markdown"
                keywords: [Markdown, Example, Unicode, Emoji, Font, Pandoc]
                lang: "en"
                mainfont: "Source Sans 3"
                mainfontfallback:
                  - "OpenMoji:mode=harf"
                ...
                
                # Font: Emoji with *OpenMoji*
                
                This example document demonstrates the use of emoji characters, which should be displayed using the
                *OpenMoji* font. The main font, specified by the variable `mainfont`, is *Source Sans 3*,
                which does not include emoji characters. Missing characters are provided by *OpenMoji*,
                set as the fallback font using the variable `mainfontfallback`. The characters are grouped
                according to their Unicode code blocks.
                
                LuaTeX must be used as the PDF engine in combination with `mainfont` for `mainfontfallback`
                to take effect. This is why `mainfont` is explicitly set to *Source Sans 3*, even though it is
                already the default font in the Eisvogel template.
                
                """);

        for (Map.Entry<Character.UnicodeBlock, List<Integer>> entry : blockMap.entrySet()) {
            Character.UnicodeBlock block = entry.getKey();
            List<Integer> chars = entry.getValue();

            output.append("## ").append(block != null ? block.toString().replace('_', ' ') : "UNKNOWN").append("\n\n");

            for (int i = 0; i < chars.size(); i++) {
                output.append(Character.toChars(chars.get(i))).append(" ");
            }
            output.append("\n\n");
        }

        try (BufferedWriter writer = new BufferedWriter(new FileWriter("document.md"))) {
            writer.write(output.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
