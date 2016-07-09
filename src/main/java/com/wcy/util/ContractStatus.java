package com.wcy.util;

public enum  ContractStatus {
    INEFFICIENT(0), //未生效
    EFFICIENT(1),   //生效
    INVALID(2);    //作废

    private int value;

    ContractStatus(int value) {
        this.value = value;
    }

    public int getValue() {
        return value;
    }
}
