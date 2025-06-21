import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.*;

public class UnicodeMarkdownTable {
    public static void main(String[] args) {

        // selected unicode ranges/blocks to display
        List<Integer[]> blockAddresses = new ArrayList<>();
        blockAddresses.add(new Integer[]{0x0, 0x007F}); // Basic Latin
        blockAddresses.add(new Integer[]{0x0B00, 0x0B7F}); // Oriya
        blockAddresses.add(new Integer[]{0x1000, 0x109F}); // Myanmar
        blockAddresses.add(new Integer[]{0x12000, 0x123FF}); // Cuneiform
        blockAddresses.add(new Integer[]{0x1F600, 0x1F64F}); // Emoticons
        blockAddresses.add(new Integer[]{0x13000, 0x1342F}); // Egyptian Hieroglyphs

        // Group characters by UnicodeBlock
        Map<Character.UnicodeBlock, List<Integer>> blockMap = new LinkedHashMap<>();
        for (Integer[] blockAddress : blockAddresses) {
            for (int codePoint = blockAddress[0]; codePoint <= blockAddress[1]; codePoint++) {
                Character.UnicodeBlock block = Character.UnicodeBlock.of(codePoint);
                blockMap.computeIfAbsent(block, k -> new ArrayList<>()).add(codePoint);
            }
        }

        StringBuilder output = new StringBuilder();
        output.append("""
                ---
                title: "Font: Unicode Font Fallback"
                author: [Pascal Wagler]
                date: "2025-06-15"
                subject: "Markdown"
                keywords: [Markdown, Example, Unicode, Font, Pandoc]
                lang: "en"
                mainfont: "Source Sans 3"
                mainfontfallback:
                  - "Noto Sans Oriya:"
                  - "Noto Sans Myanmar:"
                  - "Noto Sans Cuneiform:"
                  - "Noto Color Emoji:mode=harf"
                  - "Noto Sans Egyptian Hieroglyphs:"
                ...
                
                # Font: Unicode Font Fallback
                
                This example document demonstrates the use of `mainfontfallback` for various characters that are
                not present in the regular document font. LuaTeX must be used as the PDF engine in combination
                with `mainfont` for `mainfontfallback` to take effect.
                
                """);

        for (Map.Entry<Character.UnicodeBlock, List<Integer>> entry : blockMap.entrySet()) {
            Character.UnicodeBlock block = entry.getKey();
            List<Integer> chars = entry.getValue();

            output.append("## ").append(block != null ? block.toString().replace('_', ' ') : "UNKNOWN").append("\n\n");
            output.append("| Code Point |");
            int columns = 16;

            for (int col = 0; col < columns; col++) {
                output.append(String.format(" %X |", col));
            }
            output.append("\n");

            output.append("| :------: |");
            for (int col = 0; col < columns; col++) {
                output.append(" :-: |");
            }
            output.append("\n");

            for (int i = 0; i < chars.size(); i += columns) {
                Integer firstChar = chars.get(i);
                int rowBase = firstChar.intValue() & 0xFFFFF0;
                output.append(String.format("| U+%05X |", rowBase));
                for (int j = 0; j < columns; j++) {
                    int index = i + j;
                    if (index >= chars.size()) {
                        output.append("   |");
                    } else {
                        int character = chars.get(index);
                        if (Character.isISOControl(character)) {
                            output.append(" · |");
                        } else if (!Character.isDefined(character)) {
                            output.append("   |");
                        } else {
                            output.append(" ").append(Character.toChars(character)).append(" |");
                        }
                    }
                }
                output.append("\n");
            }
            output.append("\n");
        }

        try (BufferedWriter writer = new BufferedWriter(new FileWriter("document.md"))) {
            writer.write(output.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
