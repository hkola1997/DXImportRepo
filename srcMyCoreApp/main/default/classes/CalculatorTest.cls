@IsTest
public class CalculatorTest {

    @IsTest
    public static void testAdd() {
        // Test data
        Integer a = 5;
        Integer b = 4;

        // Expected result
        Integer expectedResult = 9;

        // Call the method and get the result
        Integer result = Calculator.add(a, b);

        // Verify the result
        System.assertEquals(expectedResult, result, 'The addition result should be 8.');
    }

    @IsTest
    public static void testSubtract() {
        // Test data
        Integer a = 5;
        Integer b = 4;

        // Expected result
        Integer expectedResult = 1;

        // Call the method and get the result
        Integer result = Calculator.subtract(a, b);

        // Verify the result
        System.assertEquals(expectedResult, result, 'The subtraction result should be 2.');
    }
}
