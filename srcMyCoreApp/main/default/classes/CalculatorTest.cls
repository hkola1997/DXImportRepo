@IsTest
public class CalculatorTest {

    @IsTest
    public static void testAdd() {
        // Test data anudeep
        Integer a = 5;
        Integer b = 3;

        // Expected result Hari
        Integer expectedResult = 8;

        // Call the method and get the result
        Integer result = Calculator.add(a, b);

        // Verify the result
        System.assertEquals(expectedResult, result, 'The addition result should be 8.');
    }

    @IsTest
    public static void testSubtract() {
        // Test data
        Integer a = 5;
        Integer b = 3;

        // Expected result
        Integer expectedResult = 2;

        // Call the method and get the result
        Integer result = Calculator.subtract(a, b);

        // Verify the result
        System.assertEquals(expectedResult, result, 'The subtraction result should be 2.');
    }
}
