/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.objetos;

/**
 *
 * @author Aluno
 */
public class Calculador {
    private float valorA;
    private float valorB;
    
    /**
     * @return the valorA
     */
    public float getValorA() {
        return valorA;
    }

    /**
     * @param valorA the valorA to set
     */
    public void setValorA(float valorA) {
        this.valorA = valorA;
    }

    /**
     * @return the valorB
     */
    public float getValorB() {
        return valorB;
    }

    /**
     * @param valorB the valorB to set
     */
    public void setValorB(float valorB) {
        this.valorB = valorB;
    }
    
    public float somar() {
      float resultado = getValorA()+getValorB();
      return resultado;
    }
       
    public float subtrair() {
      float resultado = getValorA()-getValorB();
      return resultado;
    }
    
    public float multiplicar() {
      float resultado = getValorA()*getValorB();
      return resultado;
    }
    
    public float dividir() {
      float resultado = getValorA()/getValorB();
      return resultado;
    }

    
      
}
