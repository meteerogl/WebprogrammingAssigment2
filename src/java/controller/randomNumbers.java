/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.ArrayList;
import java.util.Random;

/**
 *
 * @author mete
 */
public class randomNumbers 
{
    public ArrayList<Integer> oluştur()
    {
        //5 tane random sayı oluşturup arrayliste ekliyorum ve bir adet arraylist fırlatıyorum
        Random rand = new Random();
        ArrayList<Integer> liste = new ArrayList<>();
        for(int i = 0;i<5;i++ )
        {
            int değer = rand.nextInt(100);
            liste.add(değer);
        }
        
        return liste;
    }
    public int random_seç()
    {
        //0 dan 4 e kadar random sayı oluşturuyorum listedeki elemanları random olarak seçmek için
        Random rand = new Random();
        int mete = rand.nextInt(5);
        return mete;
        
    }
    public String işlem_seç()
    {
        //işlemlerin de random bir şekilde atanması için
        Random mete = new Random();
        for(int i = 0;i<4;i++)
        {
            int değer = mete.nextInt(5);
            switch (değer) {
                case 0:
                    return "+";
                case 1:
                    return "-";
                case 2:
                    return "/";
                default:
                    return "*";
            }
        }
        
        return "+";
    }
    public int sonuc(int a, int b,String işlem)
    {
        //random şekilde atanan işlemlere göre sonuç fırlatmak için
        switch (işlem) {
            case "+":
                return a+b;
            case "-":
                return a-b;
            case "*":
                return a*b;
            default:
                return a/b;
        }
    }
    

    public String fonksiyon(int random_number)
    {
        //4 tane fonksiyonum var bunları random bir şekilde seçip -  yazdırmak için
        switch(random_number)
        {
            case 0:
                return "f()=n1*n2-n3+n4";
            case 1:
                return "f()=n1-n2*n3/n4";
            case 2:
                return "f()=n1*n2*n3*n4";
            case 3:
                return "f()=n1-n2-n3-n4";
            default:
                return "f()=n1+n2+n3+n4";
        }
        
    }
    
    public String according_to(int a,int b,int c,int d,int e, int random_number)
    {
        //random şekilde seçilen işlemleri değişkenlerine atanan sayılarla göstemek için
        switch(random_number)
        {
            case 0:
                return "f()="+a+"*"+b+"-"+c+"+"+d;
            case 1:
                return "f()="+a+"-"+b+"*"+c+"/"+d;
            case 2:
                return "f()="+a+"*"+b+"*"+c+"*"+d;
            case 3:
                return "f()="+a+"-"+b+"-"+c+"-"+b;
            default:
                return "f()="+a+"+"+b+"+"+c+"+"+b;
        }
        
    }
    public int fonksiyon_işlemleri(int a,int b,int c,int d,int e,int random)
    {
        //random olarak seçilen fonksiyonu ve fonksiyon değişkenlerini doldurduktan sonra, gerekli fonsiyon sonucunu üretmek için
       
        switch(random)
        {
            case 0:
                return a*b-c+b;
            case 1:
                return a-b*c/d;
            case 2:
                return a*b*c*d;
            case 3:
                return a-b-c-d;
            default:
                return a+b+c+d;
        }
               
    }
    //sayının mod(10) unu alıyorum
    public int mod_işlemi(int mete)
    {
        mete = mete%10;
        //sayı bazen 0'dan küçük çıkıyor onun önüne geçmek için
        if(mete<0)
        {
            mete = mete + 10;
        }
        return mete;
    }
    
    public String deneme()
    {
        return "hakkımda.html";
    }
    public String link_yon(int sayı, int sonuc)
    {
        if(sayı == sonuc)
        {
            return "anasayfa.html";
        }
        else
        {
            return "yanlis.jsp";
        }
    }
    
    //test
    public static void main(String args[])
    {
        randomNumbers r = new randomNumbers();
        ArrayList<Integer> a;
        a = r.oluştur();
        for(int i = 0;i<a.size();i++)
        {
            System.out.println(a.get(i));
        }
        
    }
    
    
}
