import java.util.*;

public class QuestionThree {
    public static void printAllOccurrences(int[][] matrix, int row, int col) {
        Set<String> set = new HashSet<String>();
        for (int i = 0; i < row; i++) {
            StringBuilder sb = new StringBuilder();
            for (int j = 0; j < col; j++) {
                sb.append(matrix[i][j]);
            }
            set.add(sb.toString());

        }
        for (String s : set) {
            System.out.println(s);
        }

    }

    public static void main(String[] args) {
        int row = 3;
        int col = 4;
        int[][] matrix = new int[row][col];
        matrix[0][0] = 1;
        matrix[0][1] = 1;
        matrix[0][2] = 0;
        matrix[0][3] = 1;
        matrix[1][0] = 1;
        matrix[1][1] = 1;
        matrix[1][2] = 0;
        matrix[1][3] = 1;
        matrix[2][0] = 1;
        matrix[2][1] = 1;
        matrix[2][2] = 0;
        matrix[2][3] = 1;
        printAllOccurrences(matrix, row, col);
    }

}