package lyc.compiler.files;

import java.io.FileWriter;
import java.io.IOException;

public class AsmCodeGenerator implements FileGenerator {

    @Override
    public void generate(FileWriter fileWriter) throws IOException {
        String asmOutput = generateHeader();
        fileWriter.write(asmOutput);
    }

    public static String generateHeader() {
        String asmHeader = "include macros2.asm\n";
        asmHeader += "include number.asm\n\n";
        asmHeader += ".MODEL LARGE\n";
        asmHeader += ".386\n";
        asmHeader += ".STACK 200h\n\n";
        asmHeader += "MAXTEXTSIZE equ 50\n\n";
        return asmHeader;
    }
}
