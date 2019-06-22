package com.recreation.playground.common;

import lombok.Data;

@Data
public class AjaxResponse<T>{
private AjaxResponseType type;
private T data;
}
