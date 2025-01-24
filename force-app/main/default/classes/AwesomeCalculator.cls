public class AwesomeCalculator {
    // Method untuk penjumlahan
    public static Double add(Double x, Double y) {
        calculatorServices.CalculatorImplPort calculator = new calculatorServices.CalculatorImplPort();
        return calculator.doAdd(x, y);
    }

    // Method untuk pengurangan
    public static Double subtract(Double x, Double y) {
        calculatorServices.CalculatorImplPort calculator = new calculatorServices.CalculatorImplPort();
        return calculator.doSubtract(x, y);
    }

    // Method untuk perkalian
    public static Double multiply(Double x, Double y) {
        calculatorServices.CalculatorImplPort calculator = new calculatorServices.CalculatorImplPort();
        return calculator.doMultiply(x, y);
    }
}
