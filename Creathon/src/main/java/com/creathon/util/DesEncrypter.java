package com.creathon.util;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.UnsupportedEncodingException;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.KeySpec;
import java.util.Base64;
import java.util.Date;

import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;

public class DesEncrypter {

    private static Cipher ecipher;
    private static Cipher dcipher;
    private static String keyText = "VRHKG34YW4WANDJCHBFGNHH";
    private static byte[] salt = {
        (byte) 0xA9, (byte) 0x9B, (byte) 0xC8, (byte) 0x32,
        (byte) 0x56, (byte) 0x35, (byte) 0xE3, (byte) 0x03
    };
    private static int iterationCount = 3;

    private static void prepareKey() {
        try {

            KeySpec keySpec = new PBEKeySpec(keyText.toCharArray(), salt, iterationCount);
            SecretKey key = SecretKeyFactory.getInstance("PBEWithMD5AndDES").generateSecret(keySpec);

            ecipher = Cipher.getInstance(key.getAlgorithm());
            dcipher = Cipher.getInstance(key.getAlgorithm());

            AlgorithmParameterSpec paramSpec = new PBEParameterSpec(salt, iterationCount);

            ecipher.init(Cipher.ENCRYPT_MODE, key, paramSpec);
            dcipher.init(Cipher.DECRYPT_MODE, key, paramSpec);

        } catch (java.security.InvalidAlgorithmParameterException e) {
        } catch (java.security.spec.InvalidKeySpecException e) {
        } catch (javax.crypto.NoSuchPaddingException e) {
        } catch (java.security.NoSuchAlgorithmException e) {
        } catch (java.security.InvalidKeyException e) {
        }
    }

    public static String encrypt(String str) {
        prepareKey();
        try {

            byte[] utf8 = str.getBytes("UTF8");
            byte[] enc = ecipher.doFinal(utf8);
//            return new sun.misc.BASE64Encoder().encode(enc);
           // return org.apache.commons.codec.binary.Base64.encodeBase64URLSafeString(enc);
           
            return Base64.getEncoder().encodeToString((enc));

        } catch (javax.crypto.BadPaddingException e) {
        } catch (IllegalBlockSizeException e) {
        } catch (UnsupportedEncodingException e) {
        } catch (NullPointerException e) {
        }

        return null;
    }

    public static String decrypt(String str) {
        prepareKey();
        try {

//            byte[] dec = new sun.misc.BASE64Decoder().decodeBuffer(str);
        //    byte[] dec = org.apache.commons.codec.binary.Base64.decodeBase64(str);
            byte[] dec = Base64.getDecoder().decode(str);
            
          
            byte[] utf8 = dcipher.doFinal(dec);

            return new String(utf8, "UTF8");

        } catch (javax.crypto.BadPaddingException e) {
        } catch (IllegalBlockSizeException e) {
        } catch (UnsupportedEncodingException e) {
        } catch (java.io.IOException e) {
        } catch (NullPointerException e) {
        }

        return "Invalid String";
    }

    public static String encryptURI(String str) {
        prepareKey();
        try {
            byte[] utf8 = str.getBytes("UTF8");
            byte[] enc = ecipher.doFinal(utf8);
          //  return org.apache.commons.codec.binary.Base64.encodeBase64URLSafeString(enc);
            return Base64.getEncoder().encodeToString((enc));
        } catch (javax.crypto.BadPaddingException e) {
        } catch (IllegalBlockSizeException e) {
        } catch (UnsupportedEncodingException e) {
        } catch (NullPointerException e) {
        }

        return null;
    }

    public static String decryptURI(String str) {
        prepareKey();
        try {

            byte[] dec =Base64.getDecoder().decode(str);
            byte[] utf8 = dcipher.doFinal(dec);

            return new String(utf8, "UTF8");

        } catch (javax.crypto.BadPaddingException e) {
        } catch (IllegalBlockSizeException e) {
        } catch (UnsupportedEncodingException e) {
        } catch (java.io.IOException e) {
        } catch (NullPointerException e) {
        }

        return "Invalid String";
    }

   /* public static void main(String[] args) {
        String id = 394 + "==" + new Date().getTime() + "==" + 850;
        System.out.println("ee==" + encrypt(id));
        System.out.println("" + decrypt("ftgdqfPvOkw"));
        String s = "http://localhost:8080/OAP/admin/user_form.htm";
        int index = s.lastIndexOf('/');
        s = s.substring(0, index).toString();
        index = s.lastIndexOf('/');
        System.out.println(s.substring(0, index));
        System.out.println("" + decrypt("NjLiav5whPc"));
    }*/
}
