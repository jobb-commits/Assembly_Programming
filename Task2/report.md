## Memory Map

| Variable | Data Type | Size | Purpose |
|----------|-----------|------|---------|
| marks | Byte Array | 10 bytes | Stores the marks of ten students |
| total | Quadword (dq) | 8 bytes | Stores the sum of all marks |
| average | Quadword (dq) | 8 bytes | Stores the average mark |
| highest | Byte (db) | 1 byte | Stores the highest mark |
| lowest | Byte (db) | 1 byte | Stores the lowest mark |
| failCount | Byte (db) | 1 byte | Counts students scoring 0–39 |
| passCount | Byte (db) | 1 byte | Counts students scoring 40–49 |
| creditCount | Byte (db) | 1 byte | Counts students scoring 50–69 |
| distinctionCount | Byte (db) | 1 byte | Counts students scoring 70–100 |


## Addressing Modes Used

### Immediate Addressing

Immediate addressing uses a constant value directly in an instruction.

---

##3.  Comparison with C/Python
## Comparison with C and Python Indexing

Assembly language requires the programmer to manually access array elements using memory addresses and registers. In this program, indexed addressing is achieved using `marks + rcx`, where RCX stores the current index.

In C, the programmer writes `marks[i]`, and the compiler automatically calculates the memory address.

In Python, indexing is even simpler because the interpreter manages memory allocation and bounds checking automatically.

Assembly offers greater control and efficiency but requires more detailed programming and manual memory management.


## Boundary Test Cases

| Input | Expected Classification | Actual Result | Status |
|------:|-------------------------|--------------|--------|
| 0 | Fail | Fail | Pass |
| 39 | Fail | Fail | Pass |
| 40 | Pass | Pass | Pass |
| 69 | Credit | Credit | Pass |
| 70 | Distinction | Distinction | Pass |
| 100 | Distinction | Distinction | Pass |

## Program Results

| Calculation | Result |
|------------|-------:|
| Total Marks | 567 |
| Average | 56 |
| Highest Mark | 100 |
| Lowest Mark | 0 |
| Fail Count | 2 |
| Pass Count | 2 |
| Credit Count | 3 |
| Distinction Count | 3 |


## Conclusion

The Student Marks Processor successfully demonstrated the use of assembly language to manipulate arrays using registers and loops. The program calculated the total, average, highest and lowest marks while classifying student results into fail, pass, credit and distinction categories. It also demonstrated immediate, register, indexed and direct addressing modes, providing practical experience with low-level memory manipulation and data processing.
