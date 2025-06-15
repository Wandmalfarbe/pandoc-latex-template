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
                title: "Unicode Emoji with Noto Color Emoji"
                author: [Pascal Wagler]
                date: "2025-06-15"
                subject: "Markdown"
                keywords: [Markdown, Example, Unicode, Emoji, Font, Pandoc]
                lang: "en"
                mainfont: "Noto Sans"
                mainfontfallback:
                  - "Noto Color Emoji:mode=harf"
                ...
                
                # Unicode Emoji with *Noto Color Emoji*
                
                This example document demonstrates the usage of emoji characters that should be displayed with the
                font *Noto Color Emoji*. The Font *Noto Sans* is used as the main font with the variable `mainfont` but
                lacks emoji characters. Missing characters are provided by *Noto Color Emoji* as fallback font with
                the variable `mainfontfallback`. The characters are grouped by their Unicode code blocks.
                
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
