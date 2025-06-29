# MIPS Assembly - Temperature, Circle Area, and Square Perimeter Calculator

This MIPS Assembly program performs three calculations based on a single user input:

1. Converts a Celsius temperature to Fahrenheit.
2. Calculates the area of a circle using the input as the radius.
3. Calculates the perimeter of a square using the input as the side length.

## 🧮 How It Works

- The program prompts the user to enter an integer number.
- It uses MIPS syscalls to handle input/output and basic arithmetic instructions for calculations.
- Floating-point operations are used for accurate circle area calculation.

## 📂 Files

- `mips1-Final-team-project.asm`: Contains the full program code.

## ⚙️ Calculations

- **Fahrenheit** = (Celsius × 9 / 5) + 32  
- **Area of Circle** = π × radius²  
- **Perimeter of Square** = 4 × side

## ▶️ How to Run

Use the [MARS MIPS simulator](http://courses.missouristate.edu/kenvollmar/mars/) or SPIM to open and run the `.asm` file.

1. Open the file in the simulator.
2. Assemble and run.
3. Enter an integer when prompted.

## ✅ Example

If you enter `5`, the output will be:
- Temperature in Fahrenheit is: 41  
- Area of the circle is: 78.5  
- Perimeter of the square is: 20

## 📌 Notes

- The program uses basic integer and floating-point arithmetic.
- Constants and labels are defined in the `.data` section.

