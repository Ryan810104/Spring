package com.recreation.playground.common;

import java.util.List;

import lombok.Data;

@Data
public class GridResponse<T> {
private Integer page;
private Integer total;
private List<T> rows;
}
