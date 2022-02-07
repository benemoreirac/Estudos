//Estudo sobre Matrizes

import java.security.SecureRandom;

public class Aula8{
    public static void main(String [] args){
        final int linhas =3;
        final int colunas = 5;

        int[][] numeros = new int[linhas][colunas];
        int[][] num ={{10,20,30,40,50},{1,2,3,4,5},{100,200,300,400,500}};
        for (int l=0; l<linhas;l++){
            for(int c=0; c<colunas; c++){
                numeros[l][c] = new SecureRandom().nextInt(100);
            }
        }

        for (int l=0; l<linhas;l++){
            for(int c=0; c<colunas; c++){
                System.out.printf("%2d |", numeros[l][c] );
            }
            System.out.printf("%n");
        }

        System.out.printf("%n");

        for(int[]m:numeros){
            for(int v:m){
                System.out.printf("%2d |", v);
            }
            System.out.printf("%n");
        }

        System.out.printf("%n");

        for(int[]m:num){
            for(int v:m){
                System.out.printf("%3d |", v);
            }
            System.out.printf("%n");
        }
    }
}