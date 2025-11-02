typedef struct
{
    int name;             /* String table offset */
    char type;            /* Function or data (4 bits) */
    char binding;         /* Local or global (4 bits) */
    char reserved;        /* Unused */
    short section;        /* Section header index */
    long value;           /* Section offset or absolute address */
    long size;            /* Object size in bytes */
} Elf64_Symbol;