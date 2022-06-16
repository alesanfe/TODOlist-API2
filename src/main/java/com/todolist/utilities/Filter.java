package com.todolist.utilities;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Objects;

public class Filter {

    private Filter() {
    }

    public static boolean isGEL(Long value, String parameter) {
        String restriccion = String.valueOf(parameter.charAt(0));
        String aux = String.valueOf(parameter.charAt(1));
        String restriccion2 = aux.equals("<") || aux.equals("=") || aux.equals(">") ? aux : null;
        Long num;
        if (restriccion2 == null)
            num = Long.parseLong(parameter.substring(1));
        else {
            num = Long.parseLong(parameter.substring(2));
            restriccion += restriccion2;
        }
        return restriccion.contains("=") && Objects.equals(value, num) ||
                restriccion.contains("<") && value < num ||
                restriccion.contains(">") && value > num;
    }

    public static boolean isGEL(LocalDate value, String parameter) {
        String restriccion = String.valueOf(parameter.charAt(0));
        String aux = String.valueOf(parameter.charAt(1));
        String restriccion2 = aux.equals("<") || aux.equals("=") || aux.equals(">") ? aux : null;
        LocalDate date;
        if (restriccion2 == null)

            date = LocalDate.parse(parameter.substring(1), DateTimeFormatter.ofPattern("yyyy-MM-dd"));
        else {
            date = LocalDate.parse(parameter.substring(2), DateTimeFormatter.ofPattern("yyyy-MM-dd"));
            restriccion += restriccion2;
        }
        return restriccion.contains("=") && Objects.equals(value, date) ||
                restriccion.contains("<") && value.isBefore(date) ||
                restriccion.contains(">") && value.isAfter(date);
    }
}
