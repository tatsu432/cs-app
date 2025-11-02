typedef struct
{
    long offset; /* Offset of the reference to relocate */
    long type;   /* Relocation type */
    long symbol; /* Symbol table index */
    long addend; /* Constant part of relocation expression */
} Elf64_Rela;