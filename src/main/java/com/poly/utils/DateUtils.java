package com.poly.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtils {
	private static final SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

    public static Date parse(String dateString) throws ParseException {
        return dateFormat.parse(dateString);
    }

    public static String format(Date date) {
        return dateFormat.format(date);
    }

    public static boolean isSameDay(Date date1, Date date2) {
        return dateFormat.format(date1).equals(dateFormat.format(date2));
    }
}
