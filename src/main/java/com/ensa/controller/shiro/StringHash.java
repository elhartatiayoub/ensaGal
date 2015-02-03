package com.ensa.controller.shiro;

import java.math.BigInteger;

public class StringHash {

    static final BigInteger PRIME_LIMIT = new BigInteger("14897");
    static final BigInteger MULTIPLIER = PRIME_LIMIT;

    static BigInteger pow(BigInteger a, long b) {
        if (b == 0) {
            return new BigInteger("1");
        } else if (b == 1) {
            return a;
        } else {
            BigInteger next = pow(a, b / 2);
            BigInteger residual = pow(a, b % 2);
            BigInteger ret = next.multiply(next);
            ret = ret.multiply(residual);
            return ret;
        }
    }

    public static String hash(String string) {
        BigInteger ret = new BigInteger("0");
        for (Integer i = 0; i < string.length(); i++) {
            ret = ret.add(pow(MULTIPLIER, i)
                    .multiply(new BigInteger(String.valueOf(string.charAt(string.length() - i - 1) - '\0'))));
        }
        return ret.toString(16);
    }

}
